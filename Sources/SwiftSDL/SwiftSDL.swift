import CSDL2



public
struct
SDLInitFlags : OptionSet
{
	public let		rawValue		:	UInt32
	
	public static let timer					=	SDLInitFlags(rawValue: SDL_INIT_TIMER)
	public static let video					=	SDLInitFlags(rawValue: 0x00000020)
	public static let events				=	SDLInitFlags(rawValue: 0x00004000)
	
	public
	init(rawValue inVal: UInt32)
	{
		self.rawValue = inVal
	}
}

public
func
SDLInit(flags inFlags: SDLInitFlags)
	-> Int
{
	let r = SDL_Init(inFlags.rawValue)
	return Int(r)
}

public
func
SDLQuit()
{
	SDL_Quit()
}
