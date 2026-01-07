---
title: Palettes
layout: page
nav_order: 1
---

<style>
.swatches {
    display: flex;
    flex-flow: wrap;
    margin-top: 1em;
}

.swatches > span {
    width: 2em;
    height: 2em;
    border-radius: 25%;
    display: flex;
    flex-direction: column;
    margin-right: 0.2em;
    margin-bottom: 1.2em;
    /* box-shadow: 0 0 0.1em rgba(0, 0, 0, 0.5) inset; */
    border: 1px solid rgba(0, 0, 0, 0.2);
}

.swatches > span > span {
    position: relative;
    top: 2.4em;
    opacity: 0.7;
    font-size: 80%;
    text-align: center;
}
</style>

# Palettes

Pixelflow Canvas comes with a number of predefined palettes that you can use in your projects. The default palette is [VGA](#vga).

To set a predefined palette, use the `set_predefined_palette` method:

```ruby
set_predefined_palette(:cling)
```

You can also change individual colors in a palette using the `set_palette_color` method:

```ruby
set_palette(0, 0x14, 0x34, 0x64)
```

This sets the color number 0 to a deep blue. Changing a palette color will affect all pixels that use that color in the canvas immediately. This means you can do palette animations by changing the palette colors over time.

## Predefined palettes

<!-- palettes start -->

#### 1bit monitor glow

```ruby
set_predefined_palette(:1bit_monitor_glow)
```

<div class='swatches'>
<span style='background-color: #222323'><span>0</span></span>
<span style='background-color: #f0f6f0'><span>1</span></span>
</div>

#### Aap 64

```ruby
set_predefined_palette(:aap_64)
```

<div class='swatches'>
<span style='background-color: #060608'><span>0</span></span>
<span style='background-color: #141013'><span>1</span></span>
<span style='background-color: #3b1725'><span>2</span></span>
<span style='background-color: #73172d'><span>3</span></span>
<span style='background-color: #b4202a'><span>4</span></span>
<span style='background-color: #df3e23'><span>5</span></span>
<span style='background-color: #fa6a0a'><span>6</span></span>
<span style='background-color: #f9a31b'><span>7</span></span>
<span style='background-color: #ffd541'><span>8</span></span>
<span style='background-color: #fffc40'><span>9</span></span>
<span style='background-color: #d6f264'><span>10</span></span>
<span style='background-color: #9cdb43'><span>11</span></span>
<span style='background-color: #59c135'><span>12</span></span>
<span style='background-color: #14a02e'><span>13</span></span>
<span style='background-color: #1a7a3e'><span>14</span></span>
<span style='background-color: #24523b'><span>15</span></span>
<span style='background-color: #122020'><span>16</span></span>
<span style='background-color: #143464'><span>17</span></span>
<span style='background-color: #285cc4'><span>18</span></span>
<span style='background-color: #249fde'><span>19</span></span>
<span style='background-color: #20d6c7'><span>20</span></span>
<span style='background-color: #a6fcdb'><span>21</span></span>
<span style='background-color: #ffffff'><span>22</span></span>
<span style='background-color: #fef3c0'><span>23</span></span>
<span style='background-color: #fad6b8'><span>24</span></span>
<span style='background-color: #f5a097'><span>25</span></span>
<span style='background-color: #e86a73'><span>26</span></span>
<span style='background-color: #bc4a9b'><span>27</span></span>
<span style='background-color: #793a80'><span>28</span></span>
<span style='background-color: #403353'><span>29</span></span>
<span style='background-color: #242234'><span>30</span></span>
<span style='background-color: #221c1a'><span>31</span></span>
<span style='background-color: #322b28'><span>32</span></span>
<span style='background-color: #71413b'><span>33</span></span>
<span style='background-color: #bb7547'><span>34</span></span>
<span style='background-color: #dba463'><span>35</span></span>
<span style='background-color: #f4d29c'><span>36</span></span>
<span style='background-color: #dae0ea'><span>37</span></span>
<span style='background-color: #b3b9d1'><span>38</span></span>
<span style='background-color: #8b93af'><span>39</span></span>
<span style='background-color: #6d758d'><span>40</span></span>
<span style='background-color: #4a5462'><span>41</span></span>
<span style='background-color: #333941'><span>42</span></span>
<span style='background-color: #422433'><span>43</span></span>
<span style='background-color: #5b3138'><span>44</span></span>
<span style='background-color: #8e5252'><span>45</span></span>
<span style='background-color: #ba756a'><span>46</span></span>
<span style='background-color: #e9b5a3'><span>47</span></span>
<span style='background-color: #e3e6ff'><span>48</span></span>
<span style='background-color: #b9bffb'><span>49</span></span>
<span style='background-color: #849be4'><span>50</span></span>
<span style='background-color: #588dbe'><span>51</span></span>
<span style='background-color: #477d85'><span>52</span></span>
<span style='background-color: #23674e'><span>53</span></span>
<span style='background-color: #328464'><span>54</span></span>
<span style='background-color: #5daf8d'><span>55</span></span>
<span style='background-color: #92dcba'><span>56</span></span>
<span style='background-color: #cdf7e2'><span>57</span></span>
<span style='background-color: #e4d2aa'><span>58</span></span>
<span style='background-color: #c7b08b'><span>59</span></span>
<span style='background-color: #a08662'><span>60</span></span>
<span style='background-color: #796755'><span>61</span></span>
<span style='background-color: #5a4e44'><span>62</span></span>
<span style='background-color: #423934'><span>63</span></span>
</div>

#### Aerugo

```ruby
set_predefined_palette(:aerugo)
```

<div class='swatches'>
<span style='background-color: #2f1e1a'><span>0</span></span>
<span style='background-color: #4f3322'><span>1</span></span>
<span style='background-color: #723627'><span>2</span></span>
<span style='background-color: #95392c'><span>3</span></span>
<span style='background-color: #c75533'><span>4</span></span>
<span style='background-color: #e76d46'><span>5</span></span>
<span style='background-color: #934e28'><span>6</span></span>
<span style='background-color: #a2663c'><span>7</span></span>
<span style='background-color: #c87d40'><span>8</span></span>
<span style='background-color: #f5a95b'><span>9</span></span>
<span style='background-color: #6b8b8c'><span>10</span></span>
<span style='background-color: #81a38e'><span>11</span></span>
<span style='background-color: #aac39e'><span>12</span></span>
<span style='background-color: #ffffff'><span>13</span></span>
<span style='background-color: #d1d0ce'><span>14</span></span>
<span style='background-color: #bab7b2'><span>15</span></span>
<span style='background-color: #898a8a'><span>16</span></span>
<span style='background-color: #686461'><span>17</span></span>
<span style='background-color: #554d4b'><span>18</span></span>
<span style='background-color: #3c3d3b'><span>19</span></span>
<span style='background-color: #343230'><span>20</span></span>
<span style='background-color: #87d1ef'><span>21</span></span>
<span style='background-color: #64a1c2'><span>22</span></span>
<span style='background-color: #466480'><span>23</span></span>
<span style='background-color: #2f485c'><span>24</span></span>
<span style='background-color: #242e35'><span>25</span></span>
<span style='background-color: #1b2026'><span>26</span></span>
<span style='background-color: #aa9c8a'><span>27</span></span>
<span style='background-color: #917f6d'><span>28</span></span>
<span style='background-color: #86624a'><span>29</span></span>
<span style='background-color: #715b48'><span>30</span></span>
<span style='background-color: #5e4835'><span>31</span></span>
</div>

#### Apollo

```ruby
set_predefined_palette(:apollo)
```

<div class='swatches'>
<span style='background-color: #172038'><span>0</span></span>
<span style='background-color: #253a5e'><span>1</span></span>
<span style='background-color: #3c5e8b'><span>2</span></span>
<span style='background-color: #4f8fba'><span>3</span></span>
<span style='background-color: #73bed3'><span>4</span></span>
<span style='background-color: #a4dddb'><span>5</span></span>
<span style='background-color: #19332d'><span>6</span></span>
<span style='background-color: #25562e'><span>7</span></span>
<span style='background-color: #468232'><span>8</span></span>
<span style='background-color: #75a743'><span>9</span></span>
<span style='background-color: #a8ca58'><span>10</span></span>
<span style='background-color: #d0da91'><span>11</span></span>
<span style='background-color: #4d2b32'><span>12</span></span>
<span style='background-color: #7a4841'><span>13</span></span>
<span style='background-color: #ad7757'><span>14</span></span>
<span style='background-color: #c09473'><span>15</span></span>
<span style='background-color: #d7b594'><span>16</span></span>
<span style='background-color: #e7d5b3'><span>17</span></span>
<span style='background-color: #341c27'><span>18</span></span>
<span style='background-color: #602c2c'><span>19</span></span>
<span style='background-color: #884b2b'><span>20</span></span>
<span style='background-color: #be772b'><span>21</span></span>
<span style='background-color: #de9e41'><span>22</span></span>
<span style='background-color: #e8c170'><span>23</span></span>
<span style='background-color: #241527'><span>24</span></span>
<span style='background-color: #411d31'><span>25</span></span>
<span style='background-color: #752438'><span>26</span></span>
<span style='background-color: #a53030'><span>27</span></span>
<span style='background-color: #cf573c'><span>28</span></span>
<span style='background-color: #da863e'><span>29</span></span>
<span style='background-color: #1e1d39'><span>30</span></span>
<span style='background-color: #402751'><span>31</span></span>
<span style='background-color: #7a367b'><span>32</span></span>
<span style='background-color: #a23e8c'><span>33</span></span>
<span style='background-color: #c65197'><span>34</span></span>
<span style='background-color: #df84a5'><span>35</span></span>
<span style='background-color: #090a14'><span>36</span></span>
<span style='background-color: #10141f'><span>37</span></span>
<span style='background-color: #151d28'><span>38</span></span>
<span style='background-color: #202e37'><span>39</span></span>
<span style='background-color: #394a50'><span>40</span></span>
<span style='background-color: #577277'><span>41</span></span>
<span style='background-color: #819796'><span>42</span></span>
<span style='background-color: #a8b5b2'><span>43</span></span>
<span style='background-color: #c7cfcc'><span>44</span></span>
<span style='background-color: #ebede9'><span>45</span></span>
</div>

#### Blk neo

```ruby
set_predefined_palette(:blk_neo)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #12173d'><span>1</span></span>
<span style='background-color: #293268'><span>2</span></span>
<span style='background-color: #464b8c'><span>3</span></span>
<span style='background-color: #6b74b2'><span>4</span></span>
<span style='background-color: #909edd'><span>5</span></span>
<span style='background-color: #c1d9f2'><span>6</span></span>
<span style='background-color: #ffffff'><span>7</span></span>
<span style='background-color: #ffccd0'><span>8</span></span>
<span style='background-color: #f29faa'><span>9</span></span>
<span style='background-color: #c37289'><span>10</span></span>
<span style='background-color: #994c69'><span>11</span></span>
<span style='background-color: #723352'><span>12</span></span>
<span style='background-color: #3f1f3c'><span>13</span></span>
<span style='background-color: #b22e69'><span>14</span></span>
<span style='background-color: #e54286'><span>15</span></span>
<span style='background-color: #ff6eaf'><span>16</span></span>
<span style='background-color: #ffa5d5'><span>17</span></span>
<span style='background-color: #8cff9b'><span>18</span></span>
<span style='background-color: #42bc7f'><span>19</span></span>
<span style='background-color: #22896e'><span>20</span></span>
<span style='background-color: #14665b'><span>21</span></span>
<span style='background-color: #0f4a4c'><span>22</span></span>
<span style='background-color: #0a2a33'><span>23</span></span>
<span style='background-color: #1d1a59'><span>24</span></span>
<span style='background-color: #322d89'><span>25</span></span>
<span style='background-color: #354ab2'><span>26</span></span>
<span style='background-color: #3e83d1'><span>27</span></span>
<span style='background-color: #50b9eb'><span>28</span></span>
<span style='background-color: #8cdaff'><span>29</span></span>
<span style='background-color: #b483ef'><span>30</span></span>
<span style='background-color: #854cbf'><span>31</span></span>
<span style='background-color: #5d2f8c'><span>32</span></span>
<span style='background-color: #431e66'><span>33</span></span>
<span style='background-color: #ffe091'><span>34</span></span>
<span style='background-color: #ffaa6e'><span>35</span></span>
<span style='background-color: #ff695a'><span>36</span></span>
<span style='background-color: #b23c40'><span>37</span></span>
<span style='background-color: #721c2f'><span>38</span></span>
<span style='background-color: #a52639'><span>39</span></span>
<span style='background-color: #dd3745'><span>40</span></span>
<span style='background-color: #ff6675'><span>41</span></span>
<span style='background-color: #78fae6'><span>42</span></span>
<span style='background-color: #27d3cb'><span>43</span></span>
<span style='background-color: #00aaa5'><span>44</span></span>
<span style='background-color: #008782'><span>45</span></span>
</div>

#### Calm sunset

```ruby
set_predefined_palette(:calm_sunset)
```

<div class='swatches'>
<span style='background-color: #684971'><span>0</span></span>
<span style='background-color: #a06389'><span>1</span></span>
<span style='background-color: #cb7ca2'><span>2</span></span>
<span style='background-color: #e1aea4'><span>3</span></span>
<span style='background-color: #f9d8a1'><span>4</span></span>
<span style='background-color: #ffecb2'><span>5</span></span>
<span style='background-color: #fffcf1'><span>6</span></span>
</div>

#### Carnival 32

```ruby
set_predefined_palette(:carnival_32)
```

<div class='swatches'>
<span style='background-color: #4d2235'><span>0</span></span>
<span style='background-color: #71282a'><span>1</span></span>
<span style='background-color: #975638'><span>2</span></span>
<span style='background-color: #d0763e'><span>3</span></span>
<span style='background-color: #ebac4d'><span>4</span></span>
<span style='background-color: #f2d08d'><span>5</span></span>
<span style='background-color: #ddac88'><span>6</span></span>
<span style='background-color: #c68d80'><span>7</span></span>
<span style='background-color: #af6d77'><span>8</span></span>
<span style='background-color: #c74446'><span>9</span></span>
<span style='background-color: #9f3847'><span>10</span></span>
<span style='background-color: #6e406d'><span>11</span></span>
<span style='background-color: #a7a758'><span>12</span></span>
<span style='background-color: #718141'><span>13</span></span>
<span style='background-color: #496541'><span>14</span></span>
<span style='background-color: #37433b'><span>15</span></span>
<span style='background-color: #2a1c31'><span>16</span></span>
<span style='background-color: #423157'><span>17</span></span>
<span style='background-color: #4d528a'><span>18</span></span>
<span style='background-color: #556a97'><span>19</span></span>
<span style='background-color: #5c81a3'><span>20</span></span>
<span style='background-color: #7dadc8'><span>21</span></span>
<span style='background-color: #b0d6d9'><span>22</span></span>
<span style='background-color: #ece6df'><span>23</span></span>
<span style='background-color: #cfccca'><span>24</span></span>
<span style='background-color: #a6a6a6'><span>25</span></span>
<span style='background-color: #787878'><span>26</span></span>
<span style='background-color: #626262'><span>27</span></span>
<span style='background-color: #4a4a4a'><span>28</span></span>
<span style='background-color: #363636'><span>29</span></span>
<span style='background-color: #618c70'><span>30</span></span>
<span style='background-color: #8b7463'><span>31</span></span>
</div>

#### Cc 29

```ruby
set_predefined_palette(:cc_29)
```

<div class='swatches'>
<span style='background-color: #f2f0e5'><span>0</span></span>
<span style='background-color: #b8b5b9'><span>1</span></span>
<span style='background-color: #868188'><span>2</span></span>
<span style='background-color: #646365'><span>3</span></span>
<span style='background-color: #45444f'><span>4</span></span>
<span style='background-color: #3a3858'><span>5</span></span>
<span style='background-color: #212123'><span>6</span></span>
<span style='background-color: #352b42'><span>7</span></span>
<span style='background-color: #43436a'><span>8</span></span>
<span style='background-color: #4b80ca'><span>9</span></span>
<span style='background-color: #68c2d3'><span>10</span></span>
<span style='background-color: #a2dcc7'><span>11</span></span>
<span style='background-color: #ede19e'><span>12</span></span>
<span style='background-color: #d3a068'><span>13</span></span>
<span style='background-color: #b45252'><span>14</span></span>
<span style='background-color: #6a536e'><span>15</span></span>
<span style='background-color: #4b4158'><span>16</span></span>
<span style='background-color: #80493a'><span>17</span></span>
<span style='background-color: #a77b5b'><span>18</span></span>
<span style='background-color: #e5ceb4'><span>19</span></span>
<span style='background-color: #c2d368'><span>20</span></span>
<span style='background-color: #8ab060'><span>21</span></span>
<span style='background-color: #567b79'><span>22</span></span>
<span style='background-color: #4e584a'><span>23</span></span>
<span style='background-color: #7b7243'><span>24</span></span>
<span style='background-color: #b2b47e'><span>25</span></span>
<span style='background-color: #edc8c4'><span>26</span></span>
<span style='background-color: #cf8acb'><span>27</span></span>
<span style='background-color: #5f556a'><span>28</span></span>
</div>

#### Cga palette 1 high

```ruby
set_predefined_palette(:cga_palette_1_high)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #ff55ff'><span>1</span></span>
<span style='background-color: #55ffff'><span>2</span></span>
<span style='background-color: #ffffff'><span>3</span></span>
</div>

#### Cling

```ruby
set_predefined_palette(:cling)
```

<div class='swatches'>
<span style='background-color: #ffe617'><span>0</span></span>
<span style='background-color: #fad31c'><span>1</span></span>
<span style='background-color: #fdb717'><span>2</span></span>
<span style='background-color: #faaa21'><span>3</span></span>
<span style='background-color: #f1753f'><span>4</span></span>
<span style='background-color: #ed5724'><span>5</span></span>
<span style='background-color: #ef4538'><span>6</span></span>
<span style='background-color: #ea2830'><span>7</span></span>
<span style='background-color: #bc2326'><span>8</span></span>
<span style='background-color: #8c0c03'><span>9</span></span>
<span style='background-color: #e5185d'><span>10</span></span>
<span style='background-color: #f384ae'><span>11</span></span>
<span style='background-color: #fac6d2'><span>12</span></span>
<span style='background-color: #b296c7'><span>13</span></span>
<span style='background-color: #7b67ae'><span>14</span></span>
<span style='background-color: #5f3577'><span>15</span></span>
<span style='background-color: #c1d18a'><span>16</span></span>
<span style='background-color: #799155'><span>17</span></span>
<span style='background-color: #80bc42'><span>18</span></span>
<span style='background-color: #4aa03f'><span>19</span></span>
<span style='background-color: #16884a'><span>20</span></span>
<span style='background-color: #003f2e'><span>21</span></span>
<span style='background-color: #c3def1'><span>22</span></span>
<span style='background-color: #55beed'><span>23</span></span>
<span style='background-color: #31a8e0'><span>24</span></span>
<span style='background-color: #238acc'><span>25</span></span>
<span style='background-color: #0d60ae'><span>26</span></span>
<span style='background-color: #143b86'><span>27</span></span>
<span style='background-color: #001b4a'><span>28</span></span>
<span style='background-color: #7dcdc2'><span>29</span></span>
<span style='background-color: #00a8a8'><span>30</span></span>
<span style='background-color: #12959f'><span>31</span></span>
<span style='background-color: #094e54'><span>32</span></span>
<span style='background-color: #381e11'><span>33</span></span>
<span style='background-color: #c05c20'><span>34</span></span>
<span style='background-color: #bf9b6b'><span>35</span></span>
<span style='background-color: #e9d4a7'><span>36</span></span>
<span style='background-color: #e7e6e1'><span>37</span></span>
<span style='background-color: #cfd0d2'><span>38</span></span>
<span style='background-color: #8a8b8f'><span>39</span></span>
<span style='background-color: #778590'><span>40</span></span>
<span style='background-color: #474d4d'><span>41</span></span>
<span style='background-color: #050608'><span>42</span></span>
<span style='background-color: #ffffff'><span>43</span></span>
</div>

#### Cloudy 28

```ruby
set_predefined_palette(:cloudy_28)
```

<div class='swatches'>
<span style='background-color: #daddee'><span>0</span></span>
<span style='background-color: #b6cde3'><span>1</span></span>
<span style='background-color: #92bbcd'><span>2</span></span>
<span style='background-color: #6ba9b4'><span>3</span></span>
<span style='background-color: #51887c'><span>4</span></span>
<span style='background-color: #66a96d'><span>5</span></span>
<span style='background-color: #a6c87b'><span>6</span></span>
<span style='background-color: #d9e68f'><span>7</span></span>
<span style='background-color: #ecaa6d'><span>8</span></span>
<span style='background-color: #d56247'><span>9</span></span>
<span style='background-color: #a43c3c'><span>10</span></span>
<span style='background-color: #59160e'><span>11</span></span>
<span style='background-color: #773c35'><span>12</span></span>
<span style='background-color: #9e6257'><span>13</span></span>
<span style='background-color: #d3847a'><span>14</span></span>
<span style='background-color: #db96ad'><span>15</span></span>
<span style='background-color: #c277a3'><span>16</span></span>
<span style='background-color: #9b5d99'><span>17</span></span>
<span style='background-color: #62417d'><span>18</span></span>
<span style='background-color: #0c0f32'><span>19</span></span>
<span style='background-color: #252a6f'><span>20</span></span>
<span style='background-color: #34539e'><span>21</span></span>
<span style='background-color: #457bb4'><span>22</span></span>
<span style='background-color: #68a5d5'><span>23</span></span>
<span style='background-color: #92cade'><span>24</span></span>
<span style='background-color: #97a6b7'><span>25</span></span>
<span style='background-color: #7b8aa4'><span>26</span></span>
<span style='background-color: #5a6685'><span>27</span></span>
</div>

#### Color graphics adapter

```ruby
set_predefined_palette(:color_graphics_adapter)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #555555'><span>1</span></span>
<span style='background-color: #aaaaaa'><span>2</span></span>
<span style='background-color: #ffffff'><span>3</span></span>
<span style='background-color: #0000aa'><span>4</span></span>
<span style='background-color: #5555ff'><span>5</span></span>
<span style='background-color: #00aa00'><span>6</span></span>
<span style='background-color: #55ff55'><span>7</span></span>
<span style='background-color: #00aaaa'><span>8</span></span>
<span style='background-color: #55ffff'><span>9</span></span>
<span style='background-color: #aa0000'><span>10</span></span>
<span style='background-color: #ff5555'><span>11</span></span>
<span style='background-color: #aa00aa'><span>12</span></span>
<span style='background-color: #ff55ff'><span>13</span></span>
<span style='background-color: #aa5500'><span>14</span></span>
<span style='background-color: #ffff55'><span>15</span></span>
</div>

#### Colordome 32

```ruby
set_predefined_palette(:colordome_32)
```

<div class='swatches'>
<span style='background-color: #0d0b0d'><span>0</span></span>
<span style='background-color: #fff8e1'><span>1</span></span>
<span style='background-color: #c8b89f'><span>2</span></span>
<span style='background-color: #987a68'><span>3</span></span>
<span style='background-color: #674949'><span>4</span></span>
<span style='background-color: #3a3941'><span>5</span></span>
<span style='background-color: #6b6f72'><span>6</span></span>
<span style='background-color: #adb9b8'><span>7</span></span>
<span style='background-color: #add9b7'><span>8</span></span>
<span style='background-color: #6eb39d'><span>9</span></span>
<span style='background-color: #30555b'><span>10</span></span>
<span style='background-color: #1a1e2d'><span>11</span></span>
<span style='background-color: #284e43'><span>12</span></span>
<span style='background-color: #467e3e'><span>13</span></span>
<span style='background-color: #93ab52'><span>14</span></span>
<span style='background-color: #f2cf5c'><span>15</span></span>
<span style='background-color: #ec773d'><span>16</span></span>
<span style='background-color: #b83530'><span>17</span></span>
<span style='background-color: #722030'><span>18</span></span>
<span style='background-color: #281721'><span>19</span></span>
<span style='background-color: #6d2944'><span>20</span></span>
<span style='background-color: #c85257'><span>21</span></span>
<span style='background-color: #ec9983'><span>22</span></span>
<span style='background-color: #dbaf77'><span>23</span></span>
<span style='background-color: #b77854'><span>24</span></span>
<span style='background-color: #833e35'><span>25</span></span>
<span style='background-color: #50282f'><span>26</span></span>
<span style='background-color: #65432f'><span>27</span></span>
<span style='background-color: #7e6d37'><span>28</span></span>
<span style='background-color: #6ebe70'><span>29</span></span>
<span style='background-color: #b75834'><span>30</span></span>
<span style='background-color: #d55c4d'><span>31</span></span>
</div>

#### Comicscapes 50

```ruby
set_predefined_palette(:comicscapes_50)
```

<div class='swatches'>
<span style='background-color: #8ec5b5'><span>0</span></span>
<span style='background-color: #70ada4'><span>1</span></span>
<span style='background-color: #5b9a9a'><span>2</span></span>
<span style='background-color: #4d7d8d'><span>3</span></span>
<span style='background-color: #365471'><span>4</span></span>
<span style='background-color: #2a4268'><span>5</span></span>
<span style='background-color: #192449'><span>6</span></span>
<span style='background-color: #150d37'><span>7</span></span>
<span style='background-color: #140726'><span>8</span></span>
<span style='background-color: #0c1634'><span>9</span></span>
<span style='background-color: #102d40'><span>10</span></span>
<span style='background-color: #16444d'><span>11</span></span>
<span style='background-color: #1f605e'><span>12</span></span>
<span style='background-color: #2e8172'><span>13</span></span>
<span style='background-color: #409e74'><span>14</span></span>
<span style='background-color: #62bb7d'><span>15</span></span>
<span style='background-color: #79cd7a'><span>16</span></span>
<span style='background-color: #240d39'><span>17</span></span>
<span style='background-color: #38154e'><span>18</span></span>
<span style='background-color: #551e66'><span>19</span></span>
<span style='background-color: #712d7a'><span>20</span></span>
<span style='background-color: #92428f'><span>21</span></span>
<span style='background-color: #ad608f'><span>22</span></span>
<span style='background-color: #92b5b8'><span>23</span></span>
<span style='background-color: #869da2'><span>24</span></span>
<span style='background-color: #79878e'><span>25</span></span>
<span style='background-color: #676c78'><span>26</span></span>
<span style='background-color: #595966'><span>27</span></span>
<span style='background-color: #47444e'><span>28</span></span>
<span style='background-color: #3f3a43'><span>29</span></span>
<span style='background-color: #362f37'><span>30</span></span>
<span style='background-color: #2a2328'><span>31</span></span>
<span style='background-color: #0e020a'><span>32</span></span>
<span style='background-color: #340f21'><span>33</span></span>
<span style='background-color: #4e1f32'><span>34</span></span>
<span style='background-color: #743444'><span>35</span></span>
<span style='background-color: #8c454e'><span>36</span></span>
<span style='background-color: #a25959'><span>37</span></span>
<span style='background-color: #b3736a'><span>38</span></span>
<span style='background-color: #c69580'><span>39</span></span>
<span style='background-color: #d2ae91'><span>40</span></span>
<span style='background-color: #e5ccab'><span>41</span></span>
<span style='background-color: #f2e9cd'><span>42</span></span>
<span style='background-color: #f2dfa7'><span>43</span></span>
<span style='background-color: #dfb684'><span>44</span></span>
<span style='background-color: #d29567'><span>45</span></span>
<span style='background-color: #bf6e50'><span>46</span></span>
<span style='background-color: #b24e3d'><span>47</span></span>
<span style='background-color: #a43045'><span>48</span></span>
<span style='background-color: #952452'><span>49</span></span>
</div>

#### Crimson

```ruby
set_predefined_palette(:crimson)
```

<div class='swatches'>
<span style='background-color: #eff9d6'><span>0</span></span>
<span style='background-color: #ba5044'><span>1</span></span>
<span style='background-color: #7a1c4b'><span>2</span></span>
<span style='background-color: #1b0326'><span>3</span></span>
</div>

#### Cryptic ocean

```ruby
set_predefined_palette(:cryptic_ocean)
```

<div class='swatches'>
<span style='background-color: #2a173b'><span>0</span></span>
<span style='background-color: #3f2c5f'><span>1</span></span>
<span style='background-color: #443f7b'><span>2</span></span>
<span style='background-color: #4c5c87'><span>3</span></span>
<span style='background-color: #69809e'><span>4</span></span>
<span style='background-color: #95c5ac'><span>5</span></span>
</div>

#### Darkvania

```ruby
set_predefined_palette(:darkvania)
```

<div class='swatches'>
<span style='background-color: #120e2f'><span>0</span></span>
<span style='background-color: #1b1b52'><span>1</span></span>
<span style='background-color: #293377'><span>2</span></span>
<span style='background-color: #5670c2'><span>3</span></span>
<span style='background-color: #cfe8ff'><span>4</span></span>
<span style='background-color: #aabfe0'><span>5</span></span>
<span style='background-color: #9b9ed2'><span>6</span></span>
<span style='background-color: #4d3c66'><span>7</span></span>
<span style='background-color: #1d1023'><span>8</span></span>
<span style='background-color: #38173c'><span>9</span></span>
<span style='background-color: #4e0b3c'><span>10</span></span>
<span style='background-color: #66123b'><span>11</span></span>
<span style='background-color: #ad4557'><span>12</span></span>
<span style='background-color: #c9757e'><span>13</span></span>
<span style='background-color: #ebb1ae'><span>14</span></span>
<span style='background-color: #ffdcd6'><span>15</span></span>
<span style='background-color: #ecb78c'><span>16</span></span>
<span style='background-color: #cb9367'><span>17</span></span>
<span style='background-color: #b8814f'><span>18</span></span>
<span style='background-color: #77491e'><span>19</span></span>
<span style='background-color: #572b16'><span>20</span></span>
<span style='background-color: #360c01'><span>21</span></span>
<span style='background-color: #7b2f11'><span>22</span></span>
<span style='background-color: #d6761c'><span>23</span></span>
<span style='background-color: #f69d18'><span>24</span></span>
<span style='background-color: #ffd21c'><span>25</span></span>
<span style='background-color: #c7fba1'><span>26</span></span>
<span style='background-color: #7ec177'><span>27</span></span>
<span style='background-color: #519a57'><span>28</span></span>
<span style='background-color: #33694a'><span>29</span></span>
<span style='background-color: #265448'><span>30</span></span>
<span style='background-color: #102f2e'><span>31</span></span>
</div>

#### Daydream 20

```ruby
set_predefined_palette(:daydream_20)
```

<div class='swatches'>
<span style='background-color: #430f43'><span>0</span></span>
<span style='background-color: #472561'><span>1</span></span>
<span style='background-color: #205973'><span>2</span></span>
<span style='background-color: #248077'><span>3</span></span>
<span style='background-color: #2d9a77'><span>4</span></span>
<span style='background-color: #5ec688'><span>5</span></span>
<span style='background-color: #aae68f'><span>6</span></span>
<span style='background-color: #64154d'><span>7</span></span>
<span style='background-color: #8e184b'><span>8</span></span>
<span style='background-color: #ba3155'><span>9</span></span>
<span style='background-color: #d9505e'><span>10</span></span>
<span style='background-color: #e3744f'><span>11</span></span>
<span style='background-color: #f29e64'><span>12</span></span>
<span style='background-color: #ffc477'><span>13</span></span>
<span style='background-color: #ffdd96'><span>14</span></span>
<span style='background-color: #fff4b0'><span>15</span></span>
<span style='background-color: #c22e35'><span>16</span></span>
<span style='background-color: #d24f38'><span>17</span></span>
<span style='background-color: #df6939'><span>18</span></span>
<span style='background-color: #ed9b4a'><span>19</span></span>
</div>

#### Dreamscape8

```ruby
set_predefined_palette(:dreamscape8)
```

<div class='swatches'>
<span style='background-color: #c9cca1'><span>0</span></span>
<span style='background-color: #caa05a'><span>1</span></span>
<span style='background-color: #ae6a47'><span>2</span></span>
<span style='background-color: #8b4049'><span>3</span></span>
<span style='background-color: #543344'><span>4</span></span>
<span style='background-color: #515262'><span>5</span></span>
<span style='background-color: #63787d'><span>6</span></span>
<span style='background-color: #8ea091'><span>7</span></span>
</div>

#### Ega com extended

```ruby
set_predefined_palette(:ega_com_extended)
```

<div class='swatches'>
<span style='background-color: #292929'><span>0</span></span>
<span style='background-color: #52575c'><span>1</span></span>
<span style='background-color: #94999e'><span>2</span></span>
<span style='background-color: #deeedc'><span>3</span></span>
<span style='background-color: #7b2d2f'><span>4</span></span>
<span style='background-color: #d04043'><span>5</span></span>
<span style='background-color: #cb8f21'><span>6</span></span>
<span style='background-color: #e6c439'><span>7</span></span>
<span style='background-color: #6c4b37'><span>8</span></span>
<span style='background-color: #8c6946'><span>9</span></span>
<span style='background-color: #538a6a'><span>10</span></span>
<span style='background-color: #63b465'><span>11</span></span>
<span style='background-color: #2c4267'><span>12</span></span>
<span style='background-color: #38668b'><span>13</span></span>
<span style='background-color: #775780'><span>14</span></span>
<span style='background-color: #f4a66c'><span>15</span></span>
<span style='background-color: #576e54'><span>16</span></span>
<span style='background-color: #82e8e8'><span>17</span></span>
<span style='background-color: #9d446a'><span>18</span></span>
<span style='background-color: #eb7272'><span>19</span></span>
</div>

#### Eggdealer6

```ruby
set_predefined_palette(:eggdealer6)
```

<div class='swatches'>
<span style='background-color: #47323b'><span>0</span></span>
<span style='background-color: #5c4657'><span>1</span></span>
<span style='background-color: #735a55'><span>2</span></span>
<span style='background-color: #b0764f'><span>3</span></span>
<span style='background-color: #baac81'><span>4</span></span>
<span style='background-color: #e9d79d'><span>5</span></span>
</div>

#### Endesga 32

```ruby
set_predefined_palette(:endesga_32)
```

<div class='swatches'>
<span style='background-color: #be4a2f'><span>0</span></span>
<span style='background-color: #d77643'><span>1</span></span>
<span style='background-color: #ead4aa'><span>2</span></span>
<span style='background-color: #e4a672'><span>3</span></span>
<span style='background-color: #b86f50'><span>4</span></span>
<span style='background-color: #733e39'><span>5</span></span>
<span style='background-color: #3e2731'><span>6</span></span>
<span style='background-color: #a22633'><span>7</span></span>
<span style='background-color: #e43b44'><span>8</span></span>
<span style='background-color: #f77622'><span>9</span></span>
<span style='background-color: #feae34'><span>10</span></span>
<span style='background-color: #fee761'><span>11</span></span>
<span style='background-color: #63c74d'><span>12</span></span>
<span style='background-color: #3e8948'><span>13</span></span>
<span style='background-color: #265c42'><span>14</span></span>
<span style='background-color: #193c3e'><span>15</span></span>
<span style='background-color: #124e89'><span>16</span></span>
<span style='background-color: #0099db'><span>17</span></span>
<span style='background-color: #2ce8f5'><span>18</span></span>
<span style='background-color: #ffffff'><span>19</span></span>
<span style='background-color: #c0cbdc'><span>20</span></span>
<span style='background-color: #8b9bb4'><span>21</span></span>
<span style='background-color: #5a6988'><span>22</span></span>
<span style='background-color: #3a4466'><span>23</span></span>
<span style='background-color: #262b44'><span>24</span></span>
<span style='background-color: #181425'><span>25</span></span>
<span style='background-color: #ff0044'><span>26</span></span>
<span style='background-color: #68386c'><span>27</span></span>
<span style='background-color: #b55088'><span>28</span></span>
<span style='background-color: #f6757a'><span>29</span></span>
<span style='background-color: #e8b796'><span>30</span></span>
<span style='background-color: #c28569'><span>31</span></span>
</div>

#### Endesga 64

```ruby
set_predefined_palette(:endesga_64)
```

<div class='swatches'>
<span style='background-color: #ff0040'><span>0</span></span>
<span style='background-color: #131313'><span>1</span></span>
<span style='background-color: #1b1b1b'><span>2</span></span>
<span style='background-color: #272727'><span>3</span></span>
<span style='background-color: #3d3d3d'><span>4</span></span>
<span style='background-color: #5d5d5d'><span>5</span></span>
<span style='background-color: #858585'><span>6</span></span>
<span style='background-color: #b4b4b4'><span>7</span></span>
<span style='background-color: #ffffff'><span>8</span></span>
<span style='background-color: #c7cfdd'><span>9</span></span>
<span style='background-color: #92a1b9'><span>10</span></span>
<span style='background-color: #657392'><span>11</span></span>
<span style='background-color: #424c6e'><span>12</span></span>
<span style='background-color: #2a2f4e'><span>13</span></span>
<span style='background-color: #1a1932'><span>14</span></span>
<span style='background-color: #0e071b'><span>15</span></span>
<span style='background-color: #1c121c'><span>16</span></span>
<span style='background-color: #391f21'><span>17</span></span>
<span style='background-color: #5d2c28'><span>18</span></span>
<span style='background-color: #8a4836'><span>19</span></span>
<span style='background-color: #bf6f4a'><span>20</span></span>
<span style='background-color: #e69c69'><span>21</span></span>
<span style='background-color: #f6ca9f'><span>22</span></span>
<span style='background-color: #f9e6cf'><span>23</span></span>
<span style='background-color: #edab50'><span>24</span></span>
<span style='background-color: #e07438'><span>25</span></span>
<span style='background-color: #c64524'><span>26</span></span>
<span style='background-color: #8e251d'><span>27</span></span>
<span style='background-color: #ff5000'><span>28</span></span>
<span style='background-color: #ed7614'><span>29</span></span>
<span style='background-color: #ffa214'><span>30</span></span>
<span style='background-color: #ffc825'><span>31</span></span>
<span style='background-color: #ffeb57'><span>32</span></span>
<span style='background-color: #d3fc7e'><span>33</span></span>
<span style='background-color: #99e65f'><span>34</span></span>
<span style='background-color: #5ac54f'><span>35</span></span>
<span style='background-color: #33984b'><span>36</span></span>
<span style='background-color: #1e6f50'><span>37</span></span>
<span style='background-color: #134c4c'><span>38</span></span>
<span style='background-color: #0c2e44'><span>39</span></span>
<span style='background-color: #00396d'><span>40</span></span>
<span style='background-color: #0069aa'><span>41</span></span>
<span style='background-color: #0098dc'><span>42</span></span>
<span style='background-color: #00cdf9'><span>43</span></span>
<span style='background-color: #0cf1ff'><span>44</span></span>
<span style='background-color: #94fdff'><span>45</span></span>
<span style='background-color: #fdd2ed'><span>46</span></span>
<span style='background-color: #f389f5'><span>47</span></span>
<span style='background-color: #db3ffd'><span>48</span></span>
<span style='background-color: #7a09fa'><span>49</span></span>
<span style='background-color: #3003d9'><span>50</span></span>
<span style='background-color: #0c0293'><span>51</span></span>
<span style='background-color: #03193f'><span>52</span></span>
<span style='background-color: #3b1443'><span>53</span></span>
<span style='background-color: #622461'><span>54</span></span>
<span style='background-color: #93388f'><span>55</span></span>
<span style='background-color: #ca52c9'><span>56</span></span>
<span style='background-color: #c85086'><span>57</span></span>
<span style='background-color: #f68187'><span>58</span></span>
<span style='background-color: #f5555d'><span>59</span></span>
<span style='background-color: #ea323c'><span>60</span></span>
<span style='background-color: #c42430'><span>61</span></span>
<span style='background-color: #891e2b'><span>62</span></span>
<span style='background-color: #571c27'><span>63</span></span>
</div>

#### Eroge copper

```ruby
set_predefined_palette(:eroge_copper)
```

<div class='swatches'>
<span style='background-color: #0d080d'><span>0</span></span>
<span style='background-color: #4f2b24'><span>1</span></span>
<span style='background-color: #825b31'><span>2</span></span>
<span style='background-color: #c59154'><span>3</span></span>
<span style='background-color: #f0bd77'><span>4</span></span>
<span style='background-color: #fbdf9b'><span>5</span></span>
<span style='background-color: #fff9e4'><span>6</span></span>
<span style='background-color: #bebbb2'><span>7</span></span>
<span style='background-color: #7bb24e'><span>8</span></span>
<span style='background-color: #74adbb'><span>9</span></span>
<span style='background-color: #4180a0'><span>10</span></span>
<span style='background-color: #32535f'><span>11</span></span>
<span style='background-color: #2a2349'><span>12</span></span>
<span style='background-color: #7d3840'><span>13</span></span>
<span style='background-color: #c16c5b'><span>14</span></span>
<span style='background-color: #e89973'><span>15</span></span>
</div>

#### Famicube

```ruby
set_predefined_palette(:famicube)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #e03c28'><span>1</span></span>
<span style='background-color: #ffffff'><span>2</span></span>
<span style='background-color: #d7d7d7'><span>3</span></span>
<span style='background-color: #a8a8a8'><span>4</span></span>
<span style='background-color: #7b7b7b'><span>5</span></span>
<span style='background-color: #343434'><span>6</span></span>
<span style='background-color: #151515'><span>7</span></span>
<span style='background-color: #0d2030'><span>8</span></span>
<span style='background-color: #415d66'><span>9</span></span>
<span style='background-color: #71a6a1'><span>10</span></span>
<span style='background-color: #bdffca'><span>11</span></span>
<span style='background-color: #25e2cd'><span>12</span></span>
<span style='background-color: #0a98ac'><span>13</span></span>
<span style='background-color: #005280'><span>14</span></span>
<span style='background-color: #00604b'><span>15</span></span>
<span style='background-color: #20b562'><span>16</span></span>
<span style='background-color: #58d332'><span>17</span></span>
<span style='background-color: #139d08'><span>18</span></span>
<span style='background-color: #004e00'><span>19</span></span>
<span style='background-color: #172808'><span>20</span></span>
<span style='background-color: #376d03'><span>21</span></span>
<span style='background-color: #6ab417'><span>22</span></span>
<span style='background-color: #8cd612'><span>23</span></span>
<span style='background-color: #beeb71'><span>24</span></span>
<span style='background-color: #eeffa9'><span>25</span></span>
<span style='background-color: #b6c121'><span>26</span></span>
<span style='background-color: #939717'><span>27</span></span>
<span style='background-color: #cc8f15'><span>28</span></span>
<span style='background-color: #ffbb31'><span>29</span></span>
<span style='background-color: #ffe737'><span>30</span></span>
<span style='background-color: #f68f37'><span>31</span></span>
<span style='background-color: #ad4e1a'><span>32</span></span>
<span style='background-color: #231712'><span>33</span></span>
<span style='background-color: #5c3c0d'><span>34</span></span>
<span style='background-color: #ae6c37'><span>35</span></span>
<span style='background-color: #c59782'><span>36</span></span>
<span style='background-color: #e2d7b5'><span>37</span></span>
<span style='background-color: #4f1507'><span>38</span></span>
<span style='background-color: #823c3d'><span>39</span></span>
<span style='background-color: #da655e'><span>40</span></span>
<span style='background-color: #e18289'><span>41</span></span>
<span style='background-color: #f5b784'><span>42</span></span>
<span style='background-color: #ffe9c5'><span>43</span></span>
<span style='background-color: #ff82ce'><span>44</span></span>
<span style='background-color: #cf3c71'><span>45</span></span>
<span style='background-color: #871646'><span>46</span></span>
<span style='background-color: #a328b3'><span>47</span></span>
<span style='background-color: #cc69e4'><span>48</span></span>
<span style='background-color: #d59cfc'><span>49</span></span>
<span style='background-color: #fec9ed'><span>50</span></span>
<span style='background-color: #e2c9ff'><span>51</span></span>
<span style='background-color: #a675fe'><span>52</span></span>
<span style='background-color: #6a31ca'><span>53</span></span>
<span style='background-color: #5a1991'><span>54</span></span>
<span style='background-color: #211640'><span>55</span></span>
<span style='background-color: #3d34a5'><span>56</span></span>
<span style='background-color: #6264dc'><span>57</span></span>
<span style='background-color: #9ba0ef'><span>58</span></span>
<span style='background-color: #98dcff'><span>59</span></span>
<span style='background-color: #5ba8ff'><span>60</span></span>
<span style='background-color: #0a89ff'><span>61</span></span>
<span style='background-color: #024aca'><span>62</span></span>
<span style='background-color: #00177d'><span>63</span></span>
</div>

#### Fantasy 24

```ruby
set_predefined_palette(:fantasy_24)
```

<div class='swatches'>
<span style='background-color: #1f240a'><span>0</span></span>
<span style='background-color: #39571c'><span>1</span></span>
<span style='background-color: #a58c27'><span>2</span></span>
<span style='background-color: #efac28'><span>3</span></span>
<span style='background-color: #efd8a1'><span>4</span></span>
<span style='background-color: #ab5c1c'><span>5</span></span>
<span style='background-color: #183f39'><span>6</span></span>
<span style='background-color: #ef692f'><span>7</span></span>
<span style='background-color: #efb775'><span>8</span></span>
<span style='background-color: #a56243'><span>9</span></span>
<span style='background-color: #773421'><span>10</span></span>
<span style='background-color: #724113'><span>11</span></span>
<span style='background-color: #2a1d0d'><span>12</span></span>
<span style='background-color: #392a1c'><span>13</span></span>
<span style='background-color: #684c3c'><span>14</span></span>
<span style='background-color: #927e6a'><span>15</span></span>
<span style='background-color: #276468'><span>16</span></span>
<span style='background-color: #ef3a0c'><span>17</span></span>
<span style='background-color: #45230d'><span>18</span></span>
<span style='background-color: #3c9f9c'><span>19</span></span>
<span style='background-color: #9b1a0a'><span>20</span></span>
<span style='background-color: #36170c'><span>21</span></span>
<span style='background-color: #550f0a'><span>22</span></span>
<span style='background-color: #300f0a'><span>23</span></span>
</div>

#### Faraway48

```ruby
set_predefined_palette(:faraway48)
```

<div class='swatches'>
<span style='background-color: #0d0709'><span>0</span></span>
<span style='background-color: #220915'><span>1</span></span>
<span style='background-color: #3d0518'><span>2</span></span>
<span style='background-color: #ad1818'><span>3</span></span>
<span style='background-color: #d94f0c'><span>4</span></span>
<span style='background-color: #ff980e'><span>5</span></span>
<span style='background-color: #fff959'><span>6</span></span>
<span style='background-color: #d6f668'><span>7</span></span>
<span style='background-color: #8ffa37'><span>8</span></span>
<span style='background-color: #169e26'><span>9</span></span>
<span style='background-color: #1c5d2a'><span>10</span></span>
<span style='background-color: #0d3822'><span>11</span></span>
<span style='background-color: #0d1d1f'><span>12</span></span>
<span style='background-color: #00191f'><span>13</span></span>
<span style='background-color: #003138'><span>14</span></span>
<span style='background-color: #006457'><span>15</span></span>
<span style='background-color: #008d6d'><span>16</span></span>
<span style='background-color: #08c49f'><span>17</span></span>
<span style='background-color: #59dfb0'><span>18</span></span>
<span style='background-color: #aae8ca'><span>19</span></span>
<span style='background-color: #45c5d9'><span>20</span></span>
<span style='background-color: #2595cf'><span>21</span></span>
<span style='background-color: #025999'><span>22</span></span>
<span style='background-color: #193a91'><span>23</span></span>
<span style='background-color: #101438'><span>24</span></span>
<span style='background-color: #090d19'><span>25</span></span>
<span style='background-color: #151538'><span>26</span></span>
<span style='background-color: #2e264d'><span>27</span></span>
<span style='background-color: #562e73'><span>28</span></span>
<span style='background-color: #a03a9e'><span>29</span></span>
<span style='background-color: #c8658f'><span>30</span></span>
<span style='background-color: #edafb9'><span>31</span></span>
<span style='background-color: #f7c8d9'><span>32</span></span>
<span style='background-color: #f7f3ce'><span>33</span></span>
<span style='background-color: #f1e4af'><span>34</span></span>
<span style='background-color: #e7cc93'><span>35</span></span>
<span style='background-color: #d19e71'><span>36</span></span>
<span style='background-color: #9e6d4f'><span>37</span></span>
<span style='background-color: #73322e'><span>38</span></span>
<span style='background-color: #4d2630'><span>39</span></span>
<span style='background-color: #241720'><span>40</span></span>
<span style='background-color: #1c1216'><span>41</span></span>
<span style='background-color: #101112'><span>42</span></span>
<span style='background-color: #202223'><span>43</span></span>
<span style='background-color: #586162'><span>44</span></span>
<span style='background-color: #a9b0b0'><span>45</span></span>
<span style='background-color: #d2d6d7'><span>46</span></span>
<span style='background-color: #f1f2f1'><span>47</span></span>
</div>

#### Fleja master palette

```ruby
set_predefined_palette(:fleja_master_palette)
```

<div class='swatches'>
<span style='background-color: #1f1833'><span>0</span></span>
<span style='background-color: #2b2e42'><span>1</span></span>
<span style='background-color: #414859'><span>2</span></span>
<span style='background-color: #68717a'><span>3</span></span>
<span style='background-color: #90a1a8'><span>4</span></span>
<span style='background-color: #b6cbcf'><span>5</span></span>
<span style='background-color: #ffffff'><span>6</span></span>
<span style='background-color: #fcbf8a'><span>7</span></span>
<span style='background-color: #b58057'><span>8</span></span>
<span style='background-color: #8a503e'><span>9</span></span>
<span style='background-color: #5c3a41'><span>10</span></span>
<span style='background-color: #c93038'><span>11</span></span>
<span style='background-color: #de6a38'><span>12</span></span>
<span style='background-color: #ffad3b'><span>13</span></span>
<span style='background-color: #ffe596'><span>14</span></span>
<span style='background-color: #fcf960'><span>15</span></span>
<span style='background-color: #b4d645'><span>16</span></span>
<span style='background-color: #51c43f'><span>17</span></span>
<span style='background-color: #309c63'><span>18</span></span>
<span style='background-color: #236d7a'><span>19</span></span>
<span style='background-color: #264f6e'><span>20</span></span>
<span style='background-color: #233663'><span>21</span></span>
<span style='background-color: #417291'><span>22</span></span>
<span style='background-color: #4c93ad'><span>23</span></span>
<span style='background-color: #63c2c9'><span>24</span></span>
<span style='background-color: #94d2d4'><span>25</span></span>
<span style='background-color: #b8fdff'><span>26</span></span>
<span style='background-color: #3c2940'><span>27</span></span>
<span style='background-color: #46275c'><span>28</span></span>
<span style='background-color: #826481'><span>29</span></span>
<span style='background-color: #f7a48b'><span>30</span></span>
<span style='background-color: #c27182'><span>31</span></span>
<span style='background-color: #852d66'><span>32</span></span>
</div>

#### Florentine24

```ruby
set_predefined_palette(:florentine24)
```

<div class='swatches'>
<span style='background-color: #175145'><span>0</span></span>
<span style='background-color: #2e8065'><span>1</span></span>
<span style='background-color: #51b341'><span>2</span></span>
<span style='background-color: #9bd547'><span>3</span></span>
<span style='background-color: #fff971'><span>4</span></span>
<span style='background-color: #ff7f4f'><span>5</span></span>
<span style='background-color: #ff4f4f'><span>6</span></span>
<span style='background-color: #ee3046'><span>7</span></span>
<span style='background-color: #df426e'><span>8</span></span>
<span style='background-color: #a62654'><span>9</span></span>
<span style='background-color: #621b52'><span>10</span></span>
<span style='background-color: #371848'><span>11</span></span>
<span style='background-color: #0c082a'><span>12</span></span>
<span style='background-color: #261152'><span>13</span></span>
<span style='background-color: #272573'><span>14</span></span>
<span style='background-color: #4876bb'><span>15</span></span>
<span style='background-color: #7fd3e6'><span>16</span></span>
<span style='background-color: #c7f7f2'><span>17</span></span>
<span style='background-color: #ffffff'><span>18</span></span>
<span style='background-color: #d29c8a'><span>19</span></span>
<span style='background-color: #9e4d4d'><span>20</span></span>
<span style='background-color: #712835'><span>21</span></span>
<span style='background-color: #5d1835'><span>22</span></span>
<span style='background-color: #35082a'><span>23</span></span>
</div>

#### Funny31

```ruby
set_predefined_palette(:funny31)
```

<div class='swatches'>
<span style='background-color: #180a24'><span>0</span></span>
<span style='background-color: #3b3542'><span>1</span></span>
<span style='background-color: #565466'><span>2</span></span>
<span style='background-color: #757785'><span>3</span></span>
<span style='background-color: #929ca3'><span>4</span></span>
<span style='background-color: #bdc4c9'><span>5</span></span>
<span style='background-color: #fff8f0'><span>6</span></span>
<span style='background-color: #ebd2a7'><span>7</span></span>
<span style='background-color: #e6ad87'><span>8</span></span>
<span style='background-color: #d97368'><span>9</span></span>
<span style='background-color: #c94556'><span>10</span></span>
<span style='background-color: #a12758'><span>11</span></span>
<span style='background-color: #701664'><span>12</span></span>
<span style='background-color: #94357b'><span>13</span></span>
<span style='background-color: #b05674'><span>14</span></span>
<span style='background-color: #c2808b'><span>15</span></span>
<span style='background-color: #d6a9a9'><span>16</span></span>
<span style='background-color: #b37254'><span>17</span></span>
<span style='background-color: #9e5542'><span>18</span></span>
<span style='background-color: #783838'><span>19</span></span>
<span style='background-color: #521e2f'><span>20</span></span>
<span style='background-color: #101657'><span>21</span></span>
<span style='background-color: #263973'><span>22</span></span>
<span style='background-color: #385382'><span>23</span></span>
<span style='background-color: #286c78'><span>24</span></span>
<span style='background-color: #4b798f'><span>25</span></span>
<span style='background-color: #649da1'><span>26</span></span>
<span style='background-color: #bbc499'><span>27</span></span>
<span style='background-color: #89a66d'><span>28</span></span>
<span style='background-color: #509950'><span>29</span></span>
<span style='background-color: #39825b'><span>30</span></span>
</div>

#### Galaxy flame

```ruby
set_predefined_palette(:galaxy_flame)
```

<div class='swatches'>
<span style='background-color: #699fad'><span>0</span></span>
<span style='background-color: #3a708e'><span>1</span></span>
<span style='background-color: #2b454f'><span>2</span></span>
<span style='background-color: #111215'><span>3</span></span>
<span style='background-color: #151d1a'><span>4</span></span>
<span style='background-color: #1d3230'><span>5</span></span>
<span style='background-color: #314e3f'><span>6</span></span>
<span style='background-color: #4f5d42'><span>7</span></span>
<span style='background-color: #9a9f87'><span>8</span></span>
<span style='background-color: #ede6cb'><span>9</span></span>
<span style='background-color: #f5d893'><span>10</span></span>
<span style='background-color: #e8b26f'><span>11</span></span>
<span style='background-color: #b6834c'><span>12</span></span>
<span style='background-color: #704d2b'><span>13</span></span>
<span style='background-color: #40231e'><span>14</span></span>
<span style='background-color: #151015'><span>15</span></span>
</div>

#### Gob 48

```ruby
set_predefined_palette(:gob_48)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #140f24'><span>1</span></span>
<span style='background-color: #221f3e'><span>2</span></span>
<span style='background-color: #34315b'><span>3</span></span>
<span style='background-color: #3b486d'><span>4</span></span>
<span style='background-color: #4c6589'><span>5</span></span>
<span style='background-color: #60839c'><span>6</span></span>
<span style='background-color: #7aa2b0'><span>7</span></span>
<span style='background-color: #9cbbc1'><span>8</span></span>
<span style='background-color: #c0dadc'><span>9</span></span>
<span style='background-color: #ffffff'><span>10</span></span>
<span style='background-color: #aaf8ff'><span>11</span></span>
<span style='background-color: #75d1e4'><span>12</span></span>
<span style='background-color: #5aa6bf'><span>13</span></span>
<span style='background-color: #5a8cb0'><span>14</span></span>
<span style='background-color: #483b6d'><span>15</span></span>
<span style='background-color: #66408d'><span>16</span></span>
<span style='background-color: #964fad'><span>17</span></span>
<span style='background-color: #c26cc9'><span>18</span></span>
<span style='background-color: #e089e0'><span>19</span></span>
<span style='background-color: #ffc3f0'><span>20</span></span>
<span style='background-color: #203040'><span>21</span></span>
<span style='background-color: #174646'><span>22</span></span>
<span style='background-color: #206437'><span>23</span></span>
<span style='background-color: #3a892a'><span>24</span></span>
<span style='background-color: #5bb031'><span>25</span></span>
<span style='background-color: #9bd32c'><span>26</span></span>
<span style='background-color: #cced27'><span>27</span></span>
<span style='background-color: #fff15e'><span>28</span></span>
<span style='background-color: #ffce3b'><span>29</span></span>
<span style='background-color: #e49b35'><span>30</span></span>
<span style='background-color: #cc702f'><span>31</span></span>
<span style='background-color: #b14926'><span>32</span></span>
<span style='background-color: #952008'><span>33</span></span>
<span style='background-color: #760811'><span>34</span></span>
<span style='background-color: #490a15'><span>35</span></span>
<span style='background-color: #2e040f'><span>36</span></span>
<span style='background-color: #a00c0c'><span>37</span></span>
<span style='background-color: #be3333'><span>38</span></span>
<span style='background-color: #d35858'><span>39</span></span>
<span style='background-color: #dd9393'><span>40</span></span>
<span style='background-color: #581d17'><span>41</span></span>
<span style='background-color: #72311b'><span>42</span></span>
<span style='background-color: #954f2c'><span>43</span></span>
<span style='background-color: #a76b3f'><span>44</span></span>
<span style='background-color: #c18c56'><span>45</span></span>
<span style='background-color: #dcab7a'><span>46</span></span>
<span style='background-color: #edd5a5'><span>47</span></span>
</div>

#### Gora63

```ruby
set_predefined_palette(:gora63)
```

<div class='swatches'>
<span style='background-color: #141b27'><span>0</span></span>
<span style='background-color: #1e2734'><span>1</span></span>
<span style='background-color: #2b3545'><span>2</span></span>
<span style='background-color: #3a4959'><span>3</span></span>
<span style='background-color: #506275'><span>4</span></span>
<span style='background-color: #6c8294'><span>5</span></span>
<span style='background-color: #859aa9'><span>6</span></span>
<span style='background-color: #b3c2ca'><span>7</span></span>
<span style='background-color: #dae1e5'><span>8</span></span>
<span style='background-color: #121532'><span>9</span></span>
<span style='background-color: #1b2343'><span>10</span></span>
<span style='background-color: #203457'><span>11</span></span>
<span style='background-color: #264a71'><span>12</span></span>
<span style='background-color: #2d5b85'><span>13</span></span>
<span style='background-color: #3483b0'><span>14</span></span>
<span style='background-color: #49b2d3'><span>15</span></span>
<span style='background-color: #82d8e9'><span>16</span></span>
<span style='background-color: #bdeef7'><span>17</span></span>
<span style='background-color: #142427'><span>18</span></span>
<span style='background-color: #1c3030'><span>19</span></span>
<span style='background-color: #224635'><span>20</span></span>
<span style='background-color: #286345'><span>21</span></span>
<span style='background-color: #2a7148'><span>22</span></span>
<span style='background-color: #2c9f4c'><span>23</span></span>
<span style='background-color: #68d150'><span>24</span></span>
<span style='background-color: #c5f57d'><span>25</span></span>
<span style='background-color: #e8fab6'><span>26</span></span>
<span style='background-color: #2b1424'><span>27</span></span>
<span style='background-color: #361b28'><span>28</span></span>
<span style='background-color: #4e2c32'><span>29</span></span>
<span style='background-color: #754442'><span>30</span></span>
<span style='background-color: #884e48'><span>31</span></span>
<span style='background-color: #9b614f'><span>32</span></span>
<span style='background-color: #bb885a'><span>33</span></span>
<span style='background-color: #dfbb89'><span>34</span></span>
<span style='background-color: #f0e0b8'><span>35</span></span>
<span style='background-color: #301723'><span>36</span></span>
<span style='background-color: #3d1f28'><span>37</span></span>
<span style='background-color: #4d282c'><span>38</span></span>
<span style='background-color: #6f3b31'><span>39</span></span>
<span style='background-color: #8e4e30'><span>40</span></span>
<span style='background-color: #b46a29'><span>41</span></span>
<span style='background-color: #e19f3e'><span>42</span></span>
<span style='background-color: #f0c069'><span>43</span></span>
<span style='background-color: #f7e198'><span>44</span></span>
<span style='background-color: #2c1329'><span>45</span></span>
<span style='background-color: #361630'><span>46</span></span>
<span style='background-color: #521e3a'><span>47</span></span>
<span style='background-color: #7b2536'><span>48</span></span>
<span style='background-color: #a8372d'><span>49</span></span>
<span style='background-color: #d85f28'><span>50</span></span>
<span style='background-color: #f08e39'><span>51</span></span>
<span style='background-color: #fbc85e'><span>52</span></span>
<span style='background-color: #fce886'><span>53</span></span>
<span style='background-color: #1c1729'><span>54</span></span>
<span style='background-color: #2a2135'><span>55</span></span>
<span style='background-color: #3e2a49'><span>56</span></span>
<span style='background-color: #65335f'><span>57</span></span>
<span style='background-color: #9d3a78'><span>58</span></span>
<span style='background-color: #c64782'><span>59</span></span>
<span style='background-color: #d86a9f'><span>60</span></span>
<span style='background-color: #e7a0b4'><span>61</span></span>
<span style='background-color: #f2cdce'><span>62</span></span>
</div>

#### Hept32

```ruby
set_predefined_palette(:hept32)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #180d2f'><span>1</span></span>
<span style='background-color: #353658'><span>2</span></span>
<span style='background-color: #686b72'><span>3</span></span>
<span style='background-color: #8b97b6'><span>4</span></span>
<span style='background-color: #c5cddb'><span>5</span></span>
<span style='background-color: #ffffff'><span>6</span></span>
<span style='background-color: #5ee9e9'><span>7</span></span>
<span style='background-color: #2890dc'><span>8</span></span>
<span style='background-color: #1831a7'><span>9</span></span>
<span style='background-color: #053239'><span>10</span></span>
<span style='background-color: #005f41'><span>11</span></span>
<span style='background-color: #08b23b'><span>12</span></span>
<span style='background-color: #47f641'><span>13</span></span>
<span style='background-color: #e8ff75'><span>14</span></span>
<span style='background-color: #fbbe82'><span>15</span></span>
<span style='background-color: #de9751'><span>16</span></span>
<span style='background-color: #b66831'><span>17</span></span>
<span style='background-color: #8a4926'><span>18</span></span>
<span style='background-color: #461c14'><span>19</span></span>
<span style='background-color: #1e090d'><span>20</span></span>
<span style='background-color: #720d0d'><span>21</span></span>
<span style='background-color: #813704'><span>22</span></span>
<span style='background-color: #da2424'><span>23</span></span>
<span style='background-color: #ef6e10'><span>24</span></span>
<span style='background-color: #ecab11'><span>25</span></span>
<span style='background-color: #ece910'><span>26</span></span>
<span style='background-color: #f78d8d'><span>27</span></span>
<span style='background-color: #f94e6d'><span>28</span></span>
<span style='background-color: #c12458'><span>29</span></span>
<span style='background-color: #841252'><span>30</span></span>
<span style='background-color: #3d083b'><span>31</span></span>
</div>

#### Hot sand 6

```ruby
set_predefined_palette(:hot_sand_6)
```

<div class='swatches'>
<span style='background-color: #3a0000'><span>0</span></span>
<span style='background-color: #590000'><span>1</span></span>
<span style='background-color: #7c0300'><span>2</span></span>
<span style='background-color: #c02b18'><span>3</span></span>
<span style='background-color: #e04217'><span>4</span></span>
<span style='background-color: #f26d1f'><span>5</span></span>
</div>

#### Ice cream gb

```ruby
set_predefined_palette(:ice_cream_gb)
```

<div class='swatches'>
<span style='background-color: #7c3f58'><span>0</span></span>
<span style='background-color: #eb6b6f'><span>1</span></span>
<span style='background-color: #f9a875'><span>2</span></span>
<span style='background-color: #fff6d3'><span>3</span></span>
</div>

#### Inkpink

```ruby
set_predefined_palette(:inkpink)
```

<div class='swatches'>
<span style='background-color: #ffffff'><span>0</span></span>
<span style='background-color: #fe6c90'><span>1</span></span>
<span style='background-color: #d03791'><span>2</span></span>
<span style='background-color: #87286a'><span>3</span></span>
<span style='background-color: #452459'><span>4</span></span>
<span style='background-color: #260d34'><span>5</span></span>
</div>

#### Journey

```ruby
set_predefined_palette(:journey)
```

<div class='swatches'>
<span style='background-color: #050914'><span>0</span></span>
<span style='background-color: #110524'><span>1</span></span>
<span style='background-color: #3b063a'><span>2</span></span>
<span style='background-color: #691749'><span>3</span></span>
<span style='background-color: #9c3247'><span>4</span></span>
<span style='background-color: #d46453'><span>5</span></span>
<span style='background-color: #f5a15d'><span>6</span></span>
<span style='background-color: #ffcf8e'><span>7</span></span>
<span style='background-color: #ff7a7d'><span>8</span></span>
<span style='background-color: #ff417d'><span>9</span></span>
<span style='background-color: #d61a88'><span>10</span></span>
<span style='background-color: #94007a'><span>11</span></span>
<span style='background-color: #42004e'><span>12</span></span>
<span style='background-color: #220029'><span>13</span></span>
<span style='background-color: #100726'><span>14</span></span>
<span style='background-color: #25082c'><span>15</span></span>
<span style='background-color: #3d1132'><span>16</span></span>
<span style='background-color: #73263d'><span>17</span></span>
<span style='background-color: #bd4035'><span>18</span></span>
<span style='background-color: #ed7b39'><span>19</span></span>
<span style='background-color: #ffb84a'><span>20</span></span>
<span style='background-color: #fff540'><span>21</span></span>
<span style='background-color: #c6d831'><span>22</span></span>
<span style='background-color: #77b02a'><span>23</span></span>
<span style='background-color: #429058'><span>24</span></span>
<span style='background-color: #2c645e'><span>25</span></span>
<span style='background-color: #153c4a'><span>26</span></span>
<span style='background-color: #052137'><span>27</span></span>
<span style='background-color: #0e0421'><span>28</span></span>
<span style='background-color: #0c0b42'><span>29</span></span>
<span style='background-color: #032769'><span>30</span></span>
<span style='background-color: #144491'><span>31</span></span>
<span style='background-color: #488bd4'><span>32</span></span>
<span style='background-color: #78d7ff'><span>33</span></span>
<span style='background-color: #b0fff1'><span>34</span></span>
<span style='background-color: #faffff'><span>35</span></span>
<span style='background-color: #c7d4e1'><span>36</span></span>
<span style='background-color: #928fb8'><span>37</span></span>
<span style='background-color: #5b537d'><span>38</span></span>
<span style='background-color: #392946'><span>39</span></span>
<span style='background-color: #24142c'><span>40</span></span>
<span style='background-color: #0e0f2c'><span>41</span></span>
<span style='background-color: #132243'><span>42</span></span>
<span style='background-color: #1a466b'><span>43</span></span>
<span style='background-color: #10908e'><span>44</span></span>
<span style='background-color: #28c074'><span>45</span></span>
<span style='background-color: #3dff6e'><span>46</span></span>
<span style='background-color: #f8ffb8'><span>47</span></span>
<span style='background-color: #f0c297'><span>48</span></span>
<span style='background-color: #cf968c'><span>49</span></span>
<span style='background-color: #8f5765'><span>50</span></span>
<span style='background-color: #52294b'><span>51</span></span>
<span style='background-color: #0f022e'><span>52</span></span>
<span style='background-color: #35003b'><span>53</span></span>
<span style='background-color: #64004c'><span>54</span></span>
<span style='background-color: #9b0e3e'><span>55</span></span>
<span style='background-color: #d41e3c'><span>56</span></span>
<span style='background-color: #ed4c40'><span>57</span></span>
<span style='background-color: #ff9757'><span>58</span></span>
<span style='background-color: #d4662f'><span>59</span></span>
<span style='background-color: #9c341a'><span>60</span></span>
<span style='background-color: #691b22'><span>61</span></span>
<span style='background-color: #450c28'><span>62</span></span>
<span style='background-color: #2d002e'><span>63</span></span>
</div>

#### Juice56

```ruby
set_predefined_palette(:juice56)
```

<div class='swatches'>
<span style='background-color: #000005'><span>0</span></span>
<span style='background-color: #ffffff'><span>1</span></span>
<span style='background-color: #c8e1eb'><span>2</span></span>
<span style='background-color: #a5becd'><span>3</span></span>
<span style='background-color: #7891a5'><span>4</span></span>
<span style='background-color: #55647d'><span>5</span></span>
<span style='background-color: #37415a'><span>6</span></span>
<span style='background-color: #191e3c'><span>7</span></span>
<span style='background-color: #14465a'><span>8</span></span>
<span style='background-color: #0f7373'><span>9</span></span>
<span style='background-color: #0fa569'><span>10</span></span>
<span style='background-color: #41cd73'><span>11</span></span>
<span style='background-color: #73ff73'><span>12</span></span>
<span style='background-color: #dc9b78'><span>13</span></span>
<span style='background-color: #b26247'><span>14</span></span>
<span style='background-color: #8c3c32'><span>15</span></span>
<span style='background-color: #5a1423'><span>16</span></span>
<span style='background-color: #370a14'><span>17</span></span>
<span style='background-color: #ffd2a5'><span>18</span></span>
<span style='background-color: #f5a56e'><span>19</span></span>
<span style='background-color: #e66e46'><span>20</span></span>
<span style='background-color: #c3412d'><span>21</span></span>
<span style='background-color: #8c2323'><span>22</span></span>
<span style='background-color: #410041'><span>23</span></span>
<span style='background-color: #7d0041'><span>24</span></span>
<span style='background-color: #aa143c'><span>25</span></span>
<span style='background-color: #d72d2d'><span>26</span></span>
<span style='background-color: #f06923'><span>27</span></span>
<span style='background-color: #ffaa32'><span>28</span></span>
<span style='background-color: #ffe65a'><span>29</span></span>
<span style='background-color: #bed72d'><span>30</span></span>
<span style='background-color: #64a51e'><span>31</span></span>
<span style='background-color: #237d14'><span>32</span></span>
<span style='background-color: #0f5519'><span>33</span></span>
<span style='background-color: #0f3223'><span>34</span></span>
<span style='background-color: #82ffe1'><span>35</span></span>
<span style='background-color: #41d7d7'><span>36</span></span>
<span style='background-color: #14a0cd'><span>37</span></span>
<span style='background-color: #1469c3'><span>38</span></span>
<span style='background-color: #0f379b'><span>39</span></span>
<span style='background-color: #0f0f69'><span>40</span></span>
<span style='background-color: #3c1e8c'><span>41</span></span>
<span style='background-color: #642db4'><span>42</span></span>
<span style='background-color: #a041d7'><span>43</span></span>
<span style='background-color: #e65ae6'><span>44</span></span>
<span style='background-color: #ff8cc8'><span>45</span></span>
<span style='background-color: #4b143c'><span>46</span></span>
<span style='background-color: #820a64'><span>47</span></span>
<span style='background-color: #b4236e'><span>48</span></span>
<span style='background-color: #e65078'><span>49</span></span>
<span style='background-color: #ff8c8c'><span>50</span></span>
<span style='background-color: #ffcdb4'><span>51</span></span>
<span style='background-color: #e69b96'><span>52</span></span>
<span style='background-color: #be6973'><span>53</span></span>
<span style='background-color: #96465f'><span>54</span></span>
<span style='background-color: #6e2850'><span>55</span></span>
</div>

#### Kawaii16

```ruby
set_predefined_palette(:kawaii16)
```

<div class='swatches'>
<span style='background-color: #65471e'><span>0</span></span>
<span style='background-color: #b57075'><span>1</span></span>
<span style='background-color: #dcab80'><span>2</span></span>
<span style='background-color: #f8d8ab'><span>3</span></span>
<span style='background-color: #b8aaaa'><span>4</span></span>
<span style='background-color: #fff5f5'><span>5</span></span>
<span style='background-color: #fca5c2'><span>6</span></span>
<span style='background-color: #ec4646'><span>7</span></span>
<span style='background-color: #ffa322'><span>8</span></span>
<span style='background-color: #f9fa93'><span>9</span></span>
<span style='background-color: #7bc188'><span>10</span></span>
<span style='background-color: #8ed3f8'><span>11</span></span>
<span style='background-color: #5989a3'><span>12</span></span>
<span style='background-color: #d793fa'><span>13</span></span>
<span style='background-color: #74518e'><span>14</span></span>
<span style='background-color: #1d173c'><span>15</span></span>
</div>

#### Koni32

```ruby
set_predefined_palette(:koni32)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #0b0a0d'><span>1</span></span>
<span style='background-color: #161524'><span>2</span></span>
<span style='background-color: #222640'><span>3</span></span>
<span style='background-color: #2b4057'><span>4</span></span>
<span style='background-color: #306566'><span>5</span></span>
<span style='background-color: #34a870'><span>6</span></span>
<span style='background-color: #49f25a'><span>7</span></span>
<span style='background-color: #a4ff63'><span>8</span></span>
<span style='background-color: #fff240'><span>9</span></span>
<span style='background-color: #f2a53f'><span>10</span></span>
<span style='background-color: #cc7a47'><span>11</span></span>
<span style='background-color: #f54025'><span>12</span></span>
<span style='background-color: #a63a3a'><span>13</span></span>
<span style='background-color: #995348'><span>14</span></span>
<span style='background-color: #733758'><span>15</span></span>
<span style='background-color: #4d2a49'><span>16</span></span>
<span style='background-color: #46346a'><span>17</span></span>
<span style='background-color: #8c2eb8'><span>18</span></span>
<span style='background-color: #f261da'><span>19</span></span>
<span style='background-color: #ffa8d4'><span>20</span></span>
<span style='background-color: #b3dfff'><span>21</span></span>
<span style='background-color: #70a5fa'><span>22</span></span>
<span style='background-color: #407cff'><span>23</span></span>
<span style='background-color: #1f50cc'><span>24</span></span>
<span style='background-color: #213ea6'><span>25</span></span>
<span style='background-color: #272f66'><span>26</span></span>
<span style='background-color: #414558'><span>27</span></span>
<span style='background-color: #6d7078'><span>28</span></span>
<span style='background-color: #898b8c'><span>29</span></span>
<span style='background-color: #bbbdbf'><span>30</span></span>
<span style='background-color: #ffffff'><span>31</span></span>
</div>

#### Linear color palette basic

```ruby
set_predefined_palette(:linear_color_palette_basic)
```

<div class='swatches'>
<span style='background-color: #0e0c0c'><span>0</span></span>
<span style='background-color: #5f2d56'><span>1</span></span>
<span style='background-color: #993970'><span>2</span></span>
<span style='background-color: #dc4a7b'><span>3</span></span>
<span style='background-color: #f78697'><span>4</span></span>
<span style='background-color: #9f294e'><span>5</span></span>
<span style='background-color: #62232f'><span>6</span></span>
<span style='background-color: #8f4029'><span>7</span></span>
<span style='background-color: #c56025'><span>8</span></span>
<span style='background-color: #ee8e2e'><span>9</span></span>
<span style='background-color: #fccba3'><span>10</span></span>
<span style='background-color: #da4e38'><span>11</span></span>
<span style='background-color: #facb3e'><span>12</span></span>
<span style='background-color: #97da3f'><span>13</span></span>
<span style='background-color: #4ba747'><span>14</span></span>
<span style='background-color: #3d734f'><span>15</span></span>
<span style='background-color: #314152'><span>16</span></span>
<span style='background-color: #417089'><span>17</span></span>
<span style='background-color: #49a790'><span>18</span></span>
<span style='background-color: #72d6ce'><span>19</span></span>
<span style='background-color: #5698cc'><span>20</span></span>
<span style='background-color: #5956bd'><span>21</span></span>
<span style='background-color: #473579'><span>22</span></span>
<span style='background-color: #8156aa'><span>23</span></span>
<span style='background-color: #c278d0'><span>24</span></span>
<span style='background-color: #f0b3dd'><span>25</span></span>
<span style='background-color: #fdf7ed'><span>26</span></span>
<span style='background-color: #d3bfa9'><span>27</span></span>
<span style='background-color: #aa8d7a'><span>28</span></span>
<span style='background-color: #775c55'><span>29</span></span>
<span style='background-color: #483b3a'><span>30</span></span>
</div>

#### Lospec500

```ruby
set_predefined_palette(:lospec500)
```

<div class='swatches'>
<span style='background-color: #10121c'><span>0</span></span>
<span style='background-color: #2c1e31'><span>1</span></span>
<span style='background-color: #6b2643'><span>2</span></span>
<span style='background-color: #ac2847'><span>3</span></span>
<span style='background-color: #ec273f'><span>4</span></span>
<span style='background-color: #94493a'><span>5</span></span>
<span style='background-color: #de5d3a'><span>6</span></span>
<span style='background-color: #e98537'><span>7</span></span>
<span style='background-color: #f3a833'><span>8</span></span>
<span style='background-color: #4d3533'><span>9</span></span>
<span style='background-color: #6e4c30'><span>10</span></span>
<span style='background-color: #a26d3f'><span>11</span></span>
<span style='background-color: #ce9248'><span>12</span></span>
<span style='background-color: #dab163'><span>13</span></span>
<span style='background-color: #e8d282'><span>14</span></span>
<span style='background-color: #f7f3b7'><span>15</span></span>
<span style='background-color: #1e4044'><span>16</span></span>
<span style='background-color: #006554'><span>17</span></span>
<span style='background-color: #26854c'><span>18</span></span>
<span style='background-color: #5ab552'><span>19</span></span>
<span style='background-color: #9de64e'><span>20</span></span>
<span style='background-color: #008b8b'><span>21</span></span>
<span style='background-color: #62a477'><span>22</span></span>
<span style='background-color: #a6cb96'><span>23</span></span>
<span style='background-color: #d3eed3'><span>24</span></span>
<span style='background-color: #3e3b65'><span>25</span></span>
<span style='background-color: #3859b3'><span>26</span></span>
<span style='background-color: #3388de'><span>27</span></span>
<span style='background-color: #36c5f4'><span>28</span></span>
<span style='background-color: #6dead6'><span>29</span></span>
<span style='background-color: #5e5b8c'><span>30</span></span>
<span style='background-color: #8c78a5'><span>31</span></span>
<span style='background-color: #b0a7b8'><span>32</span></span>
<span style='background-color: #deceed'><span>33</span></span>
<span style='background-color: #9a4d76'><span>34</span></span>
<span style='background-color: #c878af'><span>35</span></span>
<span style='background-color: #cc99ff'><span>36</span></span>
<span style='background-color: #fa6e79'><span>37</span></span>
<span style='background-color: #ffa2ac'><span>38</span></span>
<span style='background-color: #ffd1d5'><span>39</span></span>
<span style='background-color: #f6e8e0'><span>40</span></span>
<span style='background-color: #ffffff'><span>41</span></span>
</div>

#### Lost century

```ruby
set_predefined_palette(:lost_century)
```

<div class='swatches'>
<span style='background-color: #d1b187'><span>0</span></span>
<span style='background-color: #c77b58'><span>1</span></span>
<span style='background-color: #ae5d40'><span>2</span></span>
<span style='background-color: #79444a'><span>3</span></span>
<span style='background-color: #4b3d44'><span>4</span></span>
<span style='background-color: #ba9158'><span>5</span></span>
<span style='background-color: #927441'><span>6</span></span>
<span style='background-color: #4d4539'><span>7</span></span>
<span style='background-color: #77743b'><span>8</span></span>
<span style='background-color: #b3a555'><span>9</span></span>
<span style='background-color: #d2c9a5'><span>10</span></span>
<span style='background-color: #8caba1'><span>11</span></span>
<span style='background-color: #4b726e'><span>12</span></span>
<span style='background-color: #574852'><span>13</span></span>
<span style='background-color: #847875'><span>14</span></span>
<span style='background-color: #ab9b8e'><span>15</span></span>
</div>

#### Lux2k

```ruby
set_predefined_palette(:lux2k)
```

<div class='swatches'>
<span style='background-color: #25131a'><span>0</span></span>
<span style='background-color: #3d253b'><span>1</span></span>
<span style='background-color: #523b40'><span>2</span></span>
<span style='background-color: #1f3736'><span>3</span></span>
<span style='background-color: #2a5a39'><span>4</span></span>
<span style='background-color: #427f3b'><span>5</span></span>
<span style='background-color: #80a53f'><span>6</span></span>
<span style='background-color: #bbc44e'><span>7</span></span>
<span style='background-color: #96c641'><span>8</span></span>
<span style='background-color: #ccf61f'><span>9</span></span>
<span style='background-color: #8a961f'><span>10</span></span>
<span style='background-color: #5c6b53'><span>11</span></span>
<span style='background-color: #895a45'><span>12</span></span>
<span style='background-color: #d1851e'><span>13</span></span>
<span style='background-color: #ffd569'><span>14</span></span>
<span style='background-color: #bf704d'><span>15</span></span>
<span style='background-color: #e1a171'><span>16</span></span>
<span style='background-color: #e6deca'><span>17</span></span>
<span style='background-color: #9b4c51'><span>18</span></span>
<span style='background-color: #802954'><span>19</span></span>
<span style='background-color: #d01946'><span>20</span></span>
<span style='background-color: #e84444'><span>21</span></span>
<span style='background-color: #40369f'><span>22</span></span>
<span style='background-color: #7144ff'><span>23</span></span>
<span style='background-color: #af69bf'><span>24</span></span>
<span style='background-color: #eaa5ff'><span>25</span></span>
<span style='background-color: #5880cc'><span>26</span></span>
<span style='background-color: #62abd4'><span>27</span></span>
<span style='background-color: #9bf0fd'><span>28</span></span>
<span style='background-color: #cae6f5'><span>29</span></span>
<span style='background-color: #ffffff'><span>30</span></span>
<span style='background-color: #a7acba'><span>31</span></span>
<span style='background-color: #606060'><span>32</span></span>
<span style='background-color: #56587b'><span>33</span></span>
<span style='background-color: #9a8571'><span>34</span></span>
<span style='background-color: #dfbbb3'><span>35</span></span>
</div>

#### Lux3k

```ruby
set_predefined_palette(:lux3k)
```

<div class='swatches'>
<span style='background-color: #ce3b26'><span>0</span></span>
<span style='background-color: #f7872a'><span>1</span></span>
<span style='background-color: #fcd56b'><span>2</span></span>
<span style='background-color: #e7952e'><span>3</span></span>
<span style='background-color: #f9b857'><span>4</span></span>
<span style='background-color: #f0c209'><span>5</span></span>
<span style='background-color: #b16e45'><span>6</span></span>
<span style='background-color: #f4b27a'><span>7</span></span>
<span style='background-color: #f0d89d'><span>8</span></span>
<span style='background-color: #f9f5d2'><span>9</span></span>
<span style='background-color: #8f4349'><span>10</span></span>
<span style='background-color: #ffa686'><span>11</span></span>
<span style='background-color: #fdceab'><span>12</span></span>
<span style='background-color: #5cac48'><span>13</span></span>
<span style='background-color: #8cce6c'><span>14</span></span>
<span style='background-color: #c1ec48'><span>15</span></span>
<span style='background-color: #060329'><span>16</span></span>
<span style='background-color: #1c2833'><span>17</span></span>
<span style='background-color: #145041'><span>18</span></span>
<span style='background-color: #231618'><span>19</span></span>
<span style='background-color: #521e23'><span>20</span></span>
<span style='background-color: #832121'><span>21</span></span>
<span style='background-color: #ff804a'><span>22</span></span>
<span style='background-color: #e16169'><span>23</span></span>
<span style='background-color: #ee8095'><span>24</span></span>
<span style='background-color: #7b3781'><span>25</span></span>
<span style='background-color: #b64d75'><span>26</span></span>
<span style='background-color: #a07385'><span>27</span></span>
<span style='background-color: #44050b'><span>28</span></span>
<span style='background-color: #6d2a41'><span>29</span></span>
<span style='background-color: #962c52'><span>30</span></span>
<span style='background-color: #e53366'><span>31</span></span>
<span style='background-color: #6e5657'><span>32</span></span>
<span style='background-color: #a7acba'><span>33</span></span>
<span style='background-color: #accdec'><span>34</span></span>
<span style='background-color: #1c5c83'><span>35</span></span>
<span style='background-color: #2ba8b5'><span>36</span></span>
<span style='background-color: #46dccd'><span>37</span></span>
</div>

#### Midnight ablaze

```ruby
set_predefined_palette(:midnight_ablaze)
```

<div class='swatches'>
<span style='background-color: #ff8274'><span>0</span></span>
<span style='background-color: #d53c6a'><span>1</span></span>
<span style='background-color: #7c183c'><span>2</span></span>
<span style='background-color: #460e2b'><span>3</span></span>
<span style='background-color: #31051e'><span>4</span></span>
<span style='background-color: #1f0510'><span>5</span></span>
<span style='background-color: #130208'><span>6</span></span>
</div>

#### Mojave20

```ruby
set_predefined_palette(:mojave20)
```

<div class='swatches'>
<span style='background-color: #dcd1b8'><span>0</span></span>
<span style='background-color: #c8b496'><span>1</span></span>
<span style='background-color: #aeb0b2'><span>2</span></span>
<span style='background-color: #9196a0'><span>3</span></span>
<span style='background-color: #60606a'><span>4</span></span>
<span style='background-color: #403f4a'><span>5</span></span>
<span style='background-color: #38353e'><span>6</span></span>
<span style='background-color: #4b444c'><span>7</span></span>
<span style='background-color: #79625d'><span>8</span></span>
<span style='background-color: #9e8676'><span>9</span></span>
<span style='background-color: #be9668'><span>10</span></span>
<span style='background-color: #a46848'><span>11</span></span>
<span style='background-color: #715a3b'><span>12</span></span>
<span style='background-color: #453e2a'><span>13</span></span>
<span style='background-color: #3f2926'><span>14</span></span>
<span style='background-color: #2e1515'><span>15</span></span>
<span style='background-color: #17090c'><span>16</span></span>
<span style='background-color: #541e13'><span>17</span></span>
<span style='background-color: #d03c32'><span>18</span></span>
<span style='background-color: #fba64c'><span>19</span></span>
</div>

#### Mort vs zughy

```ruby
set_predefined_palette(:mort_vs_zughy)
```

<div class='swatches'>
<span style='background-color: #f8f8f8'><span>0</span></span>
<span style='background-color: #bcb7c5'><span>1</span></span>
<span style='background-color: #8d87a2'><span>2</span></span>
<span style='background-color: #50576b'><span>3</span></span>
<span style='background-color: #2e3740'><span>4</span></span>
<span style='background-color: #101e29'><span>5</span></span>
<span style='background-color: #302c2e'><span>6</span></span>
<span style='background-color: #5a5353'><span>7</span></span>
<span style='background-color: #7d7071'><span>8</span></span>
<span style='background-color: #a0938e'><span>9</span></span>
<span style='background-color: #cfc6b8'><span>10</span></span>
<span style='background-color: #f4cca1'><span>11</span></span>
<span style='background-color: #eea160'><span>12</span></span>
<span style='background-color: #bf7958'><span>13</span></span>
<span style='background-color: #a05b53'><span>14</span></span>
<span style='background-color: #7a444a'><span>15</span></span>
<span style='background-color: #5e3643'><span>16</span></span>
<span style='background-color: #472d3c'><span>17</span></span>
<span style='background-color: #39314b'><span>18</span></span>
<span style='background-color: #64468d'><span>19</span></span>
<span style='background-color: #8e478c'><span>20</span></span>
<span style='background-color: #ae57a4'><span>21</span></span>
<span style='background-color: #ea71bd'><span>22</span></span>
<span style='background-color: #ffaeb6'><span>23</span></span>
<span style='background-color: #ff8b9c'><span>24</span></span>
<span style='background-color: #e1534a'><span>25</span></span>
<span style='background-color: #a93b3b'><span>26</span></span>
<span style='background-color: #f47e1b'><span>27</span></span>
<span style='background-color: #f4b41b'><span>28</span></span>
<span style='background-color: #ffce00'><span>29</span></span>
<span style='background-color: #fbfcaa'><span>30</span></span>
<span style='background-color: #b6d53c'><span>31</span></span>
<span style='background-color: #71aa34'><span>32</span></span>
<span style='background-color: #3f7e00'><span>33</span></span>
<span style='background-color: #005f1b'><span>34</span></span>
<span style='background-color: #00635c'><span>35</span></span>
<span style='background-color: #00a383'><span>36</span></span>
<span style='background-color: #3fc778'><span>37</span></span>
<span style='background-color: #a1ef79'><span>38</span></span>
<span style='background-color: #dff6f5'><span>39</span></span>
<span style='background-color: #92f4ff'><span>40</span></span>
<span style='background-color: #42cafd'><span>41</span></span>
<span style='background-color: #3978a8'><span>42</span></span>
<span style='background-color: #243f72'><span>43</span></span>
<span style='background-color: #564064'><span>44</span></span>
<span style='background-color: #827094'><span>45</span></span>
<span style='background-color: #4f546b'><span>46</span></span>
</div>

#### Mulfok32

```ruby
set_predefined_palette(:mulfok32)
```

<div class='swatches'>
<span style='background-color: #5ba675'><span>0</span></span>
<span style='background-color: #6bc96c'><span>1</span></span>
<span style='background-color: #abdd64'><span>2</span></span>
<span style='background-color: #fcef8d'><span>3</span></span>
<span style='background-color: #ffb879'><span>4</span></span>
<span style='background-color: #ea6262'><span>5</span></span>
<span style='background-color: #cc425e'><span>6</span></span>
<span style='background-color: #a32858'><span>7</span></span>
<span style='background-color: #751756'><span>8</span></span>
<span style='background-color: #390947'><span>9</span></span>
<span style='background-color: #611851'><span>10</span></span>
<span style='background-color: #873555'><span>11</span></span>
<span style='background-color: #a6555f'><span>12</span></span>
<span style='background-color: #c97373'><span>13</span></span>
<span style='background-color: #f2ae99'><span>14</span></span>
<span style='background-color: #ffc3f2'><span>15</span></span>
<span style='background-color: #ee8fcb'><span>16</span></span>
<span style='background-color: #d46eb3'><span>17</span></span>
<span style='background-color: #873e84'><span>18</span></span>
<span style='background-color: #1f102a'><span>19</span></span>
<span style='background-color: #4a3052'><span>20</span></span>
<span style='background-color: #7b5480'><span>21</span></span>
<span style='background-color: #a6859f'><span>22</span></span>
<span style='background-color: #d9bdc8'><span>23</span></span>
<span style='background-color: #ffffff'><span>24</span></span>
<span style='background-color: #aee2ff'><span>25</span></span>
<span style='background-color: #8db7ff'><span>26</span></span>
<span style='background-color: #6d80fa'><span>27</span></span>
<span style='background-color: #8465ec'><span>28</span></span>
<span style='background-color: #834dc4'><span>29</span></span>
<span style='background-color: #7d2da0'><span>30</span></span>
<span style='background-color: #4e187c'><span>31</span></span>
</div>

#### Na16

```ruby
set_predefined_palette(:na16)
```

<div class='swatches'>
<span style='background-color: #8c8fae'><span>0</span></span>
<span style='background-color: #584563'><span>1</span></span>
<span style='background-color: #3e2137'><span>2</span></span>
<span style='background-color: #9a6348'><span>3</span></span>
<span style='background-color: #d79b7d'><span>4</span></span>
<span style='background-color: #f5edba'><span>5</span></span>
<span style='background-color: #c0c741'><span>6</span></span>
<span style='background-color: #647d34'><span>7</span></span>
<span style='background-color: #e4943a'><span>8</span></span>
<span style='background-color: #9d303b'><span>9</span></span>
<span style='background-color: #d26471'><span>10</span></span>
<span style='background-color: #70377f'><span>11</span></span>
<span style='background-color: #7ec4c1'><span>12</span></span>
<span style='background-color: #34859d'><span>13</span></span>
<span style='background-color: #17434b'><span>14</span></span>
<span style='background-color: #1f0e1c'><span>15</span></span>
</div>

#### Nanner 16

```ruby
set_predefined_palette(:nanner_16)
```

<div class='swatches'>
<span style='background-color: #7acccc'><span>0</span></span>
<span style='background-color: #627db3'><span>1</span></span>
<span style='background-color: #554080'><span>2</span></span>
<span style='background-color: #592858'><span>3</span></span>
<span style='background-color: #804055'><span>4</span></span>
<span style='background-color: #b37d62'><span>5</span></span>
<span style='background-color: #ccc97a'><span>6</span></span>
<span style='background-color: #70b362'><span>7</span></span>
<span style='background-color: #40806a'><span>8</span></span>
<span style='background-color: #274457'><span>9</span></span>
<span style='background-color: #cccccc'><span>10</span></span>
<span style='background-color: #999491'><span>11</span></span>
<span style='background-color: #665c5f'><span>12</span></span>
<span style='background-color: #332b33'><span>13</span></span>
<span style='background-color: #804e46'><span>14</span></span>
<span style='background-color: #4d2a2a'><span>15</span></span>
</div>

#### Nanner pancakes

```ruby
set_predefined_palette(:nanner_pancakes)
```

<div class='swatches'>
<span style='background-color: #a0ddd3'><span>0</span></span>
<span style='background-color: #6fb0b7'><span>1</span></span>
<span style='background-color: #577f9d'><span>2</span></span>
<span style='background-color: #4a5786'><span>3</span></span>
<span style='background-color: #3e3b66'><span>4</span></span>
<span style='background-color: #392945'><span>5</span></span>
<span style='background-color: #2d1e2f'><span>6</span></span>
<span style='background-color: #452e3f'><span>7</span></span>
<span style='background-color: #5d4550'><span>8</span></span>
<span style='background-color: #7b6268'><span>9</span></span>
<span style='background-color: #9c807e'><span>10</span></span>
<span style='background-color: #c3a79c'><span>11</span></span>
<span style='background-color: #dbc9b4'><span>12</span></span>
<span style='background-color: #fcecd1'><span>13</span></span>
<span style='background-color: #aad795'><span>14</span></span>
<span style='background-color: #64b082'><span>15</span></span>
<span style='background-color: #488885'><span>16</span></span>
<span style='background-color: #3f5b74'><span>17</span></span>
<span style='background-color: #ebc8a7'><span>18</span></span>
<span style='background-color: #d3a084'><span>19</span></span>
<span style='background-color: #b87e6c'><span>20</span></span>
<span style='background-color: #8f5252'><span>21</span></span>
<span style='background-color: #6a3948'><span>22</span></span>
<span style='background-color: #c57f79'><span>23</span></span>
<span style='background-color: #ab597d'><span>24</span></span>
<span style='background-color: #7c3d64'><span>25</span></span>
<span style='background-color: #4e2b45'><span>26</span></span>
<span style='background-color: #7a3b4f'><span>27</span></span>
<span style='background-color: #a94b54'><span>28</span></span>
<span style='background-color: #d8725e'><span>29</span></span>
<span style='background-color: #f09f71'><span>30</span></span>
<span style='background-color: #f7cf91'><span>31</span></span>
</div>

#### Nes advanced

```ruby
set_predefined_palette(:nes_advanced)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #26232f'><span>1</span></span>
<span style='background-color: #314047'><span>2</span></span>
<span style='background-color: #596d62'><span>3</span></span>
<span style='background-color: #929c74'><span>4</span></span>
<span style='background-color: #c8c5a3'><span>5</span></span>
<span style='background-color: #fcfcfc'><span>6</span></span>
<span style='background-color: #1b377f'><span>7</span></span>
<span style='background-color: #147abf'><span>8</span></span>
<span style='background-color: #40afdd'><span>9</span></span>
<span style='background-color: #b2dbf4'><span>10</span></span>
<span style='background-color: #181667'><span>11</span></span>
<span style='background-color: #3b2c96'><span>12</span></span>
<span style='background-color: #706ae1'><span>13</span></span>
<span style='background-color: #8f95ee'><span>14</span></span>
<span style='background-color: #440a41'><span>15</span></span>
<span style='background-color: #812593'><span>16</span></span>
<span style='background-color: #cc4bb9'><span>17</span></span>
<span style='background-color: #ec99db'><span>18</span></span>
<span style='background-color: #3f0011'><span>19</span></span>
<span style='background-color: #b31c35'><span>20</span></span>
<span style='background-color: #ef2064'><span>21</span></span>
<span style='background-color: #f26282'><span>22</span></span>
<span style='background-color: #960811'><span>23</span></span>
<span style='background-color: #e81813'><span>24</span></span>
<span style='background-color: #a75d69'><span>25</span></span>
<span style='background-color: #ec9ea4'><span>26</span></span>
<span style='background-color: #560d04'><span>27</span></span>
<span style='background-color: #c43611'><span>28</span></span>
<span style='background-color: #e26a12'><span>29</span></span>
<span style='background-color: #f0af66'><span>30</span></span>
<span style='background-color: #2a1a14'><span>31</span></span>
<span style='background-color: #5d342a'><span>32</span></span>
<span style='background-color: #a66e46'><span>33</span></span>
<span style='background-color: #df9c6e'><span>34</span></span>
<span style='background-color: #8e4e11'><span>35</span></span>
<span style='background-color: #d89511'><span>36</span></span>
<span style='background-color: #ead11e'><span>37</span></span>
<span style='background-color: #f5eb6b'><span>38</span></span>
<span style='background-color: #2f541c'><span>39</span></span>
<span style='background-color: #5a831b'><span>40</span></span>
<span style='background-color: #a2bb1e'><span>41</span></span>
<span style='background-color: #c6df6b'><span>42</span></span>
<span style='background-color: #0f450f'><span>43</span></span>
<span style='background-color: #008b12'><span>44</span></span>
<span style='background-color: #0bcb12'><span>45</span></span>
<span style='background-color: #3ef33f'><span>46</span></span>
<span style='background-color: #115153'><span>47</span></span>
<span style='background-color: #0c8563'><span>48</span></span>
<span style='background-color: #04bf79'><span>49</span></span>
<span style='background-color: #6ae6aa'><span>50</span></span>
<span style='background-color: #262726'><span>51</span></span>
<span style='background-color: #514f4c'><span>52</span></span>
<span style='background-color: #887e83'><span>53</span></span>
<span style='background-color: #b3aac0'><span>54</span></span>
</div>

#### Nirvana 7

```ruby
set_predefined_palette(:nirvana_7)
```

<div class='swatches'>
<span style='background-color: #1e0b37'><span>0</span></span>
<span style='background-color: #45176e'><span>1</span></span>
<span style='background-color: #8e20a7'><span>2</span></span>
<span style='background-color: #d53be3'><span>3</span></span>
<span style='background-color: #ef7bdd'><span>4</span></span>
<span style='background-color: #f6b7d6'><span>5</span></span>
<span style='background-color: #fcf2de'><span>6</span></span>
</div>

#### Nyx8

```ruby
set_predefined_palette(:nyx8)
```

<div class='swatches'>
<span style='background-color: #08141e'><span>0</span></span>
<span style='background-color: #0f2a3f'><span>1</span></span>
<span style='background-color: #20394f'><span>2</span></span>
<span style='background-color: #f6d6bd'><span>3</span></span>
<span style='background-color: #c3a38a'><span>4</span></span>
<span style='background-color: #997577'><span>5</span></span>
<span style='background-color: #816271'><span>6</span></span>
<span style='background-color: #4e495f'><span>7</span></span>
</div>

#### Oil 6

```ruby
set_predefined_palette(:oil_6)
```

<div class='swatches'>
<span style='background-color: #fbf5ef'><span>0</span></span>
<span style='background-color: #f2d3ab'><span>1</span></span>
<span style='background-color: #c69fa5'><span>2</span></span>
<span style='background-color: #8b6d9c'><span>3</span></span>
<span style='background-color: #494d7e'><span>4</span></span>
<span style='background-color: #272744'><span>5</span></span>
</div>

#### Paper 8

```ruby
set_predefined_palette(:paper_8)
```

<div class='swatches'>
<span style='background-color: #1f244b'><span>0</span></span>
<span style='background-color: #654053'><span>1</span></span>
<span style='background-color: #a8605d'><span>2</span></span>
<span style='background-color: #d1a67e'><span>3</span></span>
<span style='background-color: #f6e79c'><span>4</span></span>
<span style='background-color: #b6cf8e'><span>5</span></span>
<span style='background-color: #60ae7b'><span>6</span></span>
<span style='background-color: #3c6b64'><span>7</span></span>
</div>

#### Paradise 30

```ruby
set_predefined_palette(:paradise_30)
```

<div class='swatches'>
<span style='background-color: #1a0e14'><span>0</span></span>
<span style='background-color: #321921'><span>1</span></span>
<span style='background-color: #4d292d'><span>2</span></span>
<span style='background-color: #70483c'><span>3</span></span>
<span style='background-color: #96705a'><span>4</span></span>
<span style='background-color: #b59571'><span>5</span></span>
<span style='background-color: #e0c892'><span>6</span></span>
<span style='background-color: #fff4b0'><span>7</span></span>
<span style='background-color: #4c2126'><span>8</span></span>
<span style='background-color: #70282b'><span>9</span></span>
<span style='background-color: #993833'><span>10</span></span>
<span style='background-color: #bd4c35'><span>11</span></span>
<span style='background-color: #d9643d'><span>12</span></span>
<span style='background-color: #f0824b'><span>13</span></span>
<span style='background-color: #fba75d'><span>14</span></span>
<span style='background-color: #ffc973'><span>15</span></span>
<span style='background-color: #ffe08a'><span>16</span></span>
<span style='background-color: #bf2b29'><span>17</span></span>
<span style='background-color: #e64e47'><span>18</span></span>
<span style='background-color: #ed572d'><span>19</span></span>
<span style='background-color: #ff9130'><span>20</span></span>
<span style='background-color: #ffbd40'><span>21</span></span>
<span style='background-color: #364121'><span>22</span></span>
<span style='background-color: #5a7a22'><span>23</span></span>
<span style='background-color: #b3a720'><span>24</span></span>
<span style='background-color: #402b50'><span>25</span></span>
<span style='background-color: #4e59c2'><span>26</span></span>
<span style='background-color: #48ace0'><span>27</span></span>
<span style='background-color: #863ba1'><span>28</span></span>
<span style='background-color: #d663d7'><span>29</span></span>
</div>

#### Pastel qt

```ruby
set_predefined_palette(:pastel_qt)
```

<div class='swatches'>
<span style='background-color: #cb8175'><span>0</span></span>
<span style='background-color: #e2a97e'><span>1</span></span>
<span style='background-color: #f0cf8e'><span>2</span></span>
<span style='background-color: #f6edcd'><span>3</span></span>
<span style='background-color: #a8c8a6'><span>4</span></span>
<span style='background-color: #6d8d8a'><span>5</span></span>
<span style='background-color: #655057'><span>6</span></span>
</div>

#### Pax 24

```ruby
set_predefined_palette(:pax_24)
```

<div class='swatches'>
<span style='background-color: #f4f5ef'><span>0</span></span>
<span style='background-color: #f8c7a4'><span>1</span></span>
<span style='background-color: #e784a8'><span>2</span></span>
<span style='background-color: #eb9d45'><span>3</span></span>
<span style='background-color: #bb9a3e'><span>4</span></span>
<span style='background-color: #f6e455'><span>5</span></span>
<span style='background-color: #c8dbdf'><span>6</span></span>
<span style='background-color: #a146aa'><span>7</span></span>
<span style='background-color: #d74d4c'><span>8</span></span>
<span style='background-color: #a65d35'><span>9</span></span>
<span style='background-color: #8fcb62'><span>10</span></span>
<span style='background-color: #35884e'><span>11</span></span>
<span style='background-color: #a0abb1'><span>12</span></span>
<span style='background-color: #962f2c'><span>13</span></span>
<span style='background-color: #682d2c'><span>14</span></span>
<span style='background-color: #85dfeb'><span>15</span></span>
<span style='background-color: #339ca3'><span>16</span></span>
<span style='background-color: #1b4c5a'><span>17</span></span>
<span style='background-color: #5e6a82'><span>18</span></span>
<span style='background-color: #191023'><span>19</span></span>
<span style='background-color: #72adee'><span>20</span></span>
<span style='background-color: #435edb'><span>21</span></span>
<span style='background-color: #474394'><span>22</span></span>
<span style='background-color: #322d4d'><span>23</span></span>
</div>

#### Pear36

```ruby
set_predefined_palette(:pear36)
```

<div class='swatches'>
<span style='background-color: #5e315b'><span>0</span></span>
<span style='background-color: #8c3f5d'><span>1</span></span>
<span style='background-color: #ba6156'><span>2</span></span>
<span style='background-color: #f2a65e'><span>3</span></span>
<span style='background-color: #ffe478'><span>4</span></span>
<span style='background-color: #cfff70'><span>5</span></span>
<span style='background-color: #8fde5d'><span>6</span></span>
<span style='background-color: #3ca370'><span>7</span></span>
<span style='background-color: #3d6e70'><span>8</span></span>
<span style='background-color: #323e4f'><span>9</span></span>
<span style='background-color: #322947'><span>10</span></span>
<span style='background-color: #473b78'><span>11</span></span>
<span style='background-color: #4b5bab'><span>12</span></span>
<span style='background-color: #4da6ff'><span>13</span></span>
<span style='background-color: #66ffe3'><span>14</span></span>
<span style='background-color: #ffffeb'><span>15</span></span>
<span style='background-color: #c2c2d1'><span>16</span></span>
<span style='background-color: #7e7e8f'><span>17</span></span>
<span style='background-color: #606070'><span>18</span></span>
<span style='background-color: #43434f'><span>19</span></span>
<span style='background-color: #272736'><span>20</span></span>
<span style='background-color: #3e2347'><span>21</span></span>
<span style='background-color: #57294b'><span>22</span></span>
<span style='background-color: #964253'><span>23</span></span>
<span style='background-color: #e36956'><span>24</span></span>
<span style='background-color: #ffb570'><span>25</span></span>
<span style='background-color: #ff9166'><span>26</span></span>
<span style='background-color: #eb564b'><span>27</span></span>
<span style='background-color: #b0305c'><span>28</span></span>
<span style='background-color: #73275c'><span>29</span></span>
<span style='background-color: #422445'><span>30</span></span>
<span style='background-color: #5a265e'><span>31</span></span>
<span style='background-color: #80366b'><span>32</span></span>
<span style='background-color: #bd4882'><span>33</span></span>
<span style='background-color: #ff6b97'><span>34</span></span>
<span style='background-color: #ffb5b5'><span>35</span></span>
</div>

#### Pico 8

```ruby
set_predefined_palette(:pico_8)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #1d2b53'><span>1</span></span>
<span style='background-color: #7e2553'><span>2</span></span>
<span style='background-color: #008751'><span>3</span></span>
<span style='background-color: #ab5236'><span>4</span></span>
<span style='background-color: #5f574f'><span>5</span></span>
<span style='background-color: #c2c3c7'><span>6</span></span>
<span style='background-color: #fff1e8'><span>7</span></span>
<span style='background-color: #ff004d'><span>8</span></span>
<span style='background-color: #ffa300'><span>9</span></span>
<span style='background-color: #ffec27'><span>10</span></span>
<span style='background-color: #00e436'><span>11</span></span>
<span style='background-color: #29adff'><span>12</span></span>
<span style='background-color: #83769c'><span>13</span></span>
<span style='background-color: #ff77a8'><span>14</span></span>
<span style='background-color: #ffccaa'><span>15</span></span>
</div>

#### Pineapple 32

```ruby
set_predefined_palette(:pineapple_32)
```

<div class='swatches'>
<span style='background-color: #43002a'><span>0</span></span>
<span style='background-color: #890027'><span>1</span></span>
<span style='background-color: #d9243c'><span>2</span></span>
<span style='background-color: #ff6157'><span>3</span></span>
<span style='background-color: #ffb762'><span>4</span></span>
<span style='background-color: #c76e46'><span>5</span></span>
<span style='background-color: #73392e'><span>6</span></span>
<span style='background-color: #34111f'><span>7</span></span>
<span style='background-color: #030710'><span>8</span></span>
<span style='background-color: #273b2d'><span>9</span></span>
<span style='background-color: #458239'><span>10</span></span>
<span style='background-color: #9cb93b'><span>11</span></span>
<span style='background-color: #ffd832'><span>12</span></span>
<span style='background-color: #ff823b'><span>13</span></span>
<span style='background-color: #d1401f'><span>14</span></span>
<span style='background-color: #7c191a'><span>15</span></span>
<span style='background-color: #310c1b'><span>16</span></span>
<span style='background-color: #833f34'><span>17</span></span>
<span style='background-color: #eb9c6e'><span>18</span></span>
<span style='background-color: #ffdaac'><span>19</span></span>
<span style='background-color: #ffffe4'><span>20</span></span>
<span style='background-color: #bfc3c6'><span>21</span></span>
<span style='background-color: #6d8a8d'><span>22</span></span>
<span style='background-color: #293b49'><span>23</span></span>
<span style='background-color: #041528'><span>24</span></span>
<span style='background-color: #033e5e'><span>25</span></span>
<span style='background-color: #1c92a7'><span>26</span></span>
<span style='background-color: #77d6c1'><span>27</span></span>
<span style='background-color: #ffe0dc'><span>28</span></span>
<span style='background-color: #ff88a9'><span>29</span></span>
<span style='background-color: #c03b94'><span>30</span></span>
<span style='background-color: #601761'><span>31</span></span>
</div>

#### Pollen8

```ruby
set_predefined_palette(:pollen8)
```

<div class='swatches'>
<span style='background-color: #73464c'><span>0</span></span>
<span style='background-color: #ab5675'><span>1</span></span>
<span style='background-color: #ee6a7c'><span>2</span></span>
<span style='background-color: #ffa7a5'><span>3</span></span>
<span style='background-color: #ffe07e'><span>4</span></span>
<span style='background-color: #ffe7d6'><span>5</span></span>
<span style='background-color: #72dcbb'><span>6</span></span>
<span style='background-color: #34acba'><span>7</span></span>
</div>

#### Punolite plus

```ruby
set_predefined_palette(:punolite_plus)
```

<div class='swatches'>
<span style='background-color: #431c3f'><span>0</span></span>
<span style='background-color: #6d324e'><span>1</span></span>
<span style='background-color: #a65658'><span>2</span></span>
<span style='background-color: #c57763'><span>3</span></span>
<span style='background-color: #de9d75'><span>4</span></span>
<span style='background-color: #f0d898'><span>5</span></span>
<span style='background-color: #eef3aa'><span>6</span></span>
<span style='background-color: #bef3aa'><span>7</span></span>
<span style='background-color: #69c886'><span>8</span></span>
<span style='background-color: #50aa82'><span>9</span></span>
<span style='background-color: #3d766d'><span>10</span></span>
<span style='background-color: #294e58'><span>11</span></span>
<span style='background-color: #06041b'><span>12</span></span>
<span style='background-color: #101b4c'><span>13</span></span>
<span style='background-color: #1e4676'><span>14</span></span>
<span style='background-color: #377d99'><span>15</span></span>
<span style='background-color: #61b6b1'><span>16</span></span>
<span style='background-color: #90d5bf'><span>17</span></span>
<span style='background-color: #c7eada'><span>18</span></span>
<span style='background-color: #aacec8'><span>19</span></span>
<span style='background-color: #96b9b9'><span>20</span></span>
<span style='background-color: #809da4'><span>21</span></span>
<span style='background-color: #647789'><span>22</span></span>
<span style='background-color: #535d76'><span>23</span></span>
<span style='background-color: #3b3c58'><span>24</span></span>
</div>

#### Punolite plus plus

```ruby
set_predefined_palette(:punolite_plus_plus)
```

<div class='swatches'>
<span style='background-color: #2e2e43'><span>0</span></span>
<span style='background-color: #4a4b5b'><span>1</span></span>
<span style='background-color: #707b89'><span>2</span></span>
<span style='background-color: #a9bcbf'><span>3</span></span>
<span style='background-color: #e6eeed'><span>4</span></span>
<span style='background-color: #fcfbf3'><span>5</span></span>
<span style='background-color: #fceba8'><span>6</span></span>
<span style='background-color: #f5c47c'><span>7</span></span>
<span style='background-color: #e39764'><span>8</span></span>
<span style='background-color: #c06852'><span>9</span></span>
<span style='background-color: #9d4343'><span>10</span></span>
<span style='background-color: #813645'><span>11</span></span>
<span style='background-color: #542240'><span>12</span></span>
<span style='background-color: #2a152d'><span>13</span></span>
<span style='background-color: #4f2d4d'><span>14</span></span>
<span style='background-color: #5b3a56'><span>15</span></span>
<span style='background-color: #794e6d'><span>16</span></span>
<span style='background-color: #3e4c7e'><span>17</span></span>
<span style='background-color: #495f94'><span>18</span></span>
<span style='background-color: #5a78b2'><span>19</span></span>
<span style='background-color: #7396d5'><span>20</span></span>
<span style='background-color: #7fbbdc'><span>21</span></span>
<span style='background-color: #aaeeea'><span>22</span></span>
<span style='background-color: #d5f893'><span>23</span></span>
<span style='background-color: #96dc7f'><span>24</span></span>
<span style='background-color: #6ec077'><span>25</span></span>
<span style='background-color: #4e9363'><span>26</span></span>
<span style='background-color: #3c6c54'><span>27</span></span>
<span style='background-color: #2c5049'><span>28</span></span>
<span style='background-color: #34404f'><span>29</span></span>
<span style='background-color: #405967'><span>30</span></span>
<span style='background-color: #5c8995'><span>31</span></span>
</div>

#### Purplemorning8

```ruby
set_predefined_palette(:purplemorning8)
```

<div class='swatches'>
<span style='background-color: #211d38'><span>0</span></span>
<span style='background-color: #2e2a4f'><span>1</span></span>
<span style='background-color: #3b405e'><span>2</span></span>
<span style='background-color: #60556e'><span>3</span></span>
<span style='background-color: #9a6278'><span>4</span></span>
<span style='background-color: #c7786f'><span>5</span></span>
<span style='background-color: #cfa98a'><span>6</span></span>
<span style='background-color: #cdd4a5'><span>7</span></span>
</div>

#### Resurrect 64

```ruby
set_predefined_palette(:resurrect_64)
```

<div class='swatches'>
<span style='background-color: #2e222f'><span>0</span></span>
<span style='background-color: #3e3546'><span>1</span></span>
<span style='background-color: #625565'><span>2</span></span>
<span style='background-color: #966c6c'><span>3</span></span>
<span style='background-color: #ab947a'><span>4</span></span>
<span style='background-color: #694f62'><span>5</span></span>
<span style='background-color: #7f708a'><span>6</span></span>
<span style='background-color: #9babb2'><span>7</span></span>
<span style='background-color: #c7dcd0'><span>8</span></span>
<span style='background-color: #ffffff'><span>9</span></span>
<span style='background-color: #6e2727'><span>10</span></span>
<span style='background-color: #b33831'><span>11</span></span>
<span style='background-color: #ea4f36'><span>12</span></span>
<span style='background-color: #f57d4a'><span>13</span></span>
<span style='background-color: #ae2334'><span>14</span></span>
<span style='background-color: #e83b3b'><span>15</span></span>
<span style='background-color: #fb6b1d'><span>16</span></span>
<span style='background-color: #f79617'><span>17</span></span>
<span style='background-color: #f9c22b'><span>18</span></span>
<span style='background-color: #7a3045'><span>19</span></span>
<span style='background-color: #9e4539'><span>20</span></span>
<span style='background-color: #cd683d'><span>21</span></span>
<span style='background-color: #e6904e'><span>22</span></span>
<span style='background-color: #fbb954'><span>23</span></span>
<span style='background-color: #4c3e24'><span>24</span></span>
<span style='background-color: #676633'><span>25</span></span>
<span style='background-color: #a2a947'><span>26</span></span>
<span style='background-color: #d5e04b'><span>27</span></span>
<span style='background-color: #fbff86'><span>28</span></span>
<span style='background-color: #165a4c'><span>29</span></span>
<span style='background-color: #239063'><span>30</span></span>
<span style='background-color: #1ebc73'><span>31</span></span>
<span style='background-color: #91db69'><span>32</span></span>
<span style='background-color: #cddf6c'><span>33</span></span>
<span style='background-color: #313638'><span>34</span></span>
<span style='background-color: #374e4a'><span>35</span></span>
<span style='background-color: #547e64'><span>36</span></span>
<span style='background-color: #92a984'><span>37</span></span>
<span style='background-color: #b2ba90'><span>38</span></span>
<span style='background-color: #0b5e65'><span>39</span></span>
<span style='background-color: #0b8a8f'><span>40</span></span>
<span style='background-color: #0eaf9b'><span>41</span></span>
<span style='background-color: #30e1b9'><span>42</span></span>
<span style='background-color: #8ff8e2'><span>43</span></span>
<span style='background-color: #323353'><span>44</span></span>
<span style='background-color: #484a77'><span>45</span></span>
<span style='background-color: #4d65b4'><span>46</span></span>
<span style='background-color: #4d9be6'><span>47</span></span>
<span style='background-color: #8fd3ff'><span>48</span></span>
<span style='background-color: #45293f'><span>49</span></span>
<span style='background-color: #6b3e75'><span>50</span></span>
<span style='background-color: #905ea9'><span>51</span></span>
<span style='background-color: #a884f3'><span>52</span></span>
<span style='background-color: #eaaded'><span>53</span></span>
<span style='background-color: #753c54'><span>54</span></span>
<span style='background-color: #a24b6f'><span>55</span></span>
<span style='background-color: #cf657f'><span>56</span></span>
<span style='background-color: #ed8099'><span>57</span></span>
<span style='background-color: #831c5d'><span>58</span></span>
<span style='background-color: #c32454'><span>59</span></span>
<span style='background-color: #f04f78'><span>60</span></span>
<span style='background-color: #f68181'><span>61</span></span>
<span style='background-color: #fca790'><span>62</span></span>
<span style='background-color: #fdcbb0'><span>63</span></span>
</div>

#### Retrobubble

```ruby
set_predefined_palette(:retrobubble)
```

<div class='swatches'>
<span style='background-color: #9dc1c0'><span>0</span></span>
<span style='background-color: #525b80'><span>1</span></span>
<span style='background-color: #312139'><span>2</span></span>
<span style='background-color: #120e1f'><span>3</span></span>
<span style='background-color: #284646'><span>4</span></span>
<span style='background-color: #62ab46'><span>5</span></span>
<span style='background-color: #95533d'><span>6</span></span>
<span style='background-color: #6a2435'><span>7</span></span>
<span style='background-color: #654147'><span>8</span></span>
<span style='background-color: #fff169'><span>9</span></span>
<span style='background-color: #d7793f'><span>10</span></span>
<span style='background-color: #ab3229'><span>11</span></span>
<span style='background-color: #9e8f84'><span>12</span></span>
<span style='background-color: #ffface'><span>13</span></span>
<span style='background-color: #e0b56d'><span>14</span></span>
<span style='background-color: #f68b69'><span>15</span></span>
</div>

#### Retrocal 8

```ruby
set_predefined_palette(:retrocal_8)
```

<div class='swatches'>
<span style='background-color: #6eb8a8'><span>0</span></span>
<span style='background-color: #2a584f'><span>1</span></span>
<span style='background-color: #74a33f'><span>2</span></span>
<span style='background-color: #fcffc0'><span>3</span></span>
<span style='background-color: #c6505a'><span>4</span></span>
<span style='background-color: #2f142f'><span>5</span></span>
<span style='background-color: #774448'><span>6</span></span>
<span style='background-color: #ee9c5d'><span>7</span></span>
</div>

#### Rustic gb

```ruby
set_predefined_palette(:rustic_gb)
```

<div class='swatches'>
<span style='background-color: #2c2137'><span>0</span></span>
<span style='background-color: #764462'><span>1</span></span>
<span style='background-color: #edb4a1'><span>2</span></span>
<span style='background-color: #a96868'><span>3</span></span>
</div>

#### Ry 64

```ruby
set_predefined_palette(:ry_64)
```

<div class='swatches'>
<span style='background-color: #2f1e45'><span>0</span></span>
<span style='background-color: #6a1948'><span>1</span></span>
<span style='background-color: #901a4d'><span>2</span></span>
<span style='background-color: #c1264b'><span>3</span></span>
<span style='background-color: #df3551'><span>4</span></span>
<span style='background-color: #ee5959'><span>5</span></span>
<span style='background-color: #e48b47'><span>6</span></span>
<span style='background-color: #d86545'><span>7</span></span>
<span style='background-color: #bb4343'><span>8</span></span>
<span style='background-color: #a52c49'><span>9</span></span>
<span style='background-color: #8a1f40'><span>10</span></span>
<span style='background-color: #4e1829'><span>11</span></span>
<span style='background-color: #632337'><span>12</span></span>
<span style='background-color: #7a3243'><span>13</span></span>
<span style='background-color: #8f4747'><span>14</span></span>
<span style='background-color: #ac6754'><span>15</span></span>
<span style='background-color: #be8960'><span>16</span></span>
<span style='background-color: #cfa35f'><span>17</span></span>
<span style='background-color: #f5cf8a'><span>18</span></span>
<span style='background-color: #db9d28'><span>19</span></span>
<span style='background-color: #a76609'><span>20</span></span>
<span style='background-color: #803d11'><span>21</span></span>
<span style='background-color: #444800'><span>22</span></span>
<span style='background-color: #5e5d0a'><span>23</span></span>
<span style='background-color: #817c14'><span>24</span></span>
<span style='background-color: #a7983a'><span>25</span></span>
<span style='background-color: #bfaf60'><span>26</span></span>
<span style='background-color: #c9e276'><span>27</span></span>
<span style='background-color: #90b53a'><span>28</span></span>
<span style='background-color: #5d9226'><span>29</span></span>
<span style='background-color: #0f6a2e'><span>30</span></span>
<span style='background-color: #0c403b'><span>31</span></span>
<span style='background-color: #16315e'><span>32</span></span>
<span style='background-color: #0f4d69'><span>33</span></span>
<span style='background-color: #1c707f'><span>34</span></span>
<span style='background-color: #269992'><span>35</span></span>
<span style='background-color: #6dc0b4'><span>36</span></span>
<span style='background-color: #75d9f2'><span>37</span></span>
<span style='background-color: #55a7d4'><span>38</span></span>
<span style='background-color: #3a8bc2'><span>39</span></span>
<span style='background-color: #2c5791'><span>40</span></span>
<span style='background-color: #183360'><span>41</span></span>
<span style='background-color: #7d2f7e'><span>42</span></span>
<span style='background-color: #a83690'><span>43</span></span>
<span style='background-color: #ce4999'><span>44</span></span>
<span style='background-color: #f27dcd'><span>45</span></span>
<span style='background-color: #fbb8ff'><span>46</span></span>
<span style='background-color: #c783e9'><span>47</span></span>
<span style='background-color: #a750c4'><span>48</span></span>
<span style='background-color: #743c9f'><span>49</span></span>
<span style='background-color: #493277'><span>50</span></span>
<span style='background-color: #372466'><span>51</span></span>
<span style='background-color: #1a3349'><span>52</span></span>
<span style='background-color: #34495c'><span>53</span></span>
<span style='background-color: #45596b'><span>54</span></span>
<span style='background-color: #607884'><span>55</span></span>
<span style='background-color: #79999b'><span>56</span></span>
<span style='background-color: #e6eaea'><span>57</span></span>
<span style='background-color: #b9cbc7'><span>58</span></span>
<span style='background-color: #91a8a8'><span>59</span></span>
<span style='background-color: #6d7f85'><span>60</span></span>
<span style='background-color: #53606b'><span>61</span></span>
<span style='background-color: #3c4550'><span>62</span></span>
<span style='background-color: #222734'><span>63</span></span>
</div>

#### Shanty

```ruby
set_predefined_palette(:shanty)
```

<div class='swatches'>
<span style='background-color: #1e1526'><span>0</span></span>
<span style='background-color: #343147'><span>1</span></span>
<span style='background-color: #404861'><span>2</span></span>
<span style='background-color: #5a758f'><span>3</span></span>
<span style='background-color: #8eb2bd'><span>4</span></span>
<span style='background-color: #152b24'><span>5</span></span>
<span style='background-color: #1d4732'><span>6</span></span>
<span style='background-color: #488535'><span>7</span></span>
<span style='background-color: #77c242'><span>8</span></span>
<span style='background-color: #c6e563'><span>9</span></span>
<span style='background-color: #ddf19c'><span>10</span></span>
<span style='background-color: #a9da86'><span>11</span></span>
<span style='background-color: #8ab27d'><span>12</span></span>
<span style='background-color: #f28ddb'><span>13</span></span>
<span style='background-color: #de4ee6'><span>14</span></span>
<span style='background-color: #9143cc'><span>15</span></span>
<span style='background-color: #3a2d73'><span>16</span></span>
<span style='background-color: #214780'><span>17</span></span>
<span style='background-color: #1875cc'><span>18</span></span>
<span style='background-color: #18b3f5'><span>19</span></span>
<span style='background-color: #3de5f5'><span>20</span></span>
<span style='background-color: #f5f5f7'><span>21</span></span>
<span style='background-color: #bfeaf5'><span>22</span></span>
<span style='background-color: #93cfed'><span>23</span></span>
<span style='background-color: #f5915b'><span>24</span></span>
<span style='background-color: #bd5044'><span>25</span></span>
<span style='background-color: #6e2b23'><span>26</span></span>
<span style='background-color: #301b2a'><span>27</span></span>
<span style='background-color: #4f293b'><span>28</span></span>
<span style='background-color: #854657'><span>29</span></span>
<span style='background-color: #b06a72'><span>30</span></span>
<span style='background-color: #e69e97'><span>31</span></span>
<span style='background-color: #facc34'><span>32</span></span>
<span style='background-color: #fa9a41'><span>33</span></span>
<span style='background-color: #e86d25'><span>34</span></span>
<span style='background-color: #96181e'><span>35</span></span>
<span style='background-color: #d10f2f'><span>36</span></span>
<span style='background-color: #f02645'><span>37</span></span>
<span style='background-color: #362427'><span>38</span></span>
<span style='background-color: #693c3c'><span>39</span></span>
<span style='background-color: #875340'><span>40</span></span>
<span style='background-color: #b38247'><span>41</span></span>
<span style='background-color: #deb87a'><span>42</span></span>
<span style='background-color: #e7dbad'><span>43</span></span>
<span style='background-color: #ad9e7b'><span>44</span></span>
<span style='background-color: #94866b'><span>45</span></span>
<span style='background-color: #73695a'><span>46</span></span>
<span style='background-color: #5a514a'><span>47</span></span>
</div>

#### Sheltzy32

```ruby
set_predefined_palette(:sheltzy32)
```

<div class='swatches'>
<span style='background-color: #8cffde'><span>0</span></span>
<span style='background-color: #45b8b3'><span>1</span></span>
<span style='background-color: #839740'><span>2</span></span>
<span style='background-color: #c9ec85'><span>3</span></span>
<span style='background-color: #46c657'><span>4</span></span>
<span style='background-color: #158968'><span>5</span></span>
<span style='background-color: #2c5b6d'><span>6</span></span>
<span style='background-color: #222a5c'><span>7</span></span>
<span style='background-color: #566a89'><span>8</span></span>
<span style='background-color: #8babbf'><span>9</span></span>
<span style='background-color: #cce2e1'><span>10</span></span>
<span style='background-color: #ffdba5'><span>11</span></span>
<span style='background-color: #ccac68'><span>12</span></span>
<span style='background-color: #a36d3e'><span>13</span></span>
<span style='background-color: #683c34'><span>14</span></span>
<span style='background-color: #000000'><span>15</span></span>
<span style='background-color: #38002c'><span>16</span></span>
<span style='background-color: #663b93'><span>17</span></span>
<span style='background-color: #8b72de'><span>18</span></span>
<span style='background-color: #9cd8fc'><span>19</span></span>
<span style='background-color: #5e96dd'><span>20</span></span>
<span style='background-color: #3953c0'><span>21</span></span>
<span style='background-color: #800c53'><span>22</span></span>
<span style='background-color: #c34b91'><span>23</span></span>
<span style='background-color: #ff94b3'><span>24</span></span>
<span style='background-color: #bd1f3f'><span>25</span></span>
<span style='background-color: #ec614a'><span>26</span></span>
<span style='background-color: #ffa468'><span>27</span></span>
<span style='background-color: #fff6ae'><span>28</span></span>
<span style='background-color: #ffda70'><span>29</span></span>
<span style='background-color: #f4b03c'><span>30</span></span>
<span style='background-color: #ffffff'><span>31</span></span>
</div>

#### Slso8

```ruby
set_predefined_palette(:slso8)
```

<div class='swatches'>
<span style='background-color: #0d2b45'><span>0</span></span>
<span style='background-color: #203c56'><span>1</span></span>
<span style='background-color: #544e68'><span>2</span></span>
<span style='background-color: #8d697a'><span>3</span></span>
<span style='background-color: #d08159'><span>4</span></span>
<span style='background-color: #ffaa5e'><span>5</span></span>
<span style='background-color: #ffd4a3'><span>6</span></span>
<span style='background-color: #ffecd6'><span>7</span></span>
</div>

#### Softmilk 32

```ruby
set_predefined_palette(:softmilk_32)
```

<div class='swatches'>
<span style='background-color: #23213d'><span>0</span></span>
<span style='background-color: #d95b9a'><span>1</span></span>
<span style='background-color: #9e4491'><span>2</span></span>
<span style='background-color: #633662'><span>3</span></span>
<span style='background-color: #903d62'><span>4</span></span>
<span style='background-color: #bd515a'><span>5</span></span>
<span style='background-color: #d69a4e'><span>6</span></span>
<span style='background-color: #f3d040'><span>7</span></span>
<span style='background-color: #ffe88c'><span>8</span></span>
<span style='background-color: #f2f2f0'><span>9</span></span>
<span style='background-color: #94e092'><span>10</span></span>
<span style='background-color: #1f9983'><span>11</span></span>
<span style='background-color: #22636b'><span>12</span></span>
<span style='background-color: #57546f'><span>13</span></span>
<span style='background-color: #c56876'><span>14</span></span>
<span style='background-color: #76747d'><span>15</span></span>
<span style='background-color: #5c3841'><span>16</span></span>
<span style='background-color: #945848'><span>17</span></span>
<span style='background-color: #d17f6b'><span>18</span></span>
<span style='background-color: #eb9f7f'><span>19</span></span>
<span style='background-color: #f1c28f'><span>20</span></span>
<span style='background-color: #b9b5c3'><span>21</span></span>
<span style='background-color: #454194'><span>22</span></span>
<span style='background-color: #425bbd'><span>23</span></span>
<span style='background-color: #4884d4'><span>24</span></span>
<span style='background-color: #45a1de'><span>25</span></span>
<span style='background-color: #7cd8eb'><span>26</span></span>
<span style='background-color: #e2f266'><span>27</span></span>
<span style='background-color: #c3d442'><span>28</span></span>
<span style='background-color: #82aa28'><span>29</span></span>
<span style='background-color: #597f1e'><span>30</span></span>
<span style='background-color: #376129'><span>31</span></span>
</div>

#### Suez 30

```ruby
set_predefined_palette(:suez_30)
```

<div class='swatches'>
<span style='background-color: #c4a78b'><span>0</span></span>
<span style='background-color: #7d665f'><span>1</span></span>
<span style='background-color: #493936'><span>2</span></span>
<span style='background-color: #200d0a'><span>3</span></span>
<span style='background-color: #5f2323'><span>4</span></span>
<span style='background-color: #78311d'><span>5</span></span>
<span style='background-color: #944c2e'><span>6</span></span>
<span style='background-color: #83453e'><span>7</span></span>
<span style='background-color: #c36846'><span>8</span></span>
<span style='background-color: #e29365'><span>9</span></span>
<span style='background-color: #fbbb81'><span>10</span></span>
<span style='background-color: #ffdba5'><span>11</span></span>
<span style='background-color: #fff3cd'><span>12</span></span>
<span style='background-color: #ffffff'><span>13</span></span>
<span style='background-color: #ffe892'><span>14</span></span>
<span style='background-color: #fbc669'><span>15</span></span>
<span style='background-color: #db6447'><span>16</span></span>
<span style='background-color: #b3382a'><span>17</span></span>
<span style='background-color: #e5e4b8'><span>18</span></span>
<span style='background-color: #b3b887'><span>19</span></span>
<span style='background-color: #6c8760'><span>20</span></span>
<span style='background-color: #305b46'><span>21</span></span>
<span style='background-color: #303c52'><span>22</span></span>
<span style='background-color: #e4fbe2'><span>23</span></span>
<span style='background-color: #c3dbce'><span>24</span></span>
<span style='background-color: #89b5b0'><span>25</span></span>
<span style='background-color: #5c8197'><span>26</span></span>
<span style='background-color: #425985'><span>27</span></span>
<span style='background-color: #403675'><span>28</span></span>
<span style='background-color: #230d51'><span>29</span></span>
</div>

#### Sunshine valley

```ruby
set_predefined_palette(:sunshine_valley)
```

<div class='swatches'>
<span style='background-color: #0e0e1a'><span>0</span></span>
<span style='background-color: #2b1f4d'><span>1</span></span>
<span style='background-color: #513185'><span>2</span></span>
<span style='background-color: #8235bd'><span>3</span></span>
<span style='background-color: #c36ac4'><span>4</span></span>
<span style='background-color: #eb83dd'><span>5</span></span>
<span style='background-color: #f0c5df'><span>6</span></span>
<span style='background-color: #93f0fa'><span>7</span></span>
<span style='background-color: #76ccf5'><span>8</span></span>
<span style='background-color: #51a6f0'><span>9</span></span>
<span style='background-color: #3760c8'><span>10</span></span>
<span style='background-color: #3c4891'><span>11</span></span>
<span style='background-color: #2c3661'><span>12</span></span>
<span style='background-color: #f0baa3'><span>13</span></span>
<span style='background-color: #d6968b'><span>14</span></span>
<span style='background-color: #d17e79'><span>15</span></span>
<span style='background-color: #b56d77'><span>16</span></span>
<span style='background-color: #965367'><span>17</span></span>
<span style='background-color: #853e61'><span>18</span></span>
<span style='background-color: #57352c'><span>19</span></span>
<span style='background-color: #784735'><span>20</span></span>
<span style='background-color: #9e643f'><span>21</span></span>
<span style='background-color: #c78350'><span>22</span></span>
<span style='background-color: #d99f66'><span>23</span></span>
<span style='background-color: #e6c07e'><span>24</span></span>
<span style='background-color: #edf067'><span>25</span></span>
<span style='background-color: #d6b751'><span>26</span></span>
<span style='background-color: #bf872c'><span>27</span></span>
<span style='background-color: #b5671f'><span>28</span></span>
<span style='background-color: #963e1e'><span>29</span></span>
<span style='background-color: #802114'><span>30</span></span>
<span style='background-color: #611b2a'><span>31</span></span>
<span style='background-color: #b02e3b'><span>32</span></span>
<span style='background-color: #de3c31'><span>33</span></span>
<span style='background-color: #f55e38'><span>34</span></span>
<span style='background-color: #f78952'><span>35</span></span>
<span style='background-color: #fcb177'><span>36</span></span>
<span style='background-color: #c8ed8c'><span>37</span></span>
<span style='background-color: #86d468'><span>38</span></span>
<span style='background-color: #4cbd48'><span>39</span></span>
<span style='background-color: #3f8f4f'><span>40</span></span>
<span style='background-color: #366e4d'><span>41</span></span>
<span style='background-color: #274d41'><span>42</span></span>
<span style='background-color: #22202e'><span>43</span></span>
<span style='background-color: #3b3d4d'><span>44</span></span>
<span style='background-color: #69728a'><span>45</span></span>
<span style='background-color: #8294ab'><span>46</span></span>
<span style='background-color: #abc7d9'><span>47</span></span>
<span style='background-color: #f5f8fa'><span>48</span></span>
</div>

#### Sweet canyon extended 64

```ruby
set_predefined_palette(:sweet_canyon_extended_64)
```

<div class='swatches'>
<span style='background-color: #0f0e11'><span>0</span></span>
<span style='background-color: #2d2c33'><span>1</span></span>
<span style='background-color: #40404a'><span>2</span></span>
<span style='background-color: #51545c'><span>3</span></span>
<span style='background-color: #6b7179'><span>4</span></span>
<span style='background-color: #7c8389'><span>5</span></span>
<span style='background-color: #a8b2b6'><span>6</span></span>
<span style='background-color: #d5d5d5'><span>7</span></span>
<span style='background-color: #eeebe0'><span>8</span></span>
<span style='background-color: #f1dbb1'><span>9</span></span>
<span style='background-color: #eec99f'><span>10</span></span>
<span style='background-color: #e1a17e'><span>11</span></span>
<span style='background-color: #cc9562'><span>12</span></span>
<span style='background-color: #ab7b49'><span>13</span></span>
<span style='background-color: #9a643a'><span>14</span></span>
<span style='background-color: #86482f'><span>15</span></span>
<span style='background-color: #783a29'><span>16</span></span>
<span style='background-color: #6a3328'><span>17</span></span>
<span style='background-color: #541d29'><span>18</span></span>
<span style='background-color: #42192c'><span>19</span></span>
<span style='background-color: #512240'><span>20</span></span>
<span style='background-color: #782349'><span>21</span></span>
<span style='background-color: #8b2e5d'><span>22</span></span>
<span style='background-color: #a93e89'><span>23</span></span>
<span style='background-color: #d062c8'><span>24</span></span>
<span style='background-color: #ec94ea'><span>25</span></span>
<span style='background-color: #f2bdfc'><span>26</span></span>
<span style='background-color: #eaebff'><span>27</span></span>
<span style='background-color: #a2fafa'><span>28</span></span>
<span style='background-color: #64e7e7'><span>29</span></span>
<span style='background-color: #54cfd8'><span>30</span></span>
<span style='background-color: #2fb6c3'><span>31</span></span>
<span style='background-color: #2c89af'><span>32</span></span>
<span style='background-color: #25739d'><span>33</span></span>
<span style='background-color: #2a5684'><span>34</span></span>
<span style='background-color: #214574'><span>35</span></span>
<span style='background-color: #1f2966'><span>36</span></span>
<span style='background-color: #101445'><span>37</span></span>
<span style='background-color: #3c0d3b'><span>38</span></span>
<span style='background-color: #66164c'><span>39</span></span>
<span style='background-color: #901f3d'><span>40</span></span>
<span style='background-color: #bb3030'><span>41</span></span>
<span style='background-color: #dc473c'><span>42</span></span>
<span style='background-color: #ec6a45'><span>43</span></span>
<span style='background-color: #fb9b41'><span>44</span></span>
<span style='background-color: #f0c04c'><span>45</span></span>
<span style='background-color: #f4d66e'><span>46</span></span>
<span style='background-color: #fffb76'><span>47</span></span>
<span style='background-color: #ccf17a'><span>48</span></span>
<span style='background-color: #97d948'><span>49</span></span>
<span style='background-color: #6fba3b'><span>50</span></span>
<span style='background-color: #229443'><span>51</span></span>
<span style='background-color: #1d7e45'><span>52</span></span>
<span style='background-color: #116548'><span>53</span></span>
<span style='background-color: #0c4f3f'><span>54</span></span>
<span style='background-color: #0a3639'><span>55</span></span>
<span style='background-color: #251746'><span>56</span></span>
<span style='background-color: #48246d'><span>57</span></span>
<span style='background-color: #69189c'><span>58</span></span>
<span style='background-color: #9f20c0'><span>59</span></span>
<span style='background-color: #e527d2'><span>60</span></span>
<span style='background-color: #ff51cf'><span>61</span></span>
<span style='background-color: #ff7ada'><span>62</span></span>
<span style='background-color: #ff9edb'><span>63</span></span>
</div>

#### Sweet24

```ruby
set_predefined_palette(:sweet24)
```

<div class='swatches'>
<span style='background-color: #2c4941'><span>0</span></span>
<span style='background-color: #66a650'><span>1</span></span>
<span style='background-color: #b9d850'><span>2</span></span>
<span style='background-color: #82dcd7'><span>3</span></span>
<span style='background-color: #208cb2'><span>4</span></span>
<span style='background-color: #253348'><span>5</span></span>
<span style='background-color: #1d1b24'><span>6</span></span>
<span style='background-color: #3a3a41'><span>7</span></span>
<span style='background-color: #7a7576'><span>8</span></span>
<span style='background-color: #b59a66'><span>9</span></span>
<span style='background-color: #cec7b1'><span>10</span></span>
<span style='background-color: #edefe2'><span>11</span></span>
<span style='background-color: #d78b98'><span>12</span></span>
<span style='background-color: #a13d77'><span>13</span></span>
<span style='background-color: #6d2047'><span>14</span></span>
<span style='background-color: #3c1c43'><span>15</span></span>
<span style='background-color: #2c2228'><span>16</span></span>
<span style='background-color: #5e3735'><span>17</span></span>
<span style='background-color: #885a44'><span>18</span></span>
<span style='background-color: #b8560f'><span>19</span></span>
<span style='background-color: #dc9824'><span>20</span></span>
<span style='background-color: #efcb84'><span>21</span></span>
<span style='background-color: #e68556'><span>22</span></span>
<span style='background-color: #c02931'><span>23</span></span>
</div>

#### Sweetie 16

```ruby
set_predefined_palette(:sweetie_16)
```

<div class='swatches'>
<span style='background-color: #1a1c2c'><span>0</span></span>
<span style='background-color: #5d275d'><span>1</span></span>
<span style='background-color: #b13e53'><span>2</span></span>
<span style='background-color: #ef7d57'><span>3</span></span>
<span style='background-color: #ffcd75'><span>4</span></span>
<span style='background-color: #a7f070'><span>5</span></span>
<span style='background-color: #38b764'><span>6</span></span>
<span style='background-color: #257179'><span>7</span></span>
<span style='background-color: #29366f'><span>8</span></span>
<span style='background-color: #3b5dc9'><span>9</span></span>
<span style='background-color: #41a6f6'><span>10</span></span>
<span style='background-color: #73eff7'><span>11</span></span>
<span style='background-color: #f4f4f4'><span>12</span></span>
<span style='background-color: #94b0c2'><span>13</span></span>
<span style='background-color: #566c86'><span>14</span></span>
<span style='background-color: #333c57'><span>15</span></span>
</div>

#### Tofu 20k

```ruby
set_predefined_palette(:tofu_20k)
```

<div class='swatches'>
<span style='background-color: #120a1a'><span>0</span></span>
<span style='background-color: #2a2a41'><span>1</span></span>
<span style='background-color: #404863'><span>2</span></span>
<span style='background-color: #59607a'><span>3</span></span>
<span style='background-color: #787d8b'><span>4</span></span>
<span style='background-color: #9da5ae'><span>5</span></span>
<span style='background-color: #c8d6ac'><span>6</span></span>
<span style='background-color: #feffe5'><span>7</span></span>
<span style='background-color: #e4cd5a'><span>8</span></span>
<span style='background-color: #d49733'><span>9</span></span>
<span style='background-color: #d68552'><span>10</span></span>
<span style='background-color: #be5a1e'><span>11</span></span>
<span style='background-color: #894835'><span>12</span></span>
<span style='background-color: #602631'><span>13</span></span>
<span style='background-color: #4b0c30'><span>14</span></span>
<span style='background-color: #81173f'><span>15</span></span>
<span style='background-color: #cc1825'><span>16</span></span>
<span style='background-color: #dc4926'><span>17</span></span>
<span style='background-color: #f1934c'><span>18</span></span>
<span style='background-color: #fad5af'><span>19</span></span>
<span style='background-color: #ed9d7c'><span>20</span></span>
<span style='background-color: #d16363'><span>21</span></span>
<span style='background-color: #b7ab76'><span>22</span></span>
<span style='background-color: #b59857'><span>23</span></span>
<span style='background-color: #926d3c'><span>24</span></span>
<span style='background-color: #8b5b37'><span>25</span></span>
<span style='background-color: #ff82a0'><span>26</span></span>
<span style='background-color: #ff26a8'><span>27</span></span>
<span style='background-color: #422490'><span>28</span></span>
<span style='background-color: #2749d0'><span>29</span></span>
<span style='background-color: #4477ff'><span>30</span></span>
<span style='background-color: #4cc5e4'><span>31</span></span>
<span style='background-color: #8bf5c6'><span>32</span></span>
<span style='background-color: #85c448'><span>33</span></span>
<span style='background-color: #439d40'><span>34</span></span>
<span style='background-color: #29694e'><span>35</span></span>
</div>

#### Vga

```ruby
set_predefined_palette(:vga)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #0000aa'><span>1</span></span>
<span style='background-color: #00aa00'><span>2</span></span>
<span style='background-color: #00aaaa'><span>3</span></span>
<span style='background-color: #aa0000'><span>4</span></span>
<span style='background-color: #aa00aa'><span>5</span></span>
<span style='background-color: #aa5500'><span>6</span></span>
<span style='background-color: #aaaaaa'><span>7</span></span>
<span style='background-color: #555555'><span>8</span></span>
<span style='background-color: #5555ff'><span>9</span></span>
<span style='background-color: #55ff55'><span>10</span></span>
<span style='background-color: #55ffff'><span>11</span></span>
<span style='background-color: #ff5555'><span>12</span></span>
<span style='background-color: #ff55ff'><span>13</span></span>
<span style='background-color: #ffff55'><span>14</span></span>
<span style='background-color: #ffffff'><span>15</span></span>
<span style='background-color: #000000'><span>16</span></span>
<span style='background-color: #141414'><span>17</span></span>
<span style='background-color: #202020'><span>18</span></span>
<span style='background-color: #2c2c2c'><span>19</span></span>
<span style='background-color: #383838'><span>20</span></span>
<span style='background-color: #454545'><span>21</span></span>
<span style='background-color: #515151'><span>22</span></span>
<span style='background-color: #616161'><span>23</span></span>
<span style='background-color: #717171'><span>24</span></span>
<span style='background-color: #828282'><span>25</span></span>
<span style='background-color: #929292'><span>26</span></span>
<span style='background-color: #a2a2a2'><span>27</span></span>
<span style='background-color: #b6b6b6'><span>28</span></span>
<span style='background-color: #cbcbcb'><span>29</span></span>
<span style='background-color: #e3e3e3'><span>30</span></span>
<span style='background-color: #ffffff'><span>31</span></span>
<span style='background-color: #0000ff'><span>32</span></span>
<span style='background-color: #4100ff'><span>33</span></span>
<span style='background-color: #7d00ff'><span>34</span></span>
<span style='background-color: #be00ff'><span>35</span></span>
<span style='background-color: #ff00ff'><span>36</span></span>
<span style='background-color: #ff00be'><span>37</span></span>
<span style='background-color: #ff007d'><span>38</span></span>
<span style='background-color: #ff0041'><span>39</span></span>
<span style='background-color: #ff0000'><span>40</span></span>
<span style='background-color: #ff4100'><span>41</span></span>
<span style='background-color: #ff7d00'><span>42</span></span>
<span style='background-color: #ffbe00'><span>43</span></span>
<span style='background-color: #ffff00'><span>44</span></span>
<span style='background-color: #beff00'><span>45</span></span>
<span style='background-color: #7dff00'><span>46</span></span>
<span style='background-color: #41ff00'><span>47</span></span>
<span style='background-color: #00ff00'><span>48</span></span>
<span style='background-color: #00ff41'><span>49</span></span>
<span style='background-color: #00ff7d'><span>50</span></span>
<span style='background-color: #00ffbe'><span>51</span></span>
<span style='background-color: #00ffff'><span>52</span></span>
<span style='background-color: #00beff'><span>53</span></span>
<span style='background-color: #007dff'><span>54</span></span>
<span style='background-color: #0041ff'><span>55</span></span>
<span style='background-color: #7d7dff'><span>56</span></span>
<span style='background-color: #9e7dff'><span>57</span></span>
<span style='background-color: #be7dff'><span>58</span></span>
<span style='background-color: #df7dff'><span>59</span></span>
<span style='background-color: #ff7dff'><span>60</span></span>
<span style='background-color: #ff7ddf'><span>61</span></span>
<span style='background-color: #ff7dbe'><span>62</span></span>
<span style='background-color: #ff7d9e'><span>63</span></span>
<span style='background-color: #ff7d7d'><span>64</span></span>
<span style='background-color: #ff9e7d'><span>65</span></span>
<span style='background-color: #ffbe7d'><span>66</span></span>
<span style='background-color: #ffdf7d'><span>67</span></span>
<span style='background-color: #ffff7d'><span>68</span></span>
<span style='background-color: #dfff7d'><span>69</span></span>
<span style='background-color: #beff7d'><span>70</span></span>
<span style='background-color: #9eff7d'><span>71</span></span>
<span style='background-color: #7dff7d'><span>72</span></span>
<span style='background-color: #7dff9e'><span>73</span></span>
<span style='background-color: #7dffbe'><span>74</span></span>
<span style='background-color: #7dffdf'><span>75</span></span>
<span style='background-color: #7dffff'><span>76</span></span>
<span style='background-color: #7ddfff'><span>77</span></span>
<span style='background-color: #7dbeff'><span>78</span></span>
<span style='background-color: #7d9eff'><span>79</span></span>
<span style='background-color: #b6b6ff'><span>80</span></span>
<span style='background-color: #c7b6ff'><span>81</span></span>
<span style='background-color: #dbb6ff'><span>82</span></span>
<span style='background-color: #ebb6ff'><span>83</span></span>
<span style='background-color: #ffb6ff'><span>84</span></span>
<span style='background-color: #ffb6eb'><span>85</span></span>
<span style='background-color: #ffb6db'><span>86</span></span>
<span style='background-color: #ffb6c7'><span>87</span></span>
<span style='background-color: #ffb6b6'><span>88</span></span>
<span style='background-color: #ffc7b6'><span>89</span></span>
<span style='background-color: #ffdbb6'><span>90</span></span>
<span style='background-color: #ffebb6'><span>91</span></span>
<span style='background-color: #ffffb6'><span>92</span></span>
<span style='background-color: #ebffb6'><span>93</span></span>
<span style='background-color: #dbffb6'><span>94</span></span>
<span style='background-color: #c7ffb6'><span>95</span></span>
<span style='background-color: #b6ffb6'><span>96</span></span>
<span style='background-color: #b6ffc7'><span>97</span></span>
<span style='background-color: #b6ffdb'><span>98</span></span>
<span style='background-color: #b6ffeb'><span>99</span></span>
<span style='background-color: #b6ffff'><span>100</span></span>
<span style='background-color: #b6ebff'><span>101</span></span>
<span style='background-color: #b6dbff'><span>102</span></span>
<span style='background-color: #b6c7ff'><span>103</span></span>
<span style='background-color: #000071'><span>104</span></span>
<span style='background-color: #1c0071'><span>105</span></span>
<span style='background-color: #380071'><span>106</span></span>
<span style='background-color: #550071'><span>107</span></span>
<span style='background-color: #710071'><span>108</span></span>
<span style='background-color: #710055'><span>109</span></span>
<span style='background-color: #710038'><span>110</span></span>
<span style='background-color: #71001c'><span>111</span></span>
<span style='background-color: #710000'><span>112</span></span>
<span style='background-color: #711c00'><span>113</span></span>
<span style='background-color: #713800'><span>114</span></span>
<span style='background-color: #715500'><span>115</span></span>
<span style='background-color: #717100'><span>116</span></span>
<span style='background-color: #557100'><span>117</span></span>
<span style='background-color: #387100'><span>118</span></span>
<span style='background-color: #1c7100'><span>119</span></span>
<span style='background-color: #007100'><span>120</span></span>
<span style='background-color: #00711c'><span>121</span></span>
<span style='background-color: #007138'><span>122</span></span>
<span style='background-color: #007155'><span>123</span></span>
<span style='background-color: #007171'><span>124</span></span>
<span style='background-color: #005571'><span>125</span></span>
<span style='background-color: #003871'><span>126</span></span>
<span style='background-color: #001c71'><span>127</span></span>
<span style='background-color: #383871'><span>128</span></span>
<span style='background-color: #453871'><span>129</span></span>
<span style='background-color: #553871'><span>130</span></span>
<span style='background-color: #613871'><span>131</span></span>
<span style='background-color: #713871'><span>132</span></span>
<span style='background-color: #713861'><span>133</span></span>
<span style='background-color: #713855'><span>134</span></span>
<span style='background-color: #713845'><span>135</span></span>
<span style='background-color: #713838'><span>136</span></span>
<span style='background-color: #714538'><span>137</span></span>
<span style='background-color: #715538'><span>138</span></span>
<span style='background-color: #716138'><span>139</span></span>
<span style='background-color: #717138'><span>140</span></span>
<span style='background-color: #617138'><span>141</span></span>
<span style='background-color: #557138'><span>142</span></span>
<span style='background-color: #457138'><span>143</span></span>
<span style='background-color: #387138'><span>144</span></span>
<span style='background-color: #387145'><span>145</span></span>
<span style='background-color: #387155'><span>146</span></span>
<span style='background-color: #387161'><span>147</span></span>
<span style='background-color: #387171'><span>148</span></span>
<span style='background-color: #386171'><span>149</span></span>
<span style='background-color: #385571'><span>150</span></span>
<span style='background-color: #384571'><span>151</span></span>
<span style='background-color: #515171'><span>152</span></span>
<span style='background-color: #595171'><span>153</span></span>
<span style='background-color: #615171'><span>154</span></span>
<span style='background-color: #695171'><span>155</span></span>
<span style='background-color: #715171'><span>156</span></span>
<span style='background-color: #715169'><span>157</span></span>
<span style='background-color: #715161'><span>158</span></span>
<span style='background-color: #715159'><span>159</span></span>
<span style='background-color: #715151'><span>160</span></span>
<span style='background-color: #715951'><span>161</span></span>
<span style='background-color: #716151'><span>162</span></span>
<span style='background-color: #716951'><span>163</span></span>
<span style='background-color: #717151'><span>164</span></span>
<span style='background-color: #697151'><span>165</span></span>
<span style='background-color: #617151'><span>166</span></span>
<span style='background-color: #597151'><span>167</span></span>
<span style='background-color: #517151'><span>168</span></span>
<span style='background-color: #517159'><span>169</span></span>
<span style='background-color: #517161'><span>170</span></span>
<span style='background-color: #517169'><span>171</span></span>
<span style='background-color: #517171'><span>172</span></span>
<span style='background-color: #516971'><span>173</span></span>
<span style='background-color: #516171'><span>174</span></span>
<span style='background-color: #515971'><span>175</span></span>
<span style='background-color: #000041'><span>176</span></span>
<span style='background-color: #100041'><span>177</span></span>
<span style='background-color: #200041'><span>178</span></span>
<span style='background-color: #300041'><span>179</span></span>
<span style='background-color: #410041'><span>180</span></span>
<span style='background-color: #410030'><span>181</span></span>
<span style='background-color: #410020'><span>182</span></span>
<span style='background-color: #410010'><span>183</span></span>
<span style='background-color: #410000'><span>184</span></span>
<span style='background-color: #411000'><span>185</span></span>
<span style='background-color: #412000'><span>186</span></span>
<span style='background-color: #413000'><span>187</span></span>
<span style='background-color: #414100'><span>188</span></span>
<span style='background-color: #304100'><span>189</span></span>
<span style='background-color: #204100'><span>190</span></span>
<span style='background-color: #104100'><span>191</span></span>
<span style='background-color: #004100'><span>192</span></span>
<span style='background-color: #004110'><span>193</span></span>
<span style='background-color: #004120'><span>194</span></span>
<span style='background-color: #004130'><span>195</span></span>
<span style='background-color: #004141'><span>196</span></span>
<span style='background-color: #003041'><span>197</span></span>
<span style='background-color: #002041'><span>198</span></span>
<span style='background-color: #001041'><span>199</span></span>
<span style='background-color: #202041'><span>200</span></span>
<span style='background-color: #282041'><span>201</span></span>
<span style='background-color: #302041'><span>202</span></span>
<span style='background-color: #382041'><span>203</span></span>
<span style='background-color: #412041'><span>204</span></span>
<span style='background-color: #412038'><span>205</span></span>
<span style='background-color: #412030'><span>206</span></span>
<span style='background-color: #412028'><span>207</span></span>
<span style='background-color: #412020'><span>208</span></span>
<span style='background-color: #412820'><span>209</span></span>
<span style='background-color: #413020'><span>210</span></span>
<span style='background-color: #413820'><span>211</span></span>
<span style='background-color: #414120'><span>212</span></span>
<span style='background-color: #384120'><span>213</span></span>
<span style='background-color: #304120'><span>214</span></span>
<span style='background-color: #284120'><span>215</span></span>
<span style='background-color: #204120'><span>216</span></span>
<span style='background-color: #204128'><span>217</span></span>
<span style='background-color: #204130'><span>218</span></span>
<span style='background-color: #204138'><span>219</span></span>
<span style='background-color: #204141'><span>220</span></span>
<span style='background-color: #203841'><span>221</span></span>
<span style='background-color: #203041'><span>222</span></span>
<span style='background-color: #202841'><span>223</span></span>
<span style='background-color: #2c2c41'><span>224</span></span>
<span style='background-color: #302c41'><span>225</span></span>
<span style='background-color: #342c41'><span>226</span></span>
<span style='background-color: #3c2c41'><span>227</span></span>
<span style='background-color: #412c41'><span>228</span></span>
<span style='background-color: #412c3c'><span>229</span></span>
<span style='background-color: #412c34'><span>230</span></span>
<span style='background-color: #412c30'><span>231</span></span>
<span style='background-color: #412c2c'><span>232</span></span>
<span style='background-color: #41302c'><span>233</span></span>
<span style='background-color: #41342c'><span>234</span></span>
<span style='background-color: #413c2c'><span>235</span></span>
<span style='background-color: #41412c'><span>236</span></span>
<span style='background-color: #3c412c'><span>237</span></span>
<span style='background-color: #34412c'><span>238</span></span>
<span style='background-color: #30412c'><span>239</span></span>
<span style='background-color: #2c412c'><span>240</span></span>
<span style='background-color: #2c4130'><span>241</span></span>
<span style='background-color: #2c4134'><span>242</span></span>
<span style='background-color: #2c413c'><span>243</span></span>
<span style='background-color: #2c4141'><span>244</span></span>
<span style='background-color: #2c3c41'><span>245</span></span>
<span style='background-color: #2c3441'><span>246</span></span>
<span style='background-color: #2c3041'><span>247</span></span>
<span style='background-color: #000000'><span>248</span></span>
<span style='background-color: #000000'><span>249</span></span>
<span style='background-color: #000000'><span>250</span></span>
<span style='background-color: #000000'><span>251</span></span>
<span style='background-color: #000000'><span>252</span></span>
<span style='background-color: #000000'><span>253</span></span>
<span style='background-color: #000000'><span>254</span></span>
<span style='background-color: #000000'><span>255</span></span>
</div>

#### Vines flexible linear ramps

```ruby
set_predefined_palette(:vines_flexible_linear_ramps)
```

<div class='swatches'>
<span style='background-color: #150a1f'><span>0</span></span>
<span style='background-color: #280b26'><span>1</span></span>
<span style='background-color: #361027'><span>2</span></span>
<span style='background-color: #681824'><span>3</span></span>
<span style='background-color: #b42313'><span>4</span></span>
<span style='background-color: #f4680b'><span>5</span></span>
<span style='background-color: #f4c047'><span>6</span></span>
<span style='background-color: #fffdf0'><span>7</span></span>
<span style='background-color: #0c1327'><span>8</span></span>
<span style='background-color: #03282b'><span>9</span></span>
<span style='background-color: #09493f'><span>10</span></span>
<span style='background-color: #118337'><span>11</span></span>
<span style='background-color: #57c52b'><span>12</span></span>
<span style='background-color: #b9ed5e'><span>13</span></span>
<span style='background-color: #1a112e'><span>14</span></span>
<span style='background-color: #291945'><span>15</span></span>
<span style='background-color: #5e1c5a'><span>16</span></span>
<span style='background-color: #8f1767'><span>17</span></span>
<span style='background-color: #f45d92'><span>18</span></span>
<span style='background-color: #feb58b'><span>19</span></span>
<span style='background-color: #0e092f'><span>20</span></span>
<span style='background-color: #1b1853'><span>21</span></span>
<span style='background-color: #222d81'><span>22</span></span>
<span style='background-color: #465be7'><span>23</span></span>
<span style='background-color: #2ac0f2'><span>24</span></span>
<span style='background-color: #7df2cf'><span>25</span></span>
<span style='background-color: #220c27'><span>26</span></span>
<span style='background-color: #2f1316'><span>27</span></span>
<span style='background-color: #431e1e'><span>28</span></span>
<span style='background-color: #74341a'><span>29</span></span>
<span style='background-color: #af5d23'><span>30</span></span>
<span style='background-color: #f8993a'><span>31</span></span>
<span style='background-color: #19102e'><span>32</span></span>
<span style='background-color: #241e44'><span>33</span></span>
<span style='background-color: #25315e'><span>34</span></span>
<span style='background-color: #3a5c85'><span>35</span></span>
<span style='background-color: #56a1bf'><span>36</span></span>
<span style='background-color: #97dbd2'><span>37</span></span>
</div>

#### Vinik24

```ruby
set_predefined_palette(:vinik24)
```

<div class='swatches'>
<span style='background-color: #000000'><span>0</span></span>
<span style='background-color: #6f6776'><span>1</span></span>
<span style='background-color: #9a9a97'><span>2</span></span>
<span style='background-color: #c5ccb8'><span>3</span></span>
<span style='background-color: #8b5580'><span>4</span></span>
<span style='background-color: #c38890'><span>5</span></span>
<span style='background-color: #a593a5'><span>6</span></span>
<span style='background-color: #666092'><span>7</span></span>
<span style='background-color: #9a4f50'><span>8</span></span>
<span style='background-color: #c28d75'><span>9</span></span>
<span style='background-color: #7ca1c0'><span>10</span></span>
<span style='background-color: #416aa3'><span>11</span></span>
<span style='background-color: #8d6268'><span>12</span></span>
<span style='background-color: #be955c'><span>13</span></span>
<span style='background-color: #68aca9'><span>14</span></span>
<span style='background-color: #387080'><span>15</span></span>
<span style='background-color: #6e6962'><span>16</span></span>
<span style='background-color: #93a167'><span>17</span></span>
<span style='background-color: #6eaa78'><span>18</span></span>
<span style='background-color: #557064'><span>19</span></span>
<span style='background-color: #9d9f7f'><span>20</span></span>
<span style='background-color: #7e9e99'><span>21</span></span>
<span style='background-color: #5d6872'><span>22</span></span>
<span style='background-color: #433455'><span>23</span></span>
</div>

#### Winter wonderland

```ruby
set_predefined_palette(:winter_wonderland)
```

<div class='swatches'>
<span style='background-color: #20284e'><span>0</span></span>
<span style='background-color: #2c4a78'><span>1</span></span>
<span style='background-color: #3875a1'><span>2</span></span>
<span style='background-color: #8bcadd'><span>3</span></span>
<span style='background-color: #ffffff'><span>4</span></span>
<span style='background-color: #d6e1e9'><span>5</span></span>
<span style='background-color: #a7bcc9'><span>6</span></span>
<span style='background-color: #738d9d'><span>7</span></span>
</div>

#### Zughy 32

```ruby
set_predefined_palette(:zughy_32)
```

<div class='swatches'>
<span style='background-color: #472d3c'><span>0</span></span>
<span style='background-color: #5e3643'><span>1</span></span>
<span style='background-color: #7a444a'><span>2</span></span>
<span style='background-color: #a05b53'><span>3</span></span>
<span style='background-color: #bf7958'><span>4</span></span>
<span style='background-color: #eea160'><span>5</span></span>
<span style='background-color: #f4cca1'><span>6</span></span>
<span style='background-color: #b6d53c'><span>7</span></span>
<span style='background-color: #71aa34'><span>8</span></span>
<span style='background-color: #397b44'><span>9</span></span>
<span style='background-color: #3c5956'><span>10</span></span>
<span style='background-color: #302c2e'><span>11</span></span>
<span style='background-color: #5a5353'><span>12</span></span>
<span style='background-color: #7d7071'><span>13</span></span>
<span style='background-color: #a0938e'><span>14</span></span>
<span style='background-color: #cfc6b8'><span>15</span></span>
<span style='background-color: #dff6f5'><span>16</span></span>
<span style='background-color: #8aebf1'><span>17</span></span>
<span style='background-color: #28ccdf'><span>18</span></span>
<span style='background-color: #3978a8'><span>19</span></span>
<span style='background-color: #394778'><span>20</span></span>
<span style='background-color: #39314b'><span>21</span></span>
<span style='background-color: #564064'><span>22</span></span>
<span style='background-color: #8e478c'><span>23</span></span>
<span style='background-color: #cd6093'><span>24</span></span>
<span style='background-color: #ffaeb6'><span>25</span></span>
<span style='background-color: #f4b41b'><span>26</span></span>
<span style='background-color: #f47e1b'><span>27</span></span>
<span style='background-color: #e6482e'><span>28</span></span>
<span style='background-color: #a93b3b'><span>29</span></span>
<span style='background-color: #827094'><span>30</span></span>
<span style='background-color: #4f546b'><span>31</span></span>
</div>

<!-- palettes end -->
