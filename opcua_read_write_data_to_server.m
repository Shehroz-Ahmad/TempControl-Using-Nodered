function y = opcua_read_write_data_to_server(u)

persistent uaClient heater_1 input_1 kp ki CO1 CE1

if isempty(uaClient)
    uaClient = opcua('localhost', 4840);
    setSecurityModel(uaClient, 'None');
    connect(uaClient);
    heater_1 = findNodeByName(uaClient.Namespace, 'Output: actualTemperature_1');
    input_1 = findNodeByName(uaClient.Namespace, 'Input: Temperature_1');
    kp = findNodeByName(uaClient.Namespace, 'Proportional: Kp');
    ki = findNodeByName(uaClient.Namespace, 'Integral: Ki');
    CO1 = findNodeByName(uaClient.Namespace, 'ManipulatedVariable_1');
    CE1 = findNodeByName(uaClient.Namespace, 'ControllerError_1');
    y = [30; 1.6; 0.0088];
else
    % Ensure that u has the expected size and indices are within bounds
    if numel(u) >= 5
        writeValue(CE1, u(0));
        writeValue(CO1, u(1));
        writeValue(heater_1, u(2));
        writeValue(kp, u(3));
        writeValue(ki, u(4));
    else
        % Handle the case where u does not have enough elements
        disp('Error: Insufficient elements in the input vector u.');
    end

    % Reading values from the server
    try
        [val1, ~, ~, ~] = readValue(input_1); % Assuming readValue returns multiple outputs
        [val2, ~, ~, ~] = readValue(kp);
        [val3, ~, ~, ~] = readValue(ki);
        y = [val1; val2; val3];
    catch err
        % Display additional information about the error
        disp('Error during reading values:');
        disp(err.message);
        disp(err.stack);
        y = zeros(3, 1); % Return a placeholder value
    end
end

end
