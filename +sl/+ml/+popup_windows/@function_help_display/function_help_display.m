classdef function_help_display
    %
    %   Class:
    %   sl.ml.popup_windows.function_help_display
    %
    %   The goal of this class will be to show help for the command window
    %   or editor, depending on where the cursor is located.
    %
    %   This should be implemented as a figure ...
    %
    %   TODO:
    %   -----
    %   1) Launch a figure that periodically runs a function (to update
    %   the display)
    %       - can we tell when a program is running - and stop execution
    %       -
    %
    %   1) Create figure with display text. 
    %   2) On close, destroy the object.
    %
    %   See Also:
    %   sl.help.current_line_info
    
    properties
        fig %figure handle
        t %The timer
        cmd_window
    end
    
    methods
        function obj = function_help_display()
            
            %
            %
            %
            
            %I think I'll load this from a GUI
            %=> change text size buttons
            %=> 
            
            %TODO: Create a figure 
            f = figure;
            
            set(f,'HandleVisibility','off')
            text_h = uicontrol(f,'Style','text','Units','normalized','Position',...
                [0.05 0.05 0.90 0.90],'String','testing',...
                'BackgroundColor',[1 1 1],'FontSize',12,'HorizontalAlignment','left');
            
            obj.fig = f;
            
            %TODO: On close figure, stop timer and delete obj
            
            obj.cmd_window = sl.ml.cmd_window.getInstance();
            
            %Create and start the timer
            fh = @(~,~)sl.ml.popup_windows.function_help_display.cb__updateHelpText(obj);
            obj.t = timer('TimerFcn',fh,'ExecutionMode','fixedSpacing',...
                'Period',5);
            start(obj.t)
        end
    end
    
    methods (Static)
        %         uicontrol('Style','edit','String','hello');
        
        function launch()
            %
            %   sl.ml.popup_windows.function_help_display.launch
            %
            
            persistent local_obj
            if isempty(local_obj)
                local_obj = sl.ml.popup_windows.function_help_display;
            end
            % % %            output = local_obj;
            % % %            obj =
            % % %            t = timer;
        end
        function cb__updateHelpText(obj)
            %
            %
            
            if ~isvalid(obj.fig)
               %Figure closed, delete obj
               %stop(obj.t)
               delete(obj.t)
               delete(obj)
               return
            end
            
            %1) What's active, the command window or the editor?
            %   - if neither is active, then what? - go to editor?
            %   - provide an option for the default
            %2) I
            
            cw = obj.cmd_window;
            last_line_text = cw.getLineText(cw.line_count);
            
            cli = sl.help.current_line_info(last_line_text);
            
            fprintf(2,'Last line\n')
            disp(last_line_text)
            
        end
    end
    
end

