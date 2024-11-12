<%*
await tp.file.move(`base/daily/${tp.file.title}`);

let titleDate = moment(tp.file.title);

// # 2023/01/01 - Sunday
tR += '# ' + titleDate.format('dddd, DD MMMM YYYY') + '\n';

// 2023 / Q1 / January / Week 1
tR += '[[' + titleDate.format('YYYY') + ']] / ';
tR += '[[' + titleDate.format('YYYY-[Q]Q') + '|' + titleDate.format('[Q]Q') + ']] / ';
tR += '[[' + titleDate.format('YYYY-MM') + '|' + titleDate.format('MMMM') + ']] / ';
tR += '[[' + titleDate.format('gggg-[W]WW') + '|' + titleDate.format('[Week] w') + ']]';
tR += '\n\n';

// ❮ 2022-12-31 | 2023-01-01 | 2023-01-02 ❯
tR += '❮ [[' + titleDate.subtract(1, 'days').format('YYYY-MM-DD') + ']]';
tR += ' | ' + titleDate.add(1, 'days').format('YYYY-MM-DD') + ' | ';
tR += '[[' + titleDate.add(1, 'days').format('YYYY-MM-DD') + ']] ❯';
titleDate.subtract(1, 'days');
%>

---
# todos
- [ ] 
# personal todos
- [ ] 
