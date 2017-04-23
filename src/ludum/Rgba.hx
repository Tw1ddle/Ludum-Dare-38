package ludum;

/**
 * Represents a color in RGBA8888 format with underlying type Int.
 * @author Sam Twidale (http://samcodes.co.uk/)
 */
abstract Rgba(#if flash Int #else UInt #end) from Int to Int from UInt to UInt {
	/**
	 * Red color component.
	 */
	public var r(get, never):Int;
	/**
	 * Green color component.
	 */
	public var g(get, never):Int;
	/**
	 * Blue color component.
	 */
	public var b(get, never):Int;
	/**
	 * Alpha color component.
	 */
	public var a(get, never):Int;
	
	/**
	 * Creates a new color.
	 * @param	rgba	The color value. It will be interpreted in RGBA8888 format.
	 */
	public inline function new(rgba:Int):Void {
		this = rgba;
	}
	
	private inline static function clamp(value:Int, lower:Int, upper:Int) {
		return value < lower ? lower : value > upper ? upper : value;
	}
	
	/**
	 * Creates a new color.
	 * @param	red	The red component (0-255).
	 * @param	green	The green component (0-255).
	 * @param	blue	The blue component (0-255).
	 * @param	alpha	The alpha component (0-255).
	 * @return	The new color value in RGBA8888 format.
	 */
	public static inline function create(red:Int, green:Int, blue:Int, alpha:Int):Rgba {
		return (clamp(red, 0, 255) << 24) + (clamp(green, 0, 255) << 16) + (clamp(blue, 0, 255) << 8) + (clamp(alpha, 0, 255));
	}
	
	@:op(A + B)
	public static inline function add(lhs:Rgba, rhs:Rgba):Rgba {
		return Rgba.create(lhs.r + rhs.r, lhs.g + rhs.g, lhs.b + rhs.b, lhs.a + rhs.a);
	}
	
	@:op(A - B)
	public static inline function subtract(lhs:Rgba, rhs:Rgba):Rgba {
		return Rgba.create(lhs.r - rhs.r, lhs.g - rhs.g, lhs.b - rhs.b, lhs.a - rhs.a);
	}
	
	@:from public static inline function fromInt(rgba:Int):Rgba {
		return rgba;
	}
	
	private inline function get_r():Int {
		return (this >> 24) & 0xFF;
	}
	private inline function get_g():Int {
		return (this >> 16) & 0xFF;
	}
	private inline function get_b():Int {
		return (this >> 8) & 0xFF;
	}
	private inline function get_a():Int {
		return this & 0xFF;
	}
}