// To fix LPC devices

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_LPC", 0)
{
#endif
    External(_SB.PCI0.LPCB, DeviceObj)
    Scope(_SB.PCI0.LPCB)
    {
        OperationRegion(RMP0, PCI_Config, 2, 2)
		Field(RMP0, AnyAcc, NoLock, Preserve)
		{
			LDID,16
		}

		Name(LPDL, Package()
		{
             // and 300-series...
			0xa30d, 0,
			Package()
			{
				"device-id", Buffer() { 0xc3, 0x9c, 0, 0 },
				"compatible", Buffer() { "pci8086,9cc3" },
			},

		})

		Method(_DSM, 4)
		{
			If (!Arg2) { Return (Buffer() { 0x03 } ) }

			// search for matching device-id in device-id list, LPDL
			Local0 = Match(LPDL, MEQ, ^LDID, MTR, 0, 0)
			If (Ones != Local0)
			{
				// start search for zero-terminator (prefix to injection package)
				Local0 = Match(LPDL, MEQ, 0, MTR, 0, Local0+1)
				Return (DerefOf(LPDL[Local0+1]))
			}

			// if no match, assume it is supported natively... no inject
			Return (Package() { })
		}
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
