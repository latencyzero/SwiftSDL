import CSDL2



public
struct
SDLInitFlags : OptionSet
{
	public let		rawValue		:	Int
	
	public static let timer					=	SDLInitFlags(rawValue: 0x00000001)
	public static let video					=	SDLInitFlags(rawValue: 0x00000020)
	public static let events				=	SDLInitFlags(rawValue: 0x00004000)
	
	public
	init(rawValue inVal: Int)
	{
		self.rawValue = inVal
	}
}

public
func
SDLInit(flags inFlags: SDLInitFlags)
{
}

public
func
SDLQuit()
{
	SDL_Quit()
}
