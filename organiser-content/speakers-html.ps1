# Path to your CSV file
$csvPath = "speakers-2025.csv"

# Read the CSV content
$speakers = Import-Csv -Path $csvPath

# Loop through each speaker and build HTML
$htmlOutput = ""

foreach ($speaker in $speakers) {
    $name = $speaker.Owner
    $tagline = $speaker.TagLine
    $twitter = $speaker.'X (Twitter)'
    $linkedin = $speaker.LinkedIn
    $blog = $speaker.Blog
    $image = $speaker.'Profile Picture'

    # Set default image if none provided
    if ([string]::IsNullOrWhiteSpace($image)) {
        $image = "assets/img/speakers/tbd.png"
    }

    # Begin building HTML snippet
    $htmlOutput += @"
<div class="swiper-slide">
  <div class="speaker" data-aos="fade-up" data-aos-delay="100">
    <img src="$image" alt="Photo of $name" class="img-fluid">
    <div class="details">
      <h3><a href="speaker-details.html">$name</a></h3>
      <p>$tagline</p>
      <div class="social">
"@

    if (-not [string]::IsNullOrWhiteSpace($blog)) {
        $htmlOutput += "        <a href=""$blog""><i class=""bi bi-stars""></i></a>`n"
    }
    if (-not [string]::IsNullOrWhiteSpace($twitter)) {
        $htmlOutput += "        <a href=""$twitter""><i class=""bi bi-twitter""></i></a>`n"
    }
    if (-not [string]::IsNullOrWhiteSpace($linkedin)) {
        $htmlOutput += "        <a href=""$linkedin""><i class=""bi bi-linkedin""></i></a>`n"
    }

    # Close divs
    $htmlOutput += @"
      </div>
    </div>
  </div>
</div>

"@
}

# Output the result
$htmlOutput
