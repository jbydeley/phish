import About from './about.svelte'
import { render } from '@testing-library/svelte'

it('works', async () => {
  const { getByText } = render(About)
  const title = getByText('About this site')

  expect(title.textContent).toBe('About this site')
})