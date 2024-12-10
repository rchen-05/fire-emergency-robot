
"use strict";

let Emergency = require('./Emergency.js');
let YOLODetection = require('./YOLODetection.js');
let PatrolActionResult = require('./PatrolActionResult.js');
let PatrolResult = require('./PatrolResult.js');
let PatrolActionFeedback = require('./PatrolActionFeedback.js');
let PatrolActionGoal = require('./PatrolActionGoal.js');
let PatrolGoal = require('./PatrolGoal.js');
let PatrolAction = require('./PatrolAction.js');
let PatrolFeedback = require('./PatrolFeedback.js');

module.exports = {
  Emergency: Emergency,
  YOLODetection: YOLODetection,
  PatrolActionResult: PatrolActionResult,
  PatrolResult: PatrolResult,
  PatrolActionFeedback: PatrolActionFeedback,
  PatrolActionGoal: PatrolActionGoal,
  PatrolGoal: PatrolGoal,
  PatrolAction: PatrolAction,
  PatrolFeedback: PatrolFeedback,
};
