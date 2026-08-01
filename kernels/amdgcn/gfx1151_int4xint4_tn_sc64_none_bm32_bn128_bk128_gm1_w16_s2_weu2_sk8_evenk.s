	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v23, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v9, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v12, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 3, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v24, 0, v10
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v25, 0, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s13, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s14
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s13, s14, s13
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s15, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s18, s15
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s13
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s18
	s_abs_i32 s13, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v23
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s19, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_sub_i32 s7, 0, s18
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s19
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s19, s13, s6
	s_xor_b32 s6, s2, s15
	s_mul_i32 s20, s19, s18
	s_ashr_i32 s26, s6, 31
	s_sub_i32 s13, s13, s20
	s_add_i32 s20, s19, 1
	s_sub_i32 s21, s13, s18
	s_cmp_ge_u32 s13, s18
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s19, s20, s19
	s_cselect_b32 s13, s21, s13
	s_add_i32 s20, s19, 1
	s_cmp_ge_u32 s13, s18
	s_cselect_b32 s13, s20, s19
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s12, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s27, s13, s26
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s24, s3, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s12, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s18
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s19, s27, s26
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s24, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s28, s12, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s12, s19, s15
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s15, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s14
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s13, s34, s24
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s19, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s15, s15, 6
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s14, s2, 5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s18, s35, s24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s13, s14, v4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s18, s33, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s12, s3, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s18, s6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s19, s7
	s_and_b32 s17, s17, 0xffff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v8, v4, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[6:7], v5, s[16:19], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v12
	s_mov_b32 s18, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v24, v8 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v25, v[6:7]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b64 s[22:23], s[6:7]
	s_mov_b32 s18, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr20_sgpr21
.LBB0_3:                                ; %Flow147
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v26, v4, v23
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v20, 0x70, v5
	v_bfe_u32 v21, v0, 4, 1
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v22, 0, v26
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	s_and_not1_b32 vcc_lo, exec_lo, s18
	s_add_i32 s0, s15, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s24, 32
	v_add3_u32 v4, s14, v4, v23
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v6, s1, v3
	v_lshlrev_b32_e32 v28, 1, v21
	v_sub_nc_u32_e32 v27, s28, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s15, v4
	v_mul_lo_u32 v8, s35, v6
	v_mul_lo_u32 v6, s34, v6
	s_lshl_b32 s19, s27, 7
	s_lshl_b32 s18, s26, 8
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	v_add3_u32 v2, v8, s19, v2
	v_add3_u32 v32, v6, s14, v1
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v7, 0xe0, v0
	v_lshlrev_b32_e32 v30, 1, v4
	v_add_nc_u32_e32 v5, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v6, v1
	v_mov_b32_e32 v4, v1
	v_lshl_or_b32 v3, s27, 8, v7
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v17, 0
	v_subrev_nc_u32_e32 v29, s18, v3
	s_lshl_b32 s18, s26, 7
	v_mov_b32_e32 v3, v1
	v_subrev_nc_u32_e32 v31, s18, v2
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v33, v5, v20
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v16, 0
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b64 s[20:21], s[8:9]
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_max_i32 s36, s0, 1
	s_lshl_b32 s37, s35, 1
	s_lshl_b32 s38, s35, 5
	s_lshl_b32 s34, s34, 5
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v34, v30, s[28:31], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v30, 2, v30
	s_add_i32 s36, s36, -1
	s_add_i32 s1, s1, 32
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s36, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v34
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v34, 0x80000000, v32, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v32, s34, v32
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v49, v34, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v34, 0x80000000, v31, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v31, s38, v31
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[42:43], v34, s[16:19], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v34, v22 offset:4256
	ds_load_u8 v35, v22 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v22 offset:4320
	ds_load_u8 v36, v22 offset:4288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v35, 16, v34
	ds_load_u8 v34, v22 offset:4192
	ds_load_u8 v35, v22 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v22 offset:4096
	ds_load_u8 v36, v22 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v34, 16, v35
	ds_load_u8 v34, v33 offset:640
	ds_load_u8 v35, v33 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v33 offset:896
	ds_load_u8 v36, v33 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v35, 16, v34
	ds_load_u8 v34, v33 offset:128
	ds_load_u8 v35, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v33 offset:384
	ds_load_u8 v36, v33 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[44:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v44, v22 offset:4512
	ds_load_u8 v45, v22 offset:4480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v22 offset:4576
	ds_load_u8 v46, v22 offset:4544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	ds_load_u8 v44, v22 offset:4384
	ds_load_u8 v46, v22 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v22 offset:4448
	ds_load_u8 v47, v22 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v46, 16, v44
	ds_load_u8 v46, v33 offset:1664
	ds_load_u8 v47, v33 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v33 offset:1920
	ds_load_u8 v50, v33 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v33 offset:1152
	ds_load_u8 v50, v33 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v50, v46, 0xc0c0004
	ds_load_u8 v50, v33 offset:1408
	ds_load_u8 v51, v33 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v50, 16, v46
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[44:45], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v44, v22 offset:4768
	ds_load_u8 v45, v22 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v22 offset:4832
	ds_load_u8 v46, v22 offset:4800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	ds_load_u8 v44, v22 offset:4640
	ds_load_u8 v46, v22 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v22 offset:4704
	ds_load_u8 v47, v22 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v46, 16, v44
	ds_load_u8 v46, v33 offset:2688
	ds_load_u8 v47, v33 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v33 offset:2944
	ds_load_u8 v50, v33 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v33 offset:2176
	ds_load_u8 v50, v33 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v50, v46, 0xc0c0004
	ds_load_u8 v50, v33 offset:2432
	ds_load_u8 v51, v33 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v50, 16, v46
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[44:45], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v44, v22 offset:5024
	ds_load_u8 v45, v22 offset:4992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v22 offset:5088
	ds_load_u8 v46, v22 offset:5056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v45, 16, v44
	ds_load_u8 v44, v22 offset:4896
	ds_load_u8 v46, v22 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v22 offset:4960
	ds_load_u8 v47, v22 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v46, 16, v44
	ds_load_u8 v46, v33 offset:3712
	ds_load_u8 v47, v33 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v33 offset:3968
	ds_load_u8 v50, v33 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v33 offset:3200
	ds_load_u8 v50, v33 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v50, v46, 0xc0c0004
	ds_load_u8 v50, v33 offset:3456
	ds_load_u8 v51, v33 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v50, 16, v46
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[44:45], v[34:41] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v44, v28, v29
	s_clause 0x7
	buffer_load_u16 v45, v44, s[24:27], 0 offen
	buffer_load_u16 v46, v44, s[24:27], 0 offen offset:4
	buffer_load_u16 v47, v44, s[24:27], 0 offen offset:8
	buffer_load_u16 v50, v44, s[24:27], 0 offen offset:12
	buffer_load_u16 v51, v44, s[24:27], 0 offen offset:16
	buffer_load_u16 v52, v44, s[24:27], 0 offen offset:20
	buffer_load_u16 v53, v44, s[24:27], 0 offen offset:24
	buffer_load_u16 v44, v44, s[24:27], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_dual_mul_f32 v34, v48, v34 :: v_dual_add_nc_u32 v29, s37, v29
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b16 v24, v49 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(8)
	ds_store_b64 v25, v[42:43]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v11, v34, v45 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v35, v48, v35 :: v_dual_lshlrev_b32 v50, 16, v50
	v_mul_f32_e32 v37, v48, v37
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v36, v48, v36 :: v_dual_lshlrev_b32 v51, 16, v51
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v39, v48, v39 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v48, v41 :: v_dual_lshlrev_b32 v44, 16, v44
	v_dual_mul_f32 v38, v48, v38 :: v_dual_fmac_f32 v15, v39, v52
	v_dual_mul_f32 v40, v48, v40 :: v_dual_fmac_f32 v17, v37, v50
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v19, v35, v46 :: v_dual_fmac_f32 v18, v36, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v13, v41, v44 :: v_dual_fmac_f32 v16, v38, v51
	v_fmac_f32_e32 v14, v40, v53
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow148
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s15, v26
	s_mul_i32 s1, s14, s15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v25, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add3_u32 v7, 0, v23, v20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v3, v22 offset:4256
	ds_load_u8 v4, v22 offset:4320
	ds_load_u8 v5, v22 offset:4288
	ds_load_u8 v6, v22 offset:4224
	ds_load_u8 v8, v22 offset:4192
	ds_load_u8 v23, v22 offset:4160
	ds_load_u8 v24, v22 offset:4096
	ds_load_u8 v25, v22 offset:4128
	ds_load_u8 v26, v7 offset:640
	ds_load_u8 v27, v7 offset:896
	ds_load_u8 v28, v7 offset:768
	ds_load_u8 v29, v7 offset:512
	ds_load_u8 v30, v7 offset:128
	ds_load_u8 v31, v7 offset:256
	ds_load_u8 v32, v7
	ds_load_u8 v33, v7 offset:384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v6, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v23, v8, 0xc0c0004
	v_mov_b32_e32 v23, 0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v24, v25, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v29, v26, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v6
	v_mov_b32_e32 v27, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v32, v30, 0xc0c0004
	ds_load_u8 v32, v22 offset:4512
	ds_load_u8 v34, v22 offset:4576
	ds_load_u8 v35, v22 offset:4544
	ds_load_u8 v36, v22 offset:4480
	ds_load_u8 v37, v22 offset:4384
	ds_load_u8 v38, v22 offset:4448
	ds_load_u8 v39, v22 offset:4416
	ds_load_u8 v40, v22 offset:4352
	ds_load_u8 v41, v7 offset:1664
	ds_load_u8 v42, v7 offset:1920
	ds_load_u8 v43, v7 offset:1792
	ds_load_u8 v44, v7 offset:1536
	ds_load_u8 v45, v7 offset:1152
	ds_load_u8 v46, v7 offset:1408
	ds_load_u8 v47, v7 offset:1280
	ds_load_u8 v48, v7 offset:1024
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v26, v31, v33, 0xc0c0004
	v_lshl_or_b32 v6, v24, 16, v8
	v_mov_b32_e32 v24, v23
	v_mov_b32_e32 v28, v23
	v_mov_b32_e32 v29, v23
	v_lshl_or_b32 v5, v26, 16, v25
	v_mov_b32_e32 v25, v23
	v_mov_b32_e32 v26, v23
	v_mov_b32_e32 v30, v23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v36, v32, 0xc0c0004
	v_perm_b32 v31, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v40, v37, 0xc0c0004
	v_perm_b32 v33, v39, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[23:30], v[5:6], v[3:4], v[23:30] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v35, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v44, v41, 0xc0c0004
	v_lshl_or_b32 v4, v31, 16, v8
	v_lshl_or_b32 v3, v33, 16, v32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v48, v45, 0xc0c0004
	v_lshl_or_b32 v6, v35, 16, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, v37, 16, v36
	ds_load_u8 v8, v22 offset:4768
	ds_load_u8 v31, v22 offset:4832
	ds_load_u8 v32, v22 offset:4800
	ds_load_u8 v33, v22 offset:4736
	ds_load_u8 v34, v22 offset:4640
	ds_load_u8 v35, v22 offset:4704
	ds_load_u8 v36, v22 offset:4672
	ds_load_u8 v37, v22 offset:4608
	ds_load_u8 v38, v7 offset:2688
	ds_load_u8 v39, v7 offset:2944
	ds_load_u8 v40, v7 offset:2816
	ds_load_u8 v41, v7 offset:2560
	ds_load_u8 v42, v7 offset:2176
	ds_load_u8 v43, v7 offset:2432
	ds_load_u8 v44, v7 offset:2304
	ds_load_u8 v45, v7 offset:2048
	ds_load_u8 v46, v22 offset:5024
	ds_load_u8 v47, v22 offset:5088
	ds_load_u8 v48, v22 offset:5056
	ds_load_u8 v49, v22 offset:4992
	ds_load_u8 v50, v22 offset:4896
	ds_load_u8 v51, v22 offset:4960
	ds_load_u8 v52, v22 offset:4928
	ds_load_u8 v22, v22 offset:4864
	ds_load_u8 v53, v7 offset:3712
	ds_load_u8 v54, v7 offset:3968
	ds_load_u8 v55, v7 offset:3840
	ds_load_u8 v56, v7 offset:3584
	ds_load_u8 v57, v7 offset:3200
	ds_load_u8 v58, v7 offset:3456
	ds_load_u8 v59, v7 offset:3328
	ds_load_u8 v7, v7 offset:3072
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v8, v33, v8, 0xc0c0004
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v32, v37, v34, 0xc0c0004
	v_perm_b32 v33, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v34, v41, v38, 0xc0c0004
	v_perm_b32 v35, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v36, v45, v42, 0xc0c0004
	v_perm_b32 v37, v44, v43, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[23:30], v[5:6], v[3:4], v[23:30] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v31, 16, v8
	v_lshl_or_b32 v3, v33, 16, v32
	v_lshl_or_b32 v6, v35, 16, v34
	v_lshl_or_b32 v5, v37, 16, v36
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v49, v46, 0xc0c0004
	v_perm_b32 v31, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v22, v50, 0xc0c0004
	v_perm_b32 v32, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v56, v53, 0xc0c0004
	v_perm_b32 v34, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v57, 0xc0c0004
	v_perm_b32 v35, v59, v58, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[23:30], v[5:6], v[3:4], v[23:30] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v31, 16, v8
	v_lshl_or_b32 v3, v32, 16, v22
	v_lshl_or_b32 v6, v34, 16, v33
	v_lshl_or_b32 v5, v35, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[23:30], v[5:6], v[3:4], v[23:30] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v3, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v24
	v_cvt_f32_i32_e32 v5, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v8, v27
	v_cvt_f32_i32_e32 v24, v28
	v_cvt_f32_i32_e32 v25, v29
	v_cvt_f32_i32_e32 v6, v30
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v20, v21, v20
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
	v_mov_b16_e32 v30.l, 0
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v30.h, v2.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v20, s0, v20, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s10
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v3, v3, v30 :: v_dual_add_nc_u32 v22, 4, v20
	v_dual_mul_f32 v4, v4, v30 :: v_dual_add_nc_u32 v23, 8, v20
	v_dual_mul_f32 v5, v5, v30 :: v_dual_add_nc_u32 v26, 12, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v20, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v8, v8, v30 :: v_dual_add_nc_u32 v27, 16, v20
	v_dual_mul_f32 v7, v7, v30 :: v_dual_add_nc_u32 v28, 20, v20
	v_dual_mul_f32 v24, v24, v30 :: v_dual_add_nc_u32 v29, 24, v20
	v_dual_mul_f32 v25, v25, v30 :: v_dual_add_nc_u32 v20, 28, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	s_clause 0x7
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v6, v6, v30 :: v_dual_and_b32 v31, 0x180, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v35, 0x60, v10
	v_and_b32_e32 v10, 28, v10
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v32, 7, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v37, 5, v0
	v_lshrrev_b32_e32 v31, 5, v31
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v2, 0x7f, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_or_b32 v9, 0xf00, v9, v10
	v_lshlrev_b32_e32 v33, 10, v0
	v_lshlrev_b32_e32 v34, 2, v0
	v_bfe_i32 v36, v0, 3, 1
	v_lshlrev_b32_e32 v1, 2, v1
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v0, s35, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v32, 32, v37
	v_xor_b32_e32 v9, v9, v31
	v_and_b32_e32 v36, 0x2040, v36
	v_and_or_b32 v34, 0x31c, v34, v35
	v_lshrrev_b32_e32 v12, 1, v12
	v_and_b32_e32 v10, 0x1c00, v33
	v_or3_b32 v1, v32, v1, v9
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s0, s14, s35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_xor_b32_e32 v30, v34, v36
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_add3_u32 v31, s0, s33, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v37, 0, v1
	v_xad_u32 v38, 0x1010, v1, 0
	v_xad_u32 v39, 0x2040, v1, 0
	v_xad_u32 v40, 0x3050, v1, 0
	v_or3_b32 v2, v10, v12, v30
	s_barrier
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_lshl_add_u32 v33, s35, 2, v0
	v_lshl_add_u32 v30, s35, 3, v0
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s13, s13, 0xffff
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v9, 0, v2
	v_xad_u32 v10, v2, 4, 0
	v_xad_u32 v12, v2, 8, 0
	v_xad_u32 v32, v2, 12, 0
	v_xad_u32 v34, v2, 16, 0
	v_xad_u32 v35, v2, 20, 0
	v_xad_u32 v36, v2, 24, 0
	v_xad_u32 v2, v2, 28, 0
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v21
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v23, 16, v26
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v28
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v29
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v3, v1, v11
	v_fma_f32 v3, v4, v21, v19
	v_fma_f32 v4, v5, v22, v18
	v_fma_f32 v5, v7, v23, v17
	v_fma_f32 v7, v8, v26, v16
	v_fma_f32 v8, v24, v27, v15
	v_fma_f32 v6, v6, v20, v13
	v_fma_f32 v21, v25, v28, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v11, v1, s2
	v_cndmask_b32_e64 v3, v19, v3, s2
	v_cndmask_b32_e64 v4, v18, v4, s2
	v_cndmask_b32_e64 v5, v17, v5, s2
	v_cndmask_b32_e64 v7, v16, v7, s2
	v_cndmask_b32_e64 v8, v15, v8, s2
	v_cndmask_b32_e64 v6, v13, v6, s2
	v_cndmask_b32_e64 v11, v14, v21, s2
	ds_store_b32 v9, v1
	ds_store_b32 v10, v3
	ds_store_b32 v12, v4
	ds_store_b32 v32, v5
	ds_store_b32 v34, v7
	ds_store_b32 v35, v8
	ds_store_b32 v36, v11
	ds_store_b32 v2, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v37 offset1:32
	ds_load_2addr_b32 v[3:4], v38 offset1:32
	ds_load_2addr_b32 v[5:6], v39 offset1:32
	ds_load_2addr_b32 v[7:8], v40 offset1:32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_lshl_add_u32 v14, s35, 4, v0
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v15, v31, v30, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v14, v31, v14, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[9:10], null, s35, 12, v[0:1]
	v_mad_u64_u32 v[10:11], null, s35, 20, v[0:1]
	v_mad_u64_u32 v[11:12], null, s35, 24, v[0:1]
	v_mad_u64_u32 v[12:13], null, s35, 28, v[0:1]
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v0, v31, v0, 2
	v_add_lshl_u32 v13, v31, v33, 2
	v_add_lshl_u32 v9, v31, v9, 2
	v_add_lshl_u32 v10, v31, v10, 2
	v_add_lshl_u32 v11, v31, v11, 2
	buffer_atomic_add_f32 v1, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v13, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v15, s[12:15], 0 offen
	v_add_lshl_u32 v0, v31, v12, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v7, v9, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v14, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v10, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v11, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v0, s[12:15], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 60
		.amdhsa_next_free_sgpr 39
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 40
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_vgpr, 60
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5028
; TotalNumSgprs: 41
; NumVgprs: 60
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 7
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 60
; Occupancy: 16
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     60
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
