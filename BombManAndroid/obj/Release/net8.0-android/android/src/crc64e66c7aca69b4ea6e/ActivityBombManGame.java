package crc64e66c7aca69b4ea6e;


public class ActivityBombManGame
	extends crc64493ac3851fab1842.AndroidGameActivity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"";
		mono.android.Runtime.register ("BombManAndroid.ActivityBombManGame, BombManAndroid", ActivityBombManGame.class, __md_methods);
	}


	public ActivityBombManGame ()
	{
		super ();
		if (getClass () == ActivityBombManGame.class) {
			mono.android.TypeManager.Activate ("BombManAndroid.ActivityBombManGame, BombManAndroid", "", this, new java.lang.Object[] {  });
		}
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
