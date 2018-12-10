package de.rhocas.a

import org.eclipse.xtend.lib.macro.AbstractClassProcessor
import org.eclipse.xtend.lib.macro.TransformationContext
import org.eclipse.xtend.lib.macro.declaration.MutableClassDeclaration

class ActiveAnnotation2Processor extends AbstractClassProcessor {

	extension NameHelper = new NameHelper()

	override doTransform(MutableClassDeclaration annotatedClass, extension TransformationContext context) {
		val generatedAnnotation = getFullQualifiedAnnotationName(annotatedClass, context).findTypeGlobally

		annotatedClass.addAnnotation(generatedAnnotation.newAnnotationReference) 
	}
	
}
