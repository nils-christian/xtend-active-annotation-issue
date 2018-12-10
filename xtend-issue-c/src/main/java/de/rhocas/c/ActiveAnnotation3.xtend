package de.rhocas.c

import java.lang.annotation.Target
import org.eclipse.xtend.lib.macro.Active

@Target(TYPE)
@Active(ActiveAnnotation3Processor)
annotation ActiveAnnotation3 {
	
	Class<?> value
	
}