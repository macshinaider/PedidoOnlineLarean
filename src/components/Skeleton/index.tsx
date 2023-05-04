import { SkeletonElement } from "./styles"

export interface SkeletonProps {
  type: 'title' | 'text' | 'image' | 'thumbnail'
}

export function Skeleton({ type }: SkeletonProps) {
  // eslint-disable-next-line react/jsx-no-undef
  return <SkeletonElement type={type} />
}
