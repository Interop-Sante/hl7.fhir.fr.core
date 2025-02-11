// TODO - extension utilisée nulle part, à étudier 

Extension: FRCoreSlotDateExtension
Id: fr-core-slot-date
Title: "FR Core Slot Date Extension"
Description: "Cette extension ajoute un élément SlotDate à la ressource Slot précisant la date à laquelle ce créneau a été crée/modifié/annulé.\n\rThis extension adds a slotDate element to the Slot resource specifying the date that the Slot has been created/updated/canceled."
* ^context.type = #element
* ^context.expression = "Slot"
* value[x] only dateTime