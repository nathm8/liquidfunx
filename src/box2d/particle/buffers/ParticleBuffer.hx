package box2d.particle.buffers;

import haxe.ds.Vector;

class ParticleBuffer {
    public var data : Vector<Dynamic>;
    public var userSuppliedCapacity : Int = 0;

    public function new() {
    }
  }