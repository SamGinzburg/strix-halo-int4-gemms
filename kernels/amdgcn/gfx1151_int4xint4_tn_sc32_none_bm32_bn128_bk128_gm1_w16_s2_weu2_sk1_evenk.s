	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v7, 4, v0
	v_and_b32_e32 v22, 15, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v23, 0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s14, 31
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
	s_sub_i32 s18, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s18
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s13, s18, s13
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s19, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s20, s19
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s13
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s20
	s_abs_i32 s13, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v1, 31, v0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s21, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_sub_i32 s7, 0, s20
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 2, v1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s14, v3, v[1:2]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s7, s7, s6
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s15, v3, v[2:3]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s21, s13, s6
	s_xor_b32 s6, s2, s19
	s_mul_i32 s22, s21, s20
	s_ashr_i32 s26, s6, 31
	s_sub_i32 s13, s13, s22
	s_add_i32 s22, s21, 1
	s_sub_i32 s23, s13, s20
	s_cmp_ge_u32 s13, s20
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s21, s22, s21
	s_cselect_b32 s13, s23, s13
	s_add_i32 s22, s21, 1
	s_cmp_ge_u32 s13, s20
	s_cselect_b32 s13, s22, s21
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s20, s12, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s27, s13, s26
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s24, s3, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s12, 31
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s20
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s22, s27, s26
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s24, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s28, s12, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s12, s22, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s21, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s18
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s13, s14, s24
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s22, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s35, s19, 5
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s20, s15, s24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s21, 31
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s13, s34, v4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s20, s33, v5
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
	buffer_load_u8 v6, v4, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	v_lshlrev_b32_e32 v4, 2, v0
	s_mov_b32 s18, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v24, 0, v4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v4, 16, v7
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v23, v6 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v5
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
.LBB0_3:                                ; %Flow125
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v18, v4, v22
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v19, 0x70, v9
	v_bfe_u32 v20, v0, 4, 1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v21, 0, v18
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s18
	s_add_i32 s0, s35, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s24, 16
	v_add3_u32 v4, s34, v4, v22
	v_add_nc_u32_e32 v6, s1, v3
	v_sub_nc_u32_e32 v25, s28, v3
	s_lshl_b32 s19, s27, 7
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v5, 0, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v8, s15, v6
	v_mul_lo_u32 v6, s14, v6
	v_mul_lo_u32 v4, s35, v4
	s_lshl_b32 s18, s26, 8
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v31, v5, v19
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_add3_u32 v2, v8, s19, v2
	v_add3_u32 v30, v6, s34, v1
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v7, 0xe0, v0
	v_lshlrev_b32_e32 v26, 1, v20
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v28, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v4, v1
	v_lshl_or_b32 v3, s27, 8, v7
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v27, s18, v3
	s_lshl_b32 s18, s26, 7
	v_mov_b32_e32 v3, v1
	v_subrev_nc_u32_e32 v29, s18, v2
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b64 s[20:21], s[8:9]
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_max_i32 s36, s0, 1
	s_lshl_b32 s37, s15, 1
	s_lshl_b32 s38, s15, 4
	s_lshl_b32 s14, s14, 4
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v25
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v48, v28, s[28:31], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s36, s36, -1
	s_add_i32 s1, s1, 16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v33, 0x80000000, v30 :: v_dual_add_nc_u32 v32, v26, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s36, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u8 v49, v33, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v50, v32, s[24:27], 0 offen offset:4
	buffer_load_u16 v51, v32, s[24:27], 0 offen
	buffer_load_u16 v52, v32, s[24:27], 0 offen offset:12
	buffer_load_u16 v53, v32, s[24:27], 0 offen offset:8
	buffer_load_u16 v54, v32, s[24:27], 0 offen offset:20
	buffer_load_u16 v55, v32, s[24:27], 0 offen offset:16
	buffer_load_u16 v56, v32, s[24:27], 0 offen offset:28
	buffer_load_u16 v57, v32, s[24:27], 0 offen offset:24
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v32, 0x80000000, v29, vcc_lo
	buffer_load_b32 v58, v32, s[16:19], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v32, v21 offset:2208
	ds_load_u8 v33, v21 offset:2272
	ds_load_u8 v34, v21 offset:2240
	ds_load_u8 v35, v21 offset:2176
	ds_load_u8 v36, v21 offset:2144
	ds_load_u8 v37, v21 offset:2112
	ds_load_u8 v38, v21 offset:2048
	ds_load_u8 v39, v21 offset:2080
	ds_load_u8 v40, v31 offset:640
	ds_load_u8 v41, v31 offset:896
	ds_load_u8 v42, v31 offset:768
	ds_load_u8 v43, v31 offset:512
	ds_load_u8 v44, v31 offset:128
	ds_load_u8 v45, v31 offset:384
	ds_load_u8 v46, v31 offset:256
	ds_load_u8 v47, v31
	ds_load_u8 v59, v21 offset:2464
	ds_load_u8 v60, v21 offset:2528
	ds_load_u8 v61, v21 offset:2496
	ds_load_u8 v62, v21 offset:2432
	ds_load_u8 v63, v21 offset:2336
	ds_load_u8 v64, v21 offset:2400
	ds_load_u8 v65, v21 offset:2368
	ds_load_u8 v66, v21 offset:2304
	ds_load_u8 v67, v31 offset:1664
	ds_load_u8 v68, v31 offset:1920
	ds_load_u8 v69, v31 offset:1792
	ds_load_u8 v70, v31 offset:1536
	ds_load_u8 v71, v31 offset:1152
	ds_load_u8 v72, v31 offset:1280
	ds_load_u8 v73, v31 offset:1024
	ds_load_u8 v74, v31 offset:1408
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v32, v35, v32, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v34, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v35, v38, v39, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v36, v43, v40, 0xc0c0004
	v_perm_b32 v37, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v47, v44, 0xc0c0004
	v_perm_b32 v39, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v62, v59, 0xc0c0004
	v_perm_b32 v45, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v47, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v66, v63, 0xc0c0004
	v_lshl_or_b32 v41, v33, 16, v32
	v_lshl_or_b32 v40, v34, 16, v35
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v60, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v59, v70, v67, 0xc0c0004
	v_lshl_or_b32 v43, v37, 16, v36
	v_lshl_or_b32 v42, v39, 16, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v61, v73, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v72, v74, 0xc0c0004
	v_lshl_or_b32 v45, v45, 16, v44
	v_lshl_or_b32 v44, v47, 16, v46
	v_lshl_or_b32 v47, v60, 16, v59
	v_wmma_i32_16x16x16_iu4 v[32:39], v[42:43], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v62, 16, v61
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b8 v23, v49 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v58
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[32:39], v[46:47], v[44:45], v[32:39] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v46, 16, v56
	v_lshlrev_b32_e32 v42, 16, v52
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v40, 16, v48
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v51
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v35, v40, v35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v53
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v15, v35, v42
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v32, v40, v32 :: v_dual_add_nc_u32 v27, s37, v27
	v_dual_mul_f32 v33, v40, v33 :: v_dual_add_nc_u32 v28, 2, v28
	v_dual_mul_f32 v37, v40, v37 :: v_dual_add_nc_u32 v30, s14, v30
	v_dual_mul_f32 v34, v40, v34 :: v_dual_add_nc_u32 v29, s38, v29
	v_mul_f32_e32 v36, v40, v36
	v_mul_f32_e32 v39, v40, v39
	v_mul_f32_e32 v38, v40, v38
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v40, 16, v50
	v_lshlrev_b32_e32 v44, 16, v54
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v10, v32, v41 :: v_dual_lshlrev_b32 v45, 16, v55
	v_dual_fmac_f32 v16, v34, v43 :: v_dual_lshlrev_b32 v47, 16, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v17, v33, v40 :: v_dual_fmac_f32 v14, v36, v45
	v_dual_fmac_f32 v13, v37, v44 :: v_dual_fmac_f32 v12, v38, v47
	v_fmac_f32_e32 v11, v39, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s35, v18
	s_mul_i32 s1, s34, s35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s1, v1, 1
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add3_u32 v2, 0, v22, v19
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v3, v21 offset:2208
	ds_load_u8 v4, v21 offset:2272
	ds_load_u8 v5, v21 offset:2240
	ds_load_u8 v6, v21 offset:2176
	ds_load_u8 v7, v21 offset:2144
	ds_load_u8 v8, v21 offset:2112
	ds_load_u8 v22, v21 offset:2048
	ds_load_u8 v23, v21 offset:2080
	ds_load_u8 v24, v2 offset:640
	ds_load_u8 v25, v2 offset:896
	ds_load_u8 v26, v2 offset:768
	ds_load_u8 v27, v2 offset:512
	ds_load_u8 v28, v2 offset:128
	ds_load_u8 v29, v2 offset:256
	ds_load_u8 v30, v2
	ds_load_u8 v31, v2 offset:384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v6, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v22, v23, 0xc0c0004
	v_lshl_or_b32 v3, v4, 16, v3
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v8, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v27, v24, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v22, v30, v28, 0xc0c0004
	ds_load_u8 v30, v21 offset:2464
	ds_load_u8 v32, v21 offset:2528
	ds_load_u8 v33, v21 offset:2496
	ds_load_u8 v34, v21 offset:2432
	ds_load_u8 v35, v21 offset:2336
	ds_load_u8 v36, v21 offset:2400
	ds_load_u8 v37, v21 offset:2368
	ds_load_u8 v38, v21 offset:2304
	ds_load_u8 v39, v2 offset:1664
	ds_load_u8 v40, v2 offset:1920
	ds_load_u8 v41, v2 offset:1792
	ds_load_u8 v42, v2 offset:1536
	ds_load_u8 v43, v2 offset:1152
	ds_load_u8 v44, v2 offset:1408
	ds_load_u8 v45, v2 offset:1280
	ds_load_u8 v46, v2 offset:1024
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v29, v31, 0xc0c0004
	v_mov_b32_e32 v21, 0
	v_lshl_or_b32 v2, v5, 16, v6
	v_lshl_or_b32 v5, v8, 16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v23, 16, v22
	v_mov_b32_e32 v22, v21
	v_mov_b32_e32 v23, v21
	v_mov_b32_e32 v24, v21
	v_mov_b32_e32 v25, v21
	v_mov_b32_e32 v26, v21
	v_mov_b32_e32 v27, v21
	v_mov_b32_e32 v28, v21
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v34, v30, 0xc0c0004
	v_perm_b32 v7, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v38, v35, 0xc0c0004
	v_perm_b32 v29, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v42, v39, 0xc0c0004
	v_perm_b32 v31, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v46, v43, 0xc0c0004
	v_perm_b32 v33, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[21:28], v[4:5], v[2:3], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v7, 16, v6
	v_lshl_or_b32 v2, v29, 16, v8
	v_lshl_or_b32 v5, v31, 16, v30
	v_lshl_or_b32 v4, v33, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[4:5], v[2:3], v[21:28] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v2, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v22
	v_cvt_f32_i32_e32 v8, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v24
	v_cvt_f32_i32_e32 v3, v25
	v_cvt_f32_i32_e32 v4, v26
	v_cvt_f32_i32_e32 v5, v27
	v_cvt_f32_i32_e32 v6, v28
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v19, v20, v19
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s15
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v28.h, v1.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_or_b32_e32 v1, s34, v18
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v19, s0, v19, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s10
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v18, 0x5410 :: v_dual_add_nc_u32 v21, 4, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v20, 0x80000000, v19, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v29, 0x7632 :: v_dual_add_nc_u32 v22, 8, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v28.l, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v24, 12, v19
	v_add_nc_u32_e32 v25, 16, v19
	s_clause 0x1
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v23, v23, v28 :: v_dual_add_nc_u32 v26, 20, v19
	v_dual_mul_f32 v8, v8, v28 :: v_dual_add_nc_u32 v27, 24, v19
	v_dual_mul_f32 v4, v4, v28 :: v_dual_add_nc_u32 v19, 28, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v7, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v2, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_clause 0x5
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v3, v3, v28
	v_mul_f32_e32 v6, v6, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v30.h, v28.l
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v31.h, v28.l
	v_mov_b16_e32 v32.h, v28.l
	v_mov_b16_e32 v33.h, v28.l
	v_mov_b16_e32 v34.h, v28.l
	v_mov_b16_e32 v35.h, v28.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v5, v5, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v28.h, v28.l
	v_mov_b16_e32 v36.h, v28.l
	s_mov_b32 s7, 0x76543210
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v20, v10
	v_fma_f32 v7, v7, v21, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v10, v2, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v24
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v25
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v17, v7, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v30.l, v2.h
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v23, v22, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v24, v14
	v_fma_f32 v8, v8, v20, v16
	v_fma_f32 v6, v6, v19, v11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v15, v10, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v31.l, v7.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v14, v3, s2
	v_cndmask_b32_e64 v8, v16, v8, s2
	v_cndmask_b32_e64 v6, v11, v6, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v11, 1, v30
	v_mov_b16_e32 v32.l, v10.h
	v_cmp_o_f32_e64 s1, v10, v10
	v_mov_b16_e32 v35.l, v3.h
	v_mov_b16_e32 v28.l, v6.h
	v_add3_u32 v2, v2, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v6, v6
	v_cmp_o_f32_e64 s4, v3, v3
	v_and_b32_e32 v14, 1, v35
	v_mov_b16_e32 v33.l, v8.h
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v11, 1, v32
	v_and_b32_e32 v0, 1, v28
	v_add3_u32 v3, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v10, v11, 0x7fff
	v_add3_u32 v0, v6, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v25, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v25, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v13, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v34
	v_add3_u32 v4, v4, v13, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v3.h, s4
	v_cndmask_b32_e32 v13, 0x3276, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v26, 16, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v6, v13, 8, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v26, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v6, 0x760076, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v12, v5, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v12, 1, v31
	v_cmp_o_f32_e64 s2, v8, v8
	v_mov_b16_e32 v36.l, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v7, v12, 0x7fff
	v_and_b32_e32 v12, 1, v33
	v_cmp_o_f32_e64 s6, v5, v5
	v_and_b32_e32 v3, 1, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s0
	v_add3_u32 v7, v8, v12, 0x7fff
	v_cndmask_b32_e32 v12, 0x1054, v18, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cndmask_b32_e32 v8, v4, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v10.l, 0x7fff, v7.h, s2
	v_lshl_or_b32 v5, v12, 8, v12
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v7, v1, s15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s6
	v_cndmask_b32_e32 v1, v2, v4, vcc_lo
	v_lshl_or_b32 v3, v6, 4, v6
	v_and_b32_e32 v5, 0x540054, v5
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_and_or_b32 v6, 0x78, v9, s33
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e32 v4, v10, v0, vcc_lo
	v_permlanex16_b32 v1, v1, s7, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x7060706, v3
	v_lshl_or_b32 v2, v5, 4, v5
	v_cndmask_b32_e32 v5, v0, v10, vcc_lo
	v_permlanex16_b32 v4, v4, s7, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s15, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x5040504, v2
	v_perm_b32 v0, v1, v8, v2
	v_perm_b32 v1, v1, v8, v3
	v_perm_b32 v2, v4, v5, v2
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v6, v7, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 75
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
		.amdhsa_inst_pref_size 30
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 75
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3808
; TotalNumSgprs: 41
; NumVgprs: 75
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 75
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     75
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
