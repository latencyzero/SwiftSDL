import CSDL2





public
struct
SDLCreateWindowFlags : OptionSet
{
	public let	rawValue			:	UInt32
	
	public static let	fullscreen						=	SDLCreateWindowFlags(rawValue: SDL_WINDOW_FULLSCREEN.rawValue)
	public static let	openGL							=	SDLCreateWindowFlags(rawValue: SDL_WINDOW_OPENGL.rawValue)
	public static let	shown							=	SDLCreateWindowFlags(rawValue: SDL_WINDOW_SHOWN.rawValue)
	public static let	hidden							=	SDLCreateWindowFlags(rawValue: SDL_WINDOW_HIDDEN.rawValue)
	public static let	borderless						=	SDLCreateWindowFlags(rawValue: SDL_WINDOW_BORDERLESS.rawValue)
	public static let	resizable						=	SDLCreateWindowFlags(rawValue: SDL_WINDOW_RESIZABLE.rawValue)
	
	public
	init(rawValue inValue: UInt32)
	{
		self.rawValue = inValue
	}
}

public
class
SDLWindow
{
	public
	init(title inTitle: String, width inWidth: Int, height inHeight: Int)
	{
		self.window = SDL_CreateWindow(inTitle, 0x1FFF0000, 0x1FFF0000, Int32(inWidth), Int32(inHeight), 0)
		print("SDL window: \(self.window)")
	}
	
	
	let			window				:	UnsafeMutablePointer<SDL_Window>
}
