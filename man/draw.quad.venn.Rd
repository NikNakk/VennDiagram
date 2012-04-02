\name{draw.quad.venn}
\alias{draw.quad.venn}
\title{Draw a Venn Diagram with Four Sets}
\description{Creates a Venn diagram with four sets.}
\usage{
draw.quad.venn(area1, area2, area3, area4, n12, n13, n14, n23, n24, n34, n123, n124, n134, n234, n1234, category = rep("", 4), lwd = rep(2, 4), 
lty = rep("solid", 4), col = rep("black", 4), fill = NULL, alpha = rep(0.5, 4), label.col = rep("black", 15), cex = rep(1, 15), fontface = rep("plain", 15), 
fontfamily = rep("serif", 15), cat.pos = c(-15, 15, 0, 0), cat.dist = c(0.22, 0.22, 0.11, 0.11), cat.col = rep("black", 4), cat.cex = rep(1, 4), 
cat.fontface = rep("plain", 4), cat.fontfamily = rep("serif", 4), cat.just = rep(list(c(0.5, 0.5)), 4), cat.default.pos = "outer", cat.prompts = FALSE, 
rotation.degree = 0, rotation.centre = c(0.5, 0.5), ind = TRUE, ...)
}
\arguments{
  \item{area1}{The size of the first set}
  \item{area2}{The size of the second set}
  \item{area3}{The size of the third set}
  \item{area4}{The size of the four set}
  \item{n12}{The size of the intersection between the first and the second set}
  \item{n13}{The size of the intersection between the first and the third set}
  \item{n14}{The size of the intersection between the first and the fourth set}
  \item{n23}{The size of the intersection between the second and the third set}
  \item{n24}{The size of the intersection between the second and the fourth set}
  \item{n34}{The size of the intersection between the third and the fourth set}
  \item{n123}{The size of the intersection between the first, second and third sets}
  \item{n124}{The size of the intersection between the first, second and fourth sets}
  \item{n134}{The size of the intersection between the first, third and fourth sets}
  \item{n234}{The size of the intersection between the second, third and fourth sets}
  \item{n1234}{The size of the intersection between all four sets}
  \item{category}{A vector (length 4) of strings giving the category names of the sets}
  \item{lwd}{A vector (length 4) of numbers giving the \code{lwd} of the circles' circumferences}
  \item{lty}{A vector (length 4) giving the \code{lty} of the circles' circumferences}
  \item{col}{A vector (length 4) giving the colours of the circles' circumferences}
  \item{fill}{A vector (length 4) giving the colours of the circles' areas}
  \item{alpha}{A vector (length 4) giving the alpha transparency of the circles' areas}
  \item{label.col}{A vector (length 15) giving the colours of the areas' labels}
  \item{cex}{A vector (length 15) giving the \code{cex} of the areas' labels}
  \item{fontface}{A vector (length 15) giving the \code{fontface} of the areas' labels}
  \item{fontfamily}{A vector (length 15) givibg the \code{fontfamily} of the areas' labels}
  \item{cat.pos}{A vector (length 4) giving the positions (in degrees) of the category names along the circles, with 0 (default) at the 12 o'clock location}
  \item{cat.dist}{A vector (length 4) giving the distances (in npc units) of the category names from the edges of the circles (can be negative)}
  \item{cat.cex}{A vector (length 4) giving the \code{cex} of the category names}
  \item{cat.col}{A vector (length 4) giving the colours of the category names}
  \item{cat.fontface}{A vector (length 4) giving the \code{fontface} of the category names}
  \item{cat.fontfamily}{A vector (length 4) giving the \code{fontfamily} of the category names}
  \item{cat.just}{List of 4 vectors of length 2 indicating horizontal and vertical justification of each category name}
  \item{cat.default.pos}{Either 'outer' or 'text' to specify the default location of category names (cat.pos and cat.dist are handled differently)}
  \item{cat.prompts}{Boolean indicating whether to display help text on category name positioning or not)}
  \item{rotation.degree}{Number of degrees to rotate the entire diagram}
  \item{rotation.centre}{A vector (length 2) indicating (x,y) of the rotation centre}
  \item{ind}{Boolean indicating whether the function is to automatically draw the diagram before returning the gList object or not}
  \item{...}{Additional arguments to be passed to or from other methods, including \code{margin}, which indicates amount of whitespace around the final diagram in npc units}
  }
\details{
The function defaults to placing the ellipses so that area1 corresponds to lower left, area2 corresponds to lower right, area3 corresponds to middle left and area4 corresponds to middle right.
}
\value{
Returns an object of class gList containing the grid objects that make up the diagram.  Also displays the diagram in a graphical device unless specified with ind = FALSE.
Grid::grid.draw can be used to draw the gList object in a graphical device.
}
\author{Hanbo Chen}
\examples{
# A simple four-set diagram
venn.plot <- draw.quad.venn(315, 495, 330, 370, 145, 85, 105, 130, 95, 75, 50, 45, 30, 35, 5, c("First", "Second", "Third", "Fourth"));

# A more complicated diagram
venn.plot <- draw.quad.venn(
	area1 = 315, 
	area2 = 495, 
	area3 = 330,
	area4 = 370,
	n12 = 145,
	n13 = 85,
	n14 = 105,
	n23 = 130,
	n24 = 95,
	n34 = 75,
	n123 = 50,
	n124 = 45,
	n134 = 30,
	n234 = 35,
	n1234 = 5,
	category = c("First", "Second", "Third", "Fourth"),
	fill = c("orange", "red", "green", "blue"),
	lty = "dashed",
	cex = 2,
	cat.cex = 2,
	cat.col = c("orange", "red", "green", "blue")
	);

# Writing to file
tiff(filename = "Single-set Venn diagram.tiff", compression = "lzw");
	
venn.plot <- draw.quad.venn(315, 495, 330, 370, 145, 85, 105, 130, 95, 75, 50, 45, 30, 35, 5, c("First", "Second", "Third", "Fourth"));

grid.draw(venn.plot);

dev.off();
}
\keyword{hplot}