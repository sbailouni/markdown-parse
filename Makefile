MarkdownParseTest.class: MarkdownParseTest.java
	javac -cp .:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar MarkdownParseTest.java

MarkdownParse.class: MarkdownParse.java
	javac MarkdownParse.java

test: MarkdownParseTest.class MarkdownParse.class
	java -cp .:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore MarkdownParseTest
	java MarkdownParse test-file.md
