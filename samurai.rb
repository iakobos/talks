# encoding: utf-8

center <<-EOS
  \e[1mThe Way of the Javascript Samurai\e[0m
  https://github.com/jacobthemyth/samurai

  Jake Smith
  @must_converge
EOS

image "images/jsninja-rect.png"

center <<-EOS
\e[4m
The Way of the Samurai is particularly rife with showmanship, with commercial
popularization and profiteering on the part of both those who teach
the science and those who study it.
\e[0m

Miyamoto Musashi
EOS

center <<-EOS
\e[4mThe Inner Product

All the mathematical and algorithmic knowledge, engineering, and discipline
required for a modern game are difficult things to cultivate; whereas we employ
them to build a tangible, outerly visible product (a game), perhaps the real
value is that we are honing our ability to create and refining our
understanding of the world.\e[0m

Johnathan Blow²
EOS

center <<-EOS
\e[4mIn the Way of the Samurai do not let your frame of mind be any
different from your everyday mind.\e[0m

Miyamoto Musashi
EOS

image "images/musashi-rect.jpg"

shuhari = <<-EOS
 守 破 離
  Shu Ha Ri
EOS

section shuhari do
  center "First learn, then detach, and finally transcend"
  center "First repeat, then innovate, and finally create"
  block <<-EOS
    1. Technique
    2. Practice
    3. Kaizen
  EOS
end

section "Technique" do

  center "Imposter Syndrome"

  center <<-EOS
    SODD
    Stack Overflow Driven Development
  EOS

  clearfix = <<-EOS
    // Not sure what this does...
    .clearfix:after {
      content: ".";
      display: block;
      clear: both;
      visibility: hidden;
      line-height: 0;
      height: 0;
    }

    .clearfix {
      display: inline-block;
    }

    * html .clearfix {
      height: 1%;
    }
  EOS
  code clearfix, :css

  code <<-EOS
    //FIXME: this is stupid and dangerous
    some_really_horrible_php_code()
  EOS

  block <<-EOS
    \e[1mMy Early Test Driven Development\e[0m
    1. run function isReserved(something)
    2. function returns `false` instead of `true`
    3. change last statement to `return !isReserved`
  EOS
end

section "Practice " do
  center <<-EOS
    \e[4;1mContrary to what you might believe, merely doing your job every day
    doesn't qualify as real practice.\e[0m\e[4m Going to meetings isn't practicing
    your people skills, and replying to mail isn't practicing your typing. You
    have to set aside some time once in a while and do focused practice in
    order to get better at something.

    The great engineers I know are as good as they are because they practice
    all the time. People in great physical shape only get that way by working
    out regularly, and they need to keep it up, or they get out of shape. The
    same goes for programming and engineering.⁴\e[0m
  EOS

  center <<-EOS
  \e[4mAs for the Way of the Samurai, by endeavoring to put it into practice
  morning and evening, day in and day out, your mind should broaden of itself\e[0m

  Miyamoto Musashi
  EOS
  block <<-EOS
    - http://codewars.com
    - http://exercism.io
    - Introduction to The Design & Analysis of Algorithms
  EOS

  concat = <<-EOS
    function concatStrings(strings){
      var finalString, i, len;
      finalString = "";
      for(i = 0, len = strings.length; i < len; i++){
        finalString = strings[i];
      }
      return finalString;
    }
  EOS
  code concat, :javascript

  buffer = <<-EOS
    function concatStrings(strings){
      return strings.join("");
    }
  EOS
  code buffer, :javascript
end

section "Kaizen " do

  center <<-EOS
  \e[4mIn the Way of the Samurai do not let your frame of mind be any
  different from your everyday mind.\e[0m

  Miyamoto Musashi
  EOS

  center <<-EOS
    \e[4mBut with weapons, just as with other things, you should not make
    distinctions or preferences. Going too far is the same as not going far
    enough. Without imitating others, you should take what is appropriate to
    yourself and use a weapon you can handle.

    Touch upon all of the arts.
    Know the advantages and disadvantages of everything.\e[0m

    Miyamoto Musashi
  EOS

  image "images/uinavigation.png"
end

center <<-EOS
  \e[4mEvery computer program is a model, hatched in the mind, of a real or mental
  process. These processes, arising from human experience and thought, are huge
  in number, intricate in detail, and at any time only partially understood. They
  are modeled to our permanent satisfaction rarely by our computer programs. Thus
  even though our programs are carefully handcrafted discrete collections of
  symbols, mosaics of interlocking functions, they continually evolve: we change
  them as our perception of the model deepens, enlarges, generalizes until the
  model ultimately attains a metastable place within still another model with
  which we struggle. The source of the exhilaration associated with computer
  programming is the continual unfolding within the mind and on the computer of
  mechanisms expressed as programs and the explosion of perception they generate.\e[0m

  Structure and Interpretation of Computer Programs⁶
EOS

block <<-EOS
References
1. http://www.manning.com/resig/
2. http://number-none.com/product/index.html
3. http://hamletdarcy.blogspot.com/2009/06/forgotten-refactorings.html
4. https://sites.google.com/site/steveyegge2/practicing-programming
5. https://developer.apple.com/library/ios/documentation/UIKit/Reference/
     UINavigationController_Class/Reference/Reference.html
6. Structure and Interpretation of Computer Programs (Abelson and Sussman)
7. http://en.wikipedia.org/wiki/File:Musashi_ts_pic.jpg
EOS
