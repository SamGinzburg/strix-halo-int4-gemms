	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
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
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v11, 0x100, v0
	v_and_b32_e32 v22, 15, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v23, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v24, 0, v9
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
	v_and_b32_e32 v1, 31, v0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s19, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_sub_i32 s7, 0, s18
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 2, v1
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s7, s7, s6
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
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
	s_lshl_b32 s24, s3, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s12, 31
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
	s_lshr_b32 s3, s3, 27
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
	v_cmp_gt_i32_e64 s3, 16, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s14
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s13, s34, s24
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s19, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s15, s15, 5
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s14, s2, 5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s18, s35, s24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 31
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
	buffer_load_u8 v6, v4, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v7, v5, s[16:19], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v11
	s_mov_b32 s18, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v23, v6 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v7
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
.LBB0_3:                                ; %Flow83
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[12:13], s[0:1], 0x20
	v_or_b32_e32 v25, v4, v22
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v19, 0x70, v5
	v_bfe_u32 v20, v0, 4, 1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v21, 0, v25
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s18
	s_add_i32 s0, s15, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s24, 16
	v_add3_u32 v4, s14, v4, v22
	v_add_nc_u32_e32 v6, s1, v3
	v_sub_nc_u32_e32 v26, s28, v3
	s_lshl_b32 s19, s27, 7
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v5, 0, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v8, s35, v6
	v_mul_lo_u32 v6, s34, v6
	v_mul_lo_u32 v4, s15, v4
	s_lshl_b32 s18, s26, 8
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v32, v5, v19
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_add3_u32 v2, v8, s19, v2
	v_add3_u32 v31, v6, s14, v1
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v7, 0xe0, v0
	v_lshlrev_b32_e32 v27, 1, v20
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v29, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v5, v1
	v_lshl_or_b32 v3, s27, 8, v7
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v28, s18, v3
	s_lshl_b32 s18, s26, 7
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v18, 0
	v_subrev_nc_u32_e32 v30, s18, v2
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v15, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b64 s[20:21], s[8:9]
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_max_i32 s36, s0, 1
	s_lshl_b32 s37, s35, 1
	s_lshl_b32 s38, s35, 4
	s_lshl_b32 s34, s34, 4
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
	v_cmp_lt_i32_e32 vcc_lo, s1, v26
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v49, v29, s[28:31], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s36, s36, -1
	s_add_i32 s1, s1, 16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v34, 0x80000000, v31 :: v_dual_add_nc_u32 v33, v27, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s36, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u8 v50, v34, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v51, v33, s[24:27], 0 offen
	buffer_load_u16 v52, v33, s[24:27], 0 offen offset:4
	buffer_load_u16 v53, v33, s[24:27], 0 offen offset:8
	buffer_load_u16 v54, v33, s[24:27], 0 offen offset:12
	buffer_load_u16 v55, v33, s[24:27], 0 offen offset:16
	buffer_load_u16 v56, v33, s[24:27], 0 offen offset:20
	buffer_load_u16 v57, v33, s[24:27], 0 offen offset:24
	buffer_load_u16 v58, v33, s[24:27], 0 offen offset:28
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v33, 0x80000000, v30, vcc_lo
	buffer_load_b32 v59, v33, s[16:19], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v33, v21 offset:2208
	ds_load_u8 v34, v21 offset:2272
	ds_load_u8 v35, v21 offset:2240
	ds_load_u8 v36, v21 offset:2176
	ds_load_u8 v37, v21 offset:2144
	ds_load_u8 v38, v21 offset:2112
	ds_load_u8 v39, v21 offset:2048
	ds_load_u8 v40, v21 offset:2080
	ds_load_u8 v41, v32 offset:640
	ds_load_u8 v42, v32 offset:896
	ds_load_u8 v43, v32 offset:768
	ds_load_u8 v44, v32 offset:512
	ds_load_u8 v45, v32 offset:128
	ds_load_u8 v46, v32 offset:384
	ds_load_u8 v47, v32 offset:256
	ds_load_u8 v48, v32
	ds_load_u8 v60, v21 offset:2464
	ds_load_u8 v61, v21 offset:2528
	ds_load_u8 v62, v21 offset:2496
	ds_load_u8 v63, v21 offset:2432
	ds_load_u8 v64, v21 offset:2336
	ds_load_u8 v65, v21 offset:2400
	ds_load_u8 v66, v21 offset:2368
	ds_load_u8 v67, v21 offset:2304
	ds_load_u8 v68, v32 offset:1664
	ds_load_u8 v69, v32 offset:1920
	ds_load_u8 v70, v32 offset:1792
	ds_load_u8 v71, v32 offset:1536
	ds_load_u8 v72, v32 offset:1152
	ds_load_u8 v73, v32 offset:1280
	ds_load_u8 v74, v32 offset:1024
	ds_load_u8 v75, v32 offset:1408
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v33, v36, v33, 0xc0c0004
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v35, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v36, v39, v40, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v37, v44, v41, 0xc0c0004
	v_perm_b32 v38, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v39, v48, v45, 0xc0c0004
	v_perm_b32 v40, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v45, v63, v60, 0xc0c0004
	v_perm_b32 v46, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v48, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v47, v67, v64, 0xc0c0004
	v_lshl_or_b32 v42, v34, 16, v33
	v_lshl_or_b32 v41, v35, 16, v36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v61, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v71, v68, 0xc0c0004
	v_lshl_or_b32 v44, v38, 16, v37
	v_lshl_or_b32 v43, v40, 16, v39
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v74, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v73, v75, 0xc0c0004
	v_lshl_or_b32 v46, v46, 16, v45
	v_lshl_or_b32 v45, v48, 16, v47
	v_lshl_or_b32 v48, v61, 16, v60
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v63, 16, v62
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b8 v23, v50 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v59
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[47:48], v[45:46], v[33:40] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v53
	v_lshlrev_b32_e32 v42, 16, v52
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v41, 16, v49
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v44, 16, v54
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v29, 2, v29
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v34, v41, v34
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v46, 16, v56
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v18, v34, v42
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v33, v41, v33 :: v_dual_add_nc_u32 v28, s37, v28
	v_dual_mul_f32 v38, v41, v38 :: v_dual_add_nc_u32 v31, s34, v31
	v_dual_mul_f32 v35, v41, v35 :: v_dual_add_nc_u32 v30, s38, v30
	v_mul_f32_e32 v36, v41, v36
	v_mul_f32_e32 v37, v41, v37
	v_mul_f32_e32 v39, v41, v39
	v_dual_mul_f32 v40, v41, v40 :: v_dual_lshlrev_b32 v41, 16, v51
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v45, 16, v55
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v14, v38, v46 :: v_dual_lshlrev_b32 v47, 16, v57
	v_fmac_f32_e32 v16, v36, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v10, v33, v41
	v_dual_fmac_f32 v15, v37, v45 :: v_dual_lshlrev_b32 v48, 16, v58
	v_fmac_f32_e32 v17, v35, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v13, v39, v47 :: v_dual_fmac_f32 v12, v40, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow84
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v3, s15, v25
	s_mul_i32 s1, s14, s15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v2, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v3, s1, v3, 1
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v25, 0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add3_u32 v4, 0, v22, v19
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v5, v21 offset:2208
	ds_load_u8 v6, v21 offset:2272
	ds_load_u8 v7, v21 offset:2240
	ds_load_u8 v8, v21 offset:2176
	ds_load_u8 v22, v21 offset:2144
	ds_load_u8 v23, v21 offset:2112
	ds_load_u8 v24, v21 offset:2048
	ds_load_u8 v25, v21 offset:2080
	ds_load_u8 v26, v4 offset:640
	ds_load_u8 v27, v4 offset:896
	ds_load_u8 v28, v4 offset:768
	ds_load_u8 v29, v4 offset:512
	ds_load_u8 v30, v4 offset:128
	ds_load_u8 v31, v4 offset:256
	ds_load_u8 v32, v4
	ds_load_u8 v33, v4 offset:384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v8, v5, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v24, v25, 0xc0c0004
	v_lshl_or_b32 v5, v6, 16, v5
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v23, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v29, v26, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v24, v32, v30, 0xc0c0004
	ds_load_u8 v29, v21 offset:2464
	ds_load_u8 v30, v21 offset:2528
	ds_load_u8 v32, v21 offset:2496
	ds_load_u8 v34, v21 offset:2432
	ds_load_u8 v35, v21 offset:2336
	ds_load_u8 v36, v21 offset:2400
	ds_load_u8 v37, v21 offset:2368
	ds_load_u8 v38, v21 offset:2304
	ds_load_u8 v39, v4 offset:1664
	ds_load_u8 v40, v4 offset:1920
	ds_load_u8 v41, v4 offset:1792
	ds_load_u8 v42, v4 offset:1536
	ds_load_u8 v43, v4 offset:1152
	ds_load_u8 v44, v4 offset:1408
	ds_load_u8 v45, v4 offset:1280
	ds_load_u8 v46, v4 offset:1024
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v25, v31, v33, 0xc0c0004
	v_mov_b32_e32 v21, 0
	v_lshl_or_b32 v4, v7, 16, v8
	v_lshl_or_b32 v7, v23, 16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v25, 16, v24
	v_mov_b32_e32 v22, v21
	v_mov_b32_e32 v23, v21
	v_mov_b32_e32 v24, v21
	v_mov_b32_e32 v25, v21
	v_mov_b32_e32 v26, v21
	v_mov_b32_e32 v27, v21
	v_mov_b32_e32 v28, v21
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v34, v29, 0xc0c0004
	v_perm_b32 v29, v32, v30, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v38, v35, 0xc0c0004
	v_perm_b32 v31, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v42, v39, 0xc0c0004
	v_perm_b32 v33, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v46, v43, 0xc0c0004
	v_perm_b32 v35, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[21:28], v[6:7], v[4:5], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v29, 16, v8
	v_lshl_or_b32 v4, v31, 16, v30
	v_lshl_or_b32 v7, v33, 16, v32
	v_lshl_or_b32 v6, v35, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[6:7], v[4:5], v[21:28] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v22
	v_cvt_f32_i32_e32 v6, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v25, v27
	v_cvt_f32_i32_e32 v7, v28
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v19, v20, v19
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
	v_mov_b16_e32 v30.l, 0
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v30.h, v3.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v19, s0, v19, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s10
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v4, v4, v30 :: v_dual_add_nc_u32 v21, 4, v19
	v_dual_mul_f32 v5, v5, v30 :: v_dual_add_nc_u32 v22, 8, v19
	v_dual_mul_f32 v23, v23, v30 :: v_dual_add_nc_u32 v26, 12, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v20, 0x80000000, v19, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v6, v6, v30 :: v_dual_add_nc_u32 v27, 16, v19
	v_dual_mul_f32 v25, v25, v30 :: v_dual_add_nc_u32 v28, 20, v19
	v_dual_mul_f32 v8, v8, v30 :: v_dual_add_nc_u32 v29, 24, v19
	v_dual_mul_f32 v24, v24, v30 :: v_dual_add_nc_u32 v19, 28, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_clause 0x7
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v7, v7, v30 :: v_dual_lshlrev_b32 v34, 1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v31, 0x180, v0
	v_lshrrev_b32_e32 v32, 7, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v36, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v37, 0x60, v34
	v_and_b32_e32 v34, 28, v34
	v_lshrrev_b32_e32 v31, 5, v31
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v33, 10, v0
	v_bfe_i32 v35, v0, 3, 1
	v_lshl_or_b32 v1, v1, 3, v34
	v_lshlrev_b32_e32 v2, 2, v2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v0, s35, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v32, 32, v36
	v_and_b32_e32 v35, 0x2040, v35
	v_xor_b32_e32 v1, v1, v31
	v_and_or_b32 v9, 0x31c, v9, v37
	v_lshrrev_b32_e32 v11, 1, v11
	v_and_b32_e32 v30, 0x1c00, v33
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s0, s14, s35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or3_b32 v1, v32, v2, v1
	v_xor_b32_e32 v9, v9, v35
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_add3_u32 v33, s0, s33, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v37, 0, v1
	v_xad_u32 v38, 0x1010, v1, 0
	v_xad_u32 v39, 0x2040, v1, 0
	v_xad_u32 v40, 0x3050, v1, 0
	v_or3_b32 v3, v30, v11, v9
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_lshl_add_u32 v34, s35, 2, v0
	v_lshl_add_u32 v30, s35, 3, v0
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v2, 0, v3
	v_xad_u32 v9, v3, 4, 0
	v_xad_u32 v11, v3, 8, 0
	v_xad_u32 v31, v3, 12, 0
	v_xad_u32 v32, v3, 16, 0
	v_xad_u32 v35, v3, 20, 0
	v_xad_u32 v36, v3, 24, 0
	v_xad_u32 v3, v3, 28, 0
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	s_mov_b32 s15, s7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v20
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v21
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v21, 16, v22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v26
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v28
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v29
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v4, v1, v10
	v_fma_f32 v4, v5, v20, v18
	v_fma_f32 v5, v6, v21, v17
	v_fma_f32 v6, v8, v22, v16
	v_fma_f32 v8, v23, v26, v15
	v_fma_f32 v7, v7, v19, v12
	v_fma_f32 v20, v24, v27, v14
	v_fma_f32 v21, v25, v28, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v10, v1, s2
	v_cndmask_b32_e64 v4, v18, v4, s2
	v_cndmask_b32_e64 v5, v17, v5, s2
	v_cndmask_b32_e64 v6, v16, v6, s2
	v_cndmask_b32_e64 v8, v15, v8, s2
	v_cndmask_b32_e64 v7, v12, v7, s2
	v_cndmask_b32_e64 v10, v14, v20, s2
	v_cndmask_b32_e64 v13, v13, v21, s2
	ds_store_b32 v2, v1
	ds_store_b32 v9, v4
	ds_store_b32 v11, v5
	ds_store_b32 v31, v6
	ds_store_b32 v32, v8
	ds_store_b32 v35, v10
	ds_store_b32 v36, v13
	ds_store_b32 v3, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v37 offset1:32
	ds_load_2addr_b32 v[3:4], v38 offset1:32
	ds_load_2addr_b32 v[5:6], v39 offset1:32
	ds_load_2addr_b32 v[7:8], v40 offset1:32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_lshl_add_u32 v14, s35, 4, v0
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v15, v33, v30, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v14, v33, v14, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[9:10], null, s35, 12, v[0:1]
	v_mad_u64_u32 v[10:11], null, s35, 20, v[0:1]
	v_mad_u64_u32 v[11:12], null, s35, 24, v[0:1]
	v_mad_u64_u32 v[12:13], null, s35, 28, v[0:1]
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v0, v33, v0, 2
	v_add_lshl_u32 v13, v33, v34, 2
	v_add_lshl_u32 v9, v33, v9, 2
	v_add_lshl_u32 v10, v33, v10, 2
	v_add_lshl_u32 v11, v33, v11, 2
	buffer_atomic_add_f32 v1, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v13, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v15, s[12:15], 0 offen
	v_add_lshl_u32 v0, v33, v12, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 76
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_vgpr, 76
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3768
; TotalNumSgprs: 41
; NumVgprs: 76
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 76
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     76
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
