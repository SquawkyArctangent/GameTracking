--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- qc:  models/courier/flopjaw/flopjaw_ground.qc
-- mdl: courier/flopjaw/flopjaw.mdl
--
--=============================================================================

model:CreateSequence(
	{
		name = "@turns_lookFrame_0",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@beetlejaws_ground_turns", frame = 0, dst = 0 },
			{ cmd = "fetchframe", sequence = "@beetlejaws_ground_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@turns_lookFrame_1",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@beetlejaws_ground_turns", frame = 1, dst = 0 },
			{ cmd = "fetchframe", sequence = "@beetlejaws_ground_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@turns_lookFrame_2",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@beetlejaws_ground_turns", frame = 2, dst = 0 },
			{ cmd = "fetchframe", sequence = "@beetlejaws_ground_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "turns",
		delta = true,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "@turns_lookFrame_0", "@turns_lookFrame_1", "@turns_lookFrame_2" }
		}
	}
)



model:CreateSequence(
	{
		name = "run",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@beetlejaws_ground_run" }
		},
		addlayer = { "turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 3 }
		}
	}
)
model:CreateSequence(
	{
		name = "run_b",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@beetlejaws_ground_run_b" }
		},
		addlayer = { "turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)


