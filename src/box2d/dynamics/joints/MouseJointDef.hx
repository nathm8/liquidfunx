/*******************************************************************************
 * Copyright (c) 2013, Daniel Murphy
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 * 	* Redistributions of source code must retain the above copyright notice,
 * 	  this list of conditions and the following disclaimer.
 * 	* Redistributions in binary form must reproduce the above copyright notice,
 * 	  this list of conditions and the following disclaimer in the documentation
 * 	  and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 ******************************************************************************/
package box2d.dynamics.joints;

import box2d.common.Vec2;

/**
 * Mouse joint definition. This requires a world target point, tuning parameters, and the time step.
 * 
 * @author Daniel
 */
 class MouseJointDef extends JointDef {
  /**
   * The initial world target point. This is assumed to coincide with the body anchor initially.
   */
  public var target : Vec2 = new Vec2();

  /**
   * The maximum constraint force that can be exerted to move the candidate body. Usually you will
   * express as some multiple of the weight (multiplier * mass * gravity).
   */
  public var maxForce : Float = 0;

  /**
   * The response speed.
   */
  public var frequencyHz : Float = 0;

  /**
   * The damping ratio. 0 = no damping, 1 = critical damping.
   */
  public var dampingRatio : Float = 0;

  public function new() {
    super(JointType.MOUSE);
    target.set(0, 0);
    maxForce = 0;
    frequencyHz = 5;
    dampingRatio = .7;
  }
}
