function main()
    % Main function
    %
    % to see log file
    % >> type('log.txt');
    %
    % Notations
    % ---------
    % - trn  : train
    % - val  : validation
    % - tst  : test
    % - stm  : stimulus kernel
    % - psk  : post spike kernel
    % - off  : offset kernel
    % - idx  : indexes
    % - resp : responses
    % - stim : stimuli
    % - prb  : probe
    % - fr   : firing rate
    % - fr_ss: self sufficient firing rate
    % - sig  : signal
    % - ctl  : contrl
    %
    % Parameters
    % ----------
    % - session: scalar
    %   Session number with format: yymmdd
    % - channel: scalar
    %   Channel number
    % - unit: scalar
    %   Unit number

    % close all figures and clear command window
    close('all');
    clc();
    
    % add `lib`, and all its subfolders to the path
    addpath(genpath('lib'));

    % copy command widnow to `log.txt` file
    diary('log.txt');

    % display current date/time
    disp(datetime('now'));

    % start main timer
    main_timer = tic();
    
    ids = get_ids();
    num_neurons = numel(ids);

    for i = 1:num_neurons % todo: parfor
        try
            id = ids{i};

            fprintf('%d - %s\n', i, id);

            [session, channel, unit] = get_id_parts(id);

            % S-Model
            smodel(session, channel, unit);

            % Plot some results
            plot_results(session, channel, unit)
            
            close('all');
        catch ME
            warning(ME.message);
            file = fopen('error.txt', 'a');
            fprintf(file, '%s\n', ME.message);
            fclose(file);
        end
    end

    % Performance on all neurons
    plot_s_dll();

    fprintf('\n\n');
    toc(main_timer);
    diary('off');
end
