path = File.join(Rails.root, "config/twilio.yml")
TWILIO_CONFIG = YAML.load(File.read(path))[Rails.env] || {'sid' => 'AC68e326034c32dc4e6c23538ebd7f15a8', 'from' => '+14088728657', 'token' => '9b2ff5b3611e55d6a17bec37f29e0fbc'}
