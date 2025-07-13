% Temperature-based email alert to remind user to drink water if temp is high

% Your ThingSpeak channel info
channelID =3006XXX; % 🔁 Replace with your actual channel ID
readAPIKey = 'C8RJ5PSNMHIXXXXX'; % 🔁 Replace with your actual Read API Key

% ThingSpeak Alert API
alertApiKey = 'TAKJWFafxIEUEIXXXXX';  % 🔁 Replace with your Alert API Key
alertUrl = "https://api.thingspeak.com/alerts/send";
options = weboptions("HeaderFields", ["ThingSpeak-Alerts-API-Key", alertApiKey]);

% Alert subject
alertSubject = sprintf("⚠ Hydration Reminder Based on Temperature");

% Read the latest temperature value from the channel (Field 1)
temperature = thingSpeakRead(channelID, 'Fields', 1, 'NumPoints', 1, 'ReadKey', readAPIKey);

% Check data validity
if isempty(temperature)
    alertBody = 'No temperature data found. Check sensor/channel.';
else
    % Threshold logic: if temp >= 32°C, remind to drink water
    if temperature >= 32
        alertBody = sprintf("🌡 It's %.1f°C now. Drink some water to stay hydrated!", temperature);
    else
        alertBody = sprintf("✅ Temperature is %.1f°C. No alert needed now.", temperature);
    end
end

% Try sending alert
try
    webwrite(alertUrl, "body", alertBody, "subject", alertSubject, options);
catch err
    fprintf("Failed to send alert: %s\n", err.message);
end