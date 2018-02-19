Owner.destroy_all

@owner_1 = Owner.create(name: "Bob Cobb")
@owner_2 = Owner.create(name: "Jim Jupe")
@owner_3 = Owner.create(name: "Hal Hope")

Pet.create(name: "Fido", owner: @owner_1)
Pet.create(name: "Spot", owner: @owner_2)
Pet.create(name: "Felix", owner: @owner_3)
Pet.create(name: "Harry the Cat", owner: @owner_1)
Pet.create(name: "Buddy", owner: @owner_2)
Pet.create(name: "Snoopy", owner: @owner_3)
Pet.create(name: "Garfield", owner: @owner_1)
Pet.create(name: "Tom the Cat", owner: @owner_2)
Pet.create(name: "Eddie the Dog", owner: @owner_3)
Pet.create(name: "Alf", owner: @owner_1)