########## Session 2 ##########

### 2. Distributions with varying parameters ###

### Discrete random variables

# Binomial
{
  name1=c('Binomial distribution (n=100,p=0.8)')
  name2=c('Binomial distribution (n=1000,p=0.8)')
  name3=c('Binomial distribution (n=1000,p=0.3)')
  
  par(mfrow=c(3,1))
  
  # parameter
  
  a=seq(0,100)
  b=seq(0,1000)
  c=seq(0,1000)
  
  plot(a,dbinom(a,100,0.8),col=c('pink'),main=name1)
  plot(b,dbinom(b,1000,0.8),col=c('dark blue'),main=name2)
  plot(c,dbinom(c,1000,0.3),col=c('cornflowerblue'),main=name3)
}

# Poisson
{
  name1=c('Poisson distribution (lambda=10)')
  name2=c('Poisson distribution (lambda=100)')
  name3=c('Poisson distribution (lambda=5)')
  
  par(mfrow=c(3,1))
  
  # parameter
  a=rpois(1000,10)
  b=rpois(1000,100)
  c=rpois(1000,5)
  
  hist(a,col=c('pink'),border='white',freq=FALSE,main=name1)
  hist(b,col=c('dark blue'),border='white',freq=FALSE,main=name2)
  hist(c,col=c('cornflowerblue'),border='white',freq=FALSE,main=name3)
}

# Geometric
{
  name1=c('Geometric distribution (p=0.7)')
  name2=c('Geometric distribution (p=0.3)')
  name3=c('Geometric distribution (p=0.01)')
  
  par(mfrow=c(3,1))
  
  # parameter
  a=rgeom(1000,0.7)
  b=rgeom(1000,0.3)
  c=rgeom(1000,0.01)
  
  hist(a,col=c('pink'),border='white',freq=FALSE,main=name1)
  hist(b,col=c('dark blue'),border='white',freq=FALSE,main=name2)
  hist(c,col=c('cornflowerblue'),border='white',freq=FALSE,main=name3)
}

# 
### Continuous random variables

# Normal
{
  name1=c('Normal distribution (mu=0, sd=1)')
  name2=c('Normal distribution (mu=0, sd=10)')
  name3=c('Normal distribution (mu=5, sd=0.1)')
  
  par(mfrow=c(3,1))
  
  # parameter
  a=seq(-8,8,length=1000)
  b=seq(-40,40,length=4000)
  c=seq(3.5,6.5,length=1000)
  
  plot(a,dnorm(a,0,1),col=c('pink'),main=name1)
  plot(b,dnorm(b,0,10),col=c('pink'),main=name1)
  plot(c,dnorm(c,5,0.1),col=c('pink'),main=name1)
}

# Exponential
{
  name1=c('Exponential distribution (rate=1)')
  name2=c('Exponential distribution (rate=0.1)')
  name3=c('Exponential distribution (rate=10)')
  
  par(mfrow=c(3,1))
  
  # parameter
  a=rexp(10000,rate=1)
  b=rexp(10000,rate=1/10)
  c=rexp(10000,rate=10)
  
  hist(a,col=c('pink'),border='white',freq=FALSE,main=name1)
  hist(b,col=c('dark blue'),border='white',freq=FALSE,main=name2)
  hist(c,col=c('cornflowerblue'),border='white',freq=FALSE,main=name3)
}

# Gamma distribution
{
  name1=c('Gamma distribution (shape=1, rate=1)')
  name2=c('Gamma distribution (shape=1, rate=0.1)')
  name3=c('Gamma distribution (shape=1, rate=10)')
  
  name4=c('Gamma distribution (shape=0.5, rate=1)')
  name5=c('Gamma distribution (shape=0.5, rate=0.1)')
  name6=c('Gamma distribution (shape=0.5, rate=10)')
  
  name7=c('Gamma distribution (shape=10, rate=1)')
  name8=c('Gamma distribution (shape=10, rate=0.1)')
  name9=c('Gamma distribution (shape=10, rate=10)')
  
  par(mfrow=c(3,3))
  
  # parameter
  a1=rgamma(10000,shape=1,rate=1)
  a2=rgamma(10000,shape=1,rate=1/10)
  a3=rgamma(10000,shape=1,rate=10)
  a4=rgamma(10000,shape=0.5,rate=1)
  a5=rgamma(10000,shape=0.5,rate=1/10)
  a6=rgamma(10000,shape=0.5,rate=10)
  a7=rgamma(10000,shape=10,rate=1)
  a8=rgamma(10000,shape=10,rate=1/10)
  a9=rgamma(10000,shape=10,rate=10)
  
  hist(a1,col=c('pink'),border='white',freq=FALSE,main=name1)
  hist(a2,col=c('pink'),border='white',freq=FALSE,main=name2)
  hist(a3,col=c('pink'),border='white',freq=FALSE,main=name3)
  hist(a4,col=c('dark blue'),border='white',freq=FALSE,main=name4)
  hist(a5,col=c('dark blue'),border='white',freq=FALSE,main=name5)
  hist(a6,col=c('dark blue'),border='white',freq=FALSE,main=name6)
  hist(a7,col=c('cornflowerblue'),border='white',freq=FALSE,main=name7)
  hist(a8,col=c('cornflowerblue'),border='white',freq=FALSE,main=name8)
  hist(a9,col=c('cornflowerblue'),border='white',freq=FALSE,main=name9)
}


### 3. Relationship between distributions ###

# 3-1. Hypergeometric vs Binomial
{
name1=c('Hypergeometric distribution')
name2=c('Binomial distribution')
par(mfrow=c(2,1))

# parameter
a=rhyper(10000,1500,500,100)
b=rbinom(10000,100,3/4)

hist(a,breaks=40,col=c('pink'),border='white',xlim=c(60,90),freq=FALSE,main=name1)
hist(b,breaks=40,col=c('cornflowerblue'),border='white',xlim=c(60,90),freq=FALSE,main=name2)
}


# 3-2. Binomial vs Poisson (when np converges to lambda as n increases)
{
name1=c('Poisson distribution')
name2=c('Binomial distribution (n=200,p=3/4)')
name3=c('Binomial distribution (n=300,p=1/2)')
name4=c('Binomial distribution (n=10000,p=0.015)')

par(mfrow=c(2,2))

# parameter
a=rpois(5000,150)
b=rbinom(5000,200,150/200)
c=rbinom(5000,300,1/2)
d=rbinom(5000,10000,150/10000)

hist(a,breaks=20,col=c('pink'),border='white',xlim=c(100,200),freq=FALSE,main=name1)
hist(b,breaks=15,col=c('dark blue'),border='white',xlim=c(100,200),freq=FALSE,main=name2)
hist(c,breaks=20,col=c('dark blue'),border='white',xlim=c(100,200),freq=FALSE,main=name3)
hist(d,breaks=20,col=c('cornflowerblue'),border='white',xlim=c(100,200),freq=FALSE,main=name4)
}


# 3-3. Negative binomial vs Geometric
{
name1=c('Negative binomial distribution')
name2=c('Geometric distribution (n=1)')
name3=c('Geometric distribution (n=5)')
name4=c('Geometric distribution (n=10)')

par(mfrow=c(2,2))

# parameter
a=rnbinom(10000,10,1/5)
b=rgeom(100,1/5)
c=vector()
d=vector()
for(i in 1:1000){
c=c(c,sum(rgeom(5,1/5)))
d=c(d,sum(rgeom(10,1/5)))
}

hist(a,col=c('pink'),border='white',freq=FALSE,main=name1,xlim=c(0,100))
hist(b,col=c('dark blue'),border='white',freq=FALSE,main=name2)
hist(c,col=c('dark blue'),border='white',freq=FALSE,main=name3,xlim=c(0,100))
hist(d,col=c('cornflowerblue'),border='white',freq=FALSE,main=name4,xlim=c(0,100))
}


# 3-4. Exponential vs Gamma distribution
{
  name1=c('Exponential distribution (rate=1)')
  name2=c('Exponential distribution (rate=0.1)')
  
  name3=c('Gamma distribution (shape=1, rate=1)')
  name4=c('Gamma distribution (shape=1, rate=0.1)')
  
  par(mfrow=c(2,2))
  
  # parameter
  a=rexp(10000,rate=1)
  b=rexp(10000,rate=1/10)
  c=rgamma(10000,shape=1,rate=1)
  d=rgamma(10000,shape=1,rate=1/10)
  
  hist(a,col=c('pink'),border='white',freq=FALSE,main=name1)
  hist(b,col=c('pink'),border='white',freq=FALSE,main=name2)
  hist(c,col=c('cornflowerblue'),border='white',freq=FALSE,main=name3)
  hist(d,col=c('cornflowerblue'),border='white',freq=FALSE,main=name4)
}

