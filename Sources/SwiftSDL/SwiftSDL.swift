import CSDL2



public
struct
SDLInitFlags : OptionSet
{
	public let		rawValue		:	UInt32
	
	public static let timer					=	SDLInitFlags(rawValue: 1 << 0)
	public static let audio					=	SDLInitFlags(rawValue: 1 << 4)
	public static let video					=	SDLInitFlags(rawValue: 1 << 5)
	public static let joystick				=	SDLInitFlags(rawValue: 1 << 9)
	public static let haptic				=	SDLInitFlags(rawValue: 1 << 12)
	public static let gameController		=	SDLInitFlags(rawValue: 1 << 14)
	public static let events				=	SDLInitFlags(rawValue: 1 << 14)
	public static let sensor				=	SDLInitFlags(rawValue: 1 << 15)
	public static let everything			=	SDLInitFlags([.timer, .audio, .video, .events, .joystick, .haptic, .gameController, .sensor])
	
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

func
SDLDelay(ms inMilliseconds: Int)
{
	SDL_Delay(UInt32(inMilliseconds))
}
