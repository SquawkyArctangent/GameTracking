--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- mdl: models\heroes\lone_druid\true_form.mdl
--
--=============================================================================

model:CreateWeightlist(
	"upperbody_rabid",
	{
		{ "Spine_0", 1 },
		{ "Root_0", 0 },
		{ "thigh_R", 0 },
		{ "Bum6_0", 0 },
		{ "thigh_L", 0 }
	}
)



-- AsLookLayer
model:CreateSequence(
	{
		name = "@tf_turns_lookFrame_0",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@tf_turns", frame = 0, dst = 0 },
			{ cmd = "fetchframe", sequence = "@tf_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@tf_turns_lookFrame_1",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@tf_turns", frame = 1, dst = 0 },
			{ cmd = "fetchframe", sequence = "@tf_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@tf_turns_lookFrame_2",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@tf_turns", frame = 2, dst = 0 },
			{ cmd = "fetchframe", sequence = "@tf_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "tf_turns",
		delta = true,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "@tf_turns_lookFrame_0", "@tf_turns_lookFrame_1", "@tf_turns_lookFrame_2" }
		}
	}
)

-- AsTurningRun

model:CreateSequence(
	{
		name = "tf_runb",
		sequences = {
			{ "@tf_runb" }
		},
		addlayer = {
			"tf_turns"
		},
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)


model:CreateSequence(
	{
		name = "tf_rabid",
		sequences = {
			{ "@tf_rabid" }
		},
		weightlist = "upperbody_rabid",
		activities = {
			{ name = "ACT_DOTA_OVERRIDE_ABILITY_2", weight = 1 }
		}
	}
)


-- AsTurningRun

model:CreateSequence(
	{
		name = "tf_runb_injured",
		sequences = {
			{ "@tf_runb_injured" }
		},
		addlayer = {
			"tf_turns"
		},
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "injured", weight = 1 }
		}
	}
)


-- AsTurningRun

model:CreateSequence(
	{
		name = "tf_run_haste",
		sequences = {
			{ "@tf_run_haste" }
		},
		addlayer = {
			"tf_turns"
		},
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "haste", weight = 1 }
		}
	}
)
