
// Head Localization parameters.
// 03-Mar-2023 11:11

CustomDs
{
	FixSensors:	False
}

// PROCESSING PARAMETERS
processing
{
	// balance: order, adapted
	// (adapted=0 -> not adapted)
	// (adapted=1 -> adapted)
	balance:	3,0
}

// Data selector parameters.
DsSelector
{
	RejectBadTrials:	TRUE
	ForceEvenNumTargets:	FALSE
	MaximumOverlap:	0
	StartTime:	100
	EndTime:	160
	EventRange:	ALL
	WholeTrial:	FALSE
	CondSearchStart:	0
	CondSearchEnd:	0
	TargetTrialOffset:	0
}
