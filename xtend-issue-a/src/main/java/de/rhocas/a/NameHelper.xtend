package de.rhocas.a

import org.eclipse.xtend.lib.macro.declaration.ClassDeclaration
import org.eclipse.xtend.lib.macro.file.FileSystemSupport

package class NameHelper {
	
	def String getFullQualifiedAnnotationName(ClassDeclaration annotatedClass, extension FileSystemSupport fileSystemSupport) {
		val path = annotatedClass.compilationUnit.filePath.parent.append('/File.txt')
		path.contents.toString
	}
	
}