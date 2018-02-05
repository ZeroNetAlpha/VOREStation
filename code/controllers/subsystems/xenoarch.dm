//
// Mapping subsystem handles initialization of random map elements at server start
// On VOREStation that means loading our random roundstart engine!
//
SUBSYSTEM_DEF(xenoarch)
	name = "Mapping"
	init_order = INIT_ORDER_MAPPING
	flags = SS_NO_FIRE
	var/list/artifact_spawning_turfs = list()
	var/list/digsite_spawning_turfs = list()

/datum/controller/subsystem/xenoarch/Initialize(timeofday)
	SetupXenoarch()
	. = ..()

/datum/controller/subsystem/xenoarch/Recover()
	flags |= SS_NO_INIT // Make extra sure we don't initialize twice.
