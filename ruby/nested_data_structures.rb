body ={
	"head" => [
		'eyes',
		'ears',
		'mouth'
		],
	"torso" => {
		"inside" => [
			'heart',
			'lungs',
			'stomach',
			'intestine'
		],
		"outside" => [
			'chest',
			'belly button',
			'back'
		]

	}
}
puts "\nThis is the whole hash: \n"
p body
puts "\n\n"

p body["head"][0]
p body["head"][1]
p body["head"][2]
p body["torso"]["inside"][0]
p body["torso"]["inside"][1]
p body["torso"]["inside"][2]
p body["torso"]["inside"][3]
p body["torso"]["outside"][2]