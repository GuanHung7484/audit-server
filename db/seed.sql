-- ════════════════════════════════════════════════════════════════
-- 初始資料：8 家預設客戶
-- 注意：管理員帳號由 Node.js 程式在啟動時建立（會 hash 密碼）
-- ════════════════════════════════════════════════════════════════

INSERT INTO clients (name, locked, sort_order, aliases) VALUES
  ('小北',     TRUE, 1, ARRAY['小北', '小鵲小北']),
  ('小笠方',   TRUE, 2, ARRAY['小笠方', '笠方']),
  ('工廠',     TRUE, 3, ARRAY['工廠']),
  ('巨城',     TRUE, 4, ARRAY['巨城', '小鵲巨城']),
  ('東南',     TRUE, 5, ARRAY['東南', '小鵲東南']),
  ('玉蘭',     TRUE, 6, ARRAY['玉蘭']),
  ('竹北',     TRUE, 7, ARRAY['竹北', '小鵲竹北']),
  ('台中美村', TRUE, 8, ARRAY['台中美村', '美村', '小鵲美村'])
ON CONFLICT (name) DO NOTHING;

-- 預設應用設定
INSERT INTO app_settings (key, value) VALUES
  ('initialized', 'true'::jsonb)
ON CONFLICT (key) DO NOTHING;
