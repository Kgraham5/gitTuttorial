
theme_presentation<- function(base_size = 28, base_family = "Calibri") {
  theme_classic(base_size = base_size, base_family = base_family) %+replace%
    theme(
      strip.background = element_blank(),
      strip.text.x = element_text(size = 18,colour="white"),
      strip.text.y = element_text(size = 18,colour="white"),
      axis.text.x = element_text(size=28,colour="white"),
      axis.text.y = element_text(size=28,colour="white",hjust=1),
      axis.ticks =  element_line(colour = "white"), 
      axis.title.x= element_text(size=42,colour="white"),
      axis.title.y= element_text(size=42,angle=90,colour="white"),
      panel.background = element_rect(fill="black"), 
      panel.border =element_blank(),  
      panel.grid.major = element_blank(), 
      panel.grid.minor = element_blank(), 
      panel.spacing = unit(1.0, "cm"), 
      plot.background = element_rect(fill="black"), 
      plot.title =element_text(size=28,colour="white"), 
      plot.margin = unit(c(1,  1, 1, 1), "cm"),
      axis.line = element_line(colour = "white"),
      legend.background=element_rect(fill='black'),
      legend.title=element_text(size=28,colour="white"),
      legend.text=element_text(size=28,colour="white"),
      legend.key = element_rect( fill = 'black'),
      legend.position = "none"
    )
}


theme_pub<- function(base_size = 28, base_family = "Times New Roman") {
  theme_classic(base_size = base_size, base_family = base_family) %+replace%
    theme(
      strip.background = element_blank(),
      strip.text.x = element_text(size = 16,colour="black"),
      strip.text.y = element_text(size = 16,colour="black"),
      axis.text.x = element_text(size=16,colour="black"),
      axis.text.y = element_text(size=16,colour="black",hjust=1),
      axis.ticks =  element_line(colour = "black"), 
      axis.title.x= element_text(size=20,colour="black"),
      axis.title.y= element_text(size=20,angle=90,colour="black"),
      legend.position = "none",
      panel.border =element_blank(),  
      panel.grid.major = element_blank(), 
      panel.grid.minor = element_blank(), 
      panel.spacing = unit(1.0, "cm"),
      plot.margin = unit(c(1,  1, 1, 1), "cm")
    )
}



