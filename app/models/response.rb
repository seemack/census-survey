class Response < ActiveRecord::Base
	SITES = [
		'Baylor Scott & White',
		'Catholic Health Initiatives',
		'Essentia',
		'Fallon/Reliant/UMass',
		'Geisinger',
		'Group Health',
		'Harvard Pilgrim',
		'HealthPartners',
		'Henry Ford',
		'Kaiser Foundation Research',
		'KP Colorado',
		'KP Georgia',
		'KP Hawaii',
		'KP Mid Atlantic',
		'KP Northern Cal',
		'KP Northwest',
		'KP Southern Cal',
		'Maccabi',
		'Marshfield',
		'Medica',
		'Palo Alto',
		'Other'
	]
	ROLES = [
		'Site Data Manager',
		'User',
		'Investigator',
		'Other'
	]
	GEO = ['Yes, we do it in-house', 'Yes, but another unit does it', 'No']
	BURDEN = %w(Large Modest Small None)
	GEOFREQ = ['More often than annually', 'Annually', 'Less often than annually']
	LONG = ['Very long time', 'Moderate amount of time', 'Not too long']
	ONEFIVE = (1..5).to_a
	UNITFREQ = ['Most often', 'Sometimes', 'Rarely', 'Never']
end
