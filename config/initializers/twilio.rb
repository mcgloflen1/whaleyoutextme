path = File.join(Rails.root, "config/application.yml")
TWILIO_CONFIG = YAML.load(File.read(path))[Rails.env] || {'account_sid' => '', 'from' => '', 'auth_token' => ''}