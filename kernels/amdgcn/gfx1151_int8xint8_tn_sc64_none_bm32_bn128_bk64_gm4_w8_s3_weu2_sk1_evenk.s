	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v48, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v47, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v35, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v36, 15, v0
	v_or_b32_e32 v50, 0x3f0, v0
	v_or_b32_e32 v51, 0x7f0, v0
	v_and_b32_e32 v3, 24, v47
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v49, 0x70, v35
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, 0, v47
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s6, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s26, v4
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s5
	s_mul_hi_u32 s9, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s6
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s7, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s17, s7, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s7, s7, s6
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s8, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s20, s4, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s19, s20
	s_abs_i32 s7, s2
	s_cvt_f32_u32 s4, s19
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v48
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s4, 0x4f7ffffe
	s_mov_b64 s[4:5], s[10:11]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[6:7], null, s27, v5, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s18
	s_sub_i32 s18, 0, s19
	s_mov_b32 s11, 0x31027000
	s_mul_i32 s18, s18, s10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v7, s27, 5, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s6, s10, s18
	s_xor_b32 s18, s2, s20
	s_add_i32 s6, s10, s6
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s6, s7, s6
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s21, s6, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s21
	s_add_i32 s21, s6, 1
	s_sub_i32 s22, s7, s19
	s_cmp_ge_u32 s7, s19
	s_cselect_b32 s21, s21, s6
	s_cselect_b32 s6, s22, s7
	s_add_i32 s7, s21, 1
	s_cmp_ge_u32 s6, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s6, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s19, s7, s21
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s22, s16, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s19, s19, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s21, s19, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s22, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s21, s20
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s21, 7
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s22, s3
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s27, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s22, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v2, v2, v3, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s17, s33, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s22, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s16, s26, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s35, s27, 6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v8, s16, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s17, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s31, s26, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s17, v7
	s_add_i32 s17, s17, s35
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v2, s16, s31, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s17, v6
	v_add_nc_u32_e32 v7, s17, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s7, s11
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[31:32], v8, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v9, s[4:7], 0 offen
	buffer_load_b128 v[19:22], v10, s[4:7], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[33:34], v2, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v6, s[4:7], 0 offen
	buffer_load_b128 v[27:30], v7, s[4:7], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v10, 16, v36
	s_mov_b32 s16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s22, 0xbf
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v6, v2, 1, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, v37, v47
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v37, v[31:32] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v2, v[15:18]
	s_waitcnt vmcnt(3)
	ds_store_b128 v2, v[19:22] offset:4096
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 2, v6
	v_or_b32_e32 v12, 4, v6
	v_or_b32_e32 v13, 6, v6
	v_or_b32_e32 v14, 8, v6
	v_or_b32_e32 v7, 10, v6
	v_or_b32_e32 v8, 12, v6
	v_or_b32_e32 v9, 14, v6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v37, v[33:34] offset:18432
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v2, v[23:26] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[27:30] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v52, 0x7f0, v0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s30, 64
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_mov_b32 s6, -1
                                        ; implicit-def: $sgpr17
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr52
.LBB0_3:                                ; %Flow89
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v15, s34, v36
	v_or_b32_e32 v10, s34, v10
	s_ashr_i32 s0, s20, 6
	v_or_b32_e32 v44, s33, v6
	v_or_b32_e32 v43, s33, v11
	v_mul_lo_u32 v45, v15, s0
	v_mul_lo_u32 v46, v10, s0
	v_or_b32_e32 v42, s33, v12
	v_or_b32_e32 v40, s33, v13
	v_or_b32_e32 v38, s33, v14
	v_or_b32_e32 v41, s33, v7
	v_or_b32_e32 v39, s33, v8
	v_or_b32_e32 v37, s33, v9
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v2, s30, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s6, s19, 7
	s_lshl_b32 s7, s18, 7
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v5, 0xa0, v2
	v_add_nc_u32_e32 v2, 0x80, v2
	v_add3_u32 v4, s30, v4, 0x80
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s27, v5
	v_mul_lo_u32 v2, s27, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v4, s26, v4
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v24, 0
	v_add3_u32 v5, v5, s6, v1
	v_add3_u32 v1, v2, s6, v1
	v_add3_u32 v52, v4, s34, v3
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v53, s7, v5
	v_subrev_nc_u32_e32 v54, s7, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v20, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s1, s0, 3
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s15, s1, -2
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s26, 0, 0x2000
	s_mov_b32 s44, 1
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s18, s14
	s_mov_b32 s14, s1
	s_mov_b32 s1, s16
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v55, s18, v36
	v_add_nc_u32_e32 v56, s18, v50
	v_add_nc_u32_e32 v57, s18, v51
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s30, 31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v58, s1, v49, v36
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s18, 26
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[17:18], v52, s[8:11], 0 offen
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s30, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v159, v45, s1, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s1, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v160, v46, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v161, v44, s18, 1
	v_add_lshl_u32 v162, v43, s18, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v163, v42, s18, 1
	v_add_lshl_u32 v164, v40, s18, 1
	v_add_lshl_u32 v165, v38, s18, 1
	v_add_lshl_u32 v166, v41, s18, 1
	v_add_lshl_u32 v167, v39, s18, 1
	v_add_lshl_u32 v168, v37, s18, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_cndmask_b32 v160, 0x80000000, v160
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_cndmask_b32 v162, 0x80000000, v162
	v_dual_cndmask_b32 v163, 0x80000000, v163 :: v_dual_cndmask_b32 v164, 0x80000000, v164
	v_dual_cndmask_b32 v165, 0x80000000, v165 :: v_dual_cndmask_b32 v166, 0x80000000, v166
	v_dual_cndmask_b32 v167, 0x80000000, v167 :: v_dual_cndmask_b32 v168, 0x80000000, v168
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v159, v159, s[36:39], 0 offen
	buffer_load_u16 v160, v160, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v162, v162, s[40:43], 0 offen
	buffer_load_u16 v161, v161, s[40:43], 0 offen
	buffer_load_u16 v164, v164, s[40:43], 0 offen
	buffer_load_u16 v163, v163, s[40:43], 0 offen
	buffer_load_u16 v166, v166, s[40:43], 0 offen
	buffer_load_u16 v165, v165, s[40:43], 0 offen
	buffer_load_u16 v168, v168, s[40:43], 0 offen
	buffer_load_u16 v167, v167, s[40:43], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v54, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v53, s[4:7], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v59, v55 offset:96
	ds_load_u8 v60, v55 offset:64
	ds_load_u8 v61, v55
	ds_load_u8 v62, v55 offset:16
	ds_load_u8 v63, v55 offset:32
	ds_load_u8 v64, v55 offset:112
	ds_load_u8 v65, v55 offset:80
	ds_load_u8 v66, v55 offset:48
	ds_load_u8 v67, v58 offset:1664
	ds_load_u8 v68, v58 offset:1920
	ds_load_u8 v69, v58 offset:1792
	ds_load_u8 v70, v58 offset:1536
	ds_load_u8 v71, v58 offset:1152
	ds_load_u8 v72, v58 offset:1408
	ds_load_u8 v73, v58 offset:1280
	ds_load_u8 v74, v58 offset:1024
	ds_load_u8 v75, v58 offset:640
	ds_load_u8 v76, v58 offset:896
	ds_load_u8 v77, v58 offset:768
	ds_load_u8 v78, v58 offset:512
	ds_load_u8 v79, v58 offset:128
	ds_load_u8 v80, v58 offset:384
	ds_load_u8 v81, v58 offset:256
	ds_load_u8 v82, v58
	ds_load_u8 v83, v55 offset:928
	ds_load_u8 v84, v58 offset:3712
	ds_load_u8 v85, v58 offset:3968
	ds_load_u8 v86, v58 offset:3840
	ds_load_u8 v87, v58 offset:3584
	ds_load_u8 v88, v58 offset:3200
	ds_load_u8 v89, v58 offset:3456
	ds_load_u8 v90, v58 offset:3328
	ds_load_u8 v91, v58 offset:3072
	ds_load_u8 v92, v58 offset:2688
	ds_load_u8 v93, v58 offset:2944
	ds_load_u8 v94, v58 offset:2816
	ds_load_u8 v95, v58 offset:2560
	ds_load_u8 v96, v58 offset:2176
	ds_load_u8 v97, v58 offset:2432
	ds_load_u8 v98, v58 offset:2304
	ds_load_u8 v99, v58 offset:2048
	ds_load_u8 v100, v58 offset:5760
	ds_load_u8 v101, v58 offset:6016
	ds_load_u8 v102, v58 offset:5888
	ds_load_u8 v103, v58 offset:5632
	ds_load_u8 v104, v58 offset:5248
	ds_load_u8 v105, v58 offset:5504
	ds_load_u8 v106, v58 offset:5376
	ds_load_u8 v107, v58 offset:5120
	ds_load_u8 v108, v58 offset:4736
	ds_load_u8 v109, v58 offset:4992
	ds_load_u8 v110, v58 offset:4864
	ds_load_u8 v111, v58 offset:4608
	ds_load_u8 v112, v58 offset:4224
	ds_load_u8 v113, v58 offset:4480
	ds_load_u8 v114, v58 offset:4352
	ds_load_u8 v115, v58 offset:4096
	ds_load_u8 v116, v55 offset:1664
	ds_load_u8 v117, v55 offset:1568
	ds_load_u8 v118, v55 offset:1632
	ds_load_u8 v119, v55 offset:1600
	ds_load_u8 v120, v58 offset:7808
	ds_load_u8 v121, v58 offset:8064
	ds_load_u8 v122, v58 offset:7936
	ds_load_u8 v123, v58 offset:7680
	ds_load_u8 v124, v58 offset:7296
	ds_load_u8 v125, v58 offset:7552
	ds_load_u8 v126, v58 offset:7424
	ds_load_u8 v127, v58 offset:7168
	ds_load_u8 v128, v58 offset:6784
	ds_load_u8 v129, v58 offset:7040
	ds_load_u8 v130, v58 offset:6912
	ds_load_u8 v131, v58 offset:6656
	ds_load_u8 v132, v58 offset:6272
	ds_load_u8 v133, v58 offset:6528
	ds_load_u8 v134, v58 offset:6400
	ds_load_u8 v58, v58 offset:6144
	ds_load_u8 v135, v55 offset:416
	ds_load_u8 v136, v55 offset:384
	ds_load_u8 v137, v55 offset:480
	ds_load_u8 v138, v55 offset:448
	ds_load_u8 v139, v55 offset:496
	ds_load_u8 v140, v55 offset:464
	ds_load_u8 v141, v55 offset:432
	ds_load_u8 v142, v55 offset:400
	ds_load_u8 v143, v55 offset:288
	ds_load_u8 v144, v55 offset:256
	ds_load_u8 v145, v55 offset:352
	ds_load_u8 v146, v55 offset:320
	ds_load_u8 v147, v55 offset:368
	ds_load_u8 v148, v55 offset:336
	ds_load_u8 v149, v55 offset:304
	ds_load_u8 v150, v55 offset:272
	ds_load_u8 v151, v55 offset:160
	ds_load_u8 v152, v55 offset:128
	ds_load_u8 v153, v55 offset:224
	ds_load_u8 v154, v55 offset:192
	ds_load_u8 v155, v55 offset:240
	ds_load_u8 v156, v55 offset:208
	ds_load_u8 v157, v55 offset:176
	ds_load_u8 v158, v55 offset:144
	ds_load_u8 v169, v55 offset:896
	ds_load_u8 v170, v55 offset:992
	ds_load_u8 v171, v55 offset:960
	ds_load_u8 v172, v55 offset:1024
	ds_load_u8 v173, v55 offset:976
	ds_load_u8 v174, v55 offset:944
	ds_load_u8 v175, v55 offset:912
	ds_load_u8 v176, v55 offset:800
	ds_load_u8 v177, v55 offset:768
	ds_load_u8 v178, v55 offset:864
	ds_load_u8 v179, v55 offset:832
	ds_load_u8 v180, v55 offset:880
	ds_load_u8 v181, v55 offset:848
	ds_load_u8 v182, v55 offset:816
	ds_load_u8 v183, v55 offset:784
	ds_load_u8 v184, v55 offset:672
	ds_load_u8 v185, v55 offset:640
	ds_load_u8 v186, v55 offset:736
	ds_load_u8 v187, v55 offset:704
	ds_load_u8 v188, v55 offset:752
	ds_load_u8 v189, v55 offset:720
	ds_load_u8 v190, v55 offset:688
	ds_load_u8 v191, v55 offset:656
	ds_load_u8 v192, v55 offset:544
	ds_load_u8 v193, v55 offset:512
	ds_load_u8 v194, v55 offset:608
	ds_load_u8 v195, v55 offset:576
	ds_load_u8 v196, v55 offset:624
	ds_load_u8 v197, v55 offset:592
	ds_load_u8 v198, v55 offset:560
	ds_load_u8 v199, v55 offset:528
	ds_load_u8 v200, v55 offset:1440
	ds_load_u8 v201, v55 offset:1504
	ds_load_u8 v202, v55 offset:1472
	ds_load_u8 v203, v55 offset:1536
	ds_load_u8 v204, v55 offset:1520
	ds_load_u8 v205, v55 offset:1488
	ds_load_u8 v206, v55 offset:1456
	ds_load_u8 v207, v55 offset:1424
	ds_load_u8 v208, v55 offset:1408
	ds_load_u8 v209, v55 offset:1312
	ds_load_u8 v210, v55 offset:1376
	ds_load_u8 v211, v55 offset:1344
	ds_load_u8 v212, v55 offset:1392
	ds_load_u8 v213, v55 offset:1360
	ds_load_u8 v214, v55 offset:1328
	ds_load_u8 v215, v55 offset:1296
	ds_load_u8 v216, v55 offset:1280
	ds_load_u8 v217, v55 offset:1184
	ds_load_u8 v218, v55 offset:1248
	ds_load_u8 v219, v55 offset:1216
	ds_load_u8 v220, v55 offset:1264
	ds_load_u8 v221, v55 offset:1232
	ds_load_u8 v222, v55 offset:1200
	ds_load_u8 v223, v55 offset:1168
	ds_load_u8 v224, v55 offset:1152
	ds_load_u8 v225, v55 offset:1056
	ds_load_u8 v226, v55 offset:1120
	ds_load_u8 v227, v55 offset:1088
	ds_load_u8 v228, v55 offset:1136
	ds_load_u8 v229, v55 offset:1104
	ds_load_u8 v230, v55 offset:1072
	ds_load_u8 v231, v55 offset:1040
	ds_load_u8 v232, v55 offset:1952
	ds_load_u8 v233, v55 offset:2016
	ds_load_u8 v234, v55 offset:1984
	ds_load_u8 v56, v56
	ds_load_u8 v57, v57
	ds_load_u8 v235, v55 offset:2000
	ds_load_u8 v236, v55 offset:1968
	ds_load_u8 v237, v55 offset:1936
	ds_load_u8 v238, v55 offset:1920
	ds_load_u8 v239, v55 offset:1824
	ds_load_u8 v240, v55 offset:1888
	ds_load_u8 v241, v55 offset:1856
	ds_load_u8 v242, v55 offset:1904
	ds_load_u8 v243, v55 offset:1872
	ds_load_u8 v244, v55 offset:1840
	ds_load_u8 v245, v55 offset:1808
	ds_load_u8 v246, v55 offset:1792
	ds_load_u8 v247, v55 offset:1696
	ds_load_u8 v248, v55 offset:1760
	ds_load_u8 v249, v55 offset:1728
	ds_load_u8 v250, v55 offset:1776
	ds_load_u8 v251, v55 offset:1744
	ds_load_u8 v252, v55 offset:1712
	ds_load_u8 v253, v55 offset:1680
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v55 offset:1648
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v55 offset:1616
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v55 offset:1584
	ds_load_u8 v55, v55 offset:1552
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v60, v61, v63, 0xc0c0004
	v_perm_b32 v61, v70, v67, 0xc0c0004
	v_perm_b32 v67, v69, v68, 0xc0c0004
	v_perm_b32 v68, v74, v71, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v69, v73, v72, 0xc0c0004
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v70, v78, v75, 0xc0c0004
	v_perm_b32 v71, v77, v76, 0xc0c0004
	v_perm_b32 v75, v82, v79, 0xc0c0004
	v_perm_b32 v76, v81, v80, 0xc0c0004
	v_perm_b32 v77, v169, v83, 0xc0c0004
	v_perm_b32 v78, v171, v170, 0xc0c0004
	v_perm_b32 v79, v177, v176, 0xc0c0004
	v_perm_b32 v80, v179, v178, 0xc0c0004
	v_perm_b32 v83, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v154, v195, v194, 0xc0c0004
	v_perm_b32 v84, v87, v84, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v86, v91, v88, 0xc0c0004
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_perm_b32 v88, v95, v92, 0xc0c0004
	v_perm_b32 v89, v94, v93, 0xc0c0004
	v_perm_b32 v90, v99, v96, 0xc0c0004
	v_perm_b32 v91, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v98, v172, v225, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v227, v226, 0xc0c0004
	v_perm_b32 v100, v103, v100, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v102, v107, v104, 0xc0c0004
	v_perm_b32 v103, v106, v105, 0xc0c0004
	v_perm_b32 v106, v115, v112, 0xc0c0004
	v_perm_b32 v107, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v112, v116, v247, 0xc0c0004
	v_perm_b32 v114, v203, v117, 0xc0c0004
	v_perm_b32 v115, v119, v118, 0xc0c0004
	v_perm_b32 v116, v123, v120, 0xc0c0004
	v_perm_b32 v117, v122, v121, 0xc0c0004
	v_perm_b32 v118, v127, v124, 0xc0c0004
	v_perm_b32 v119, v126, v125, 0xc0c0004
	v_perm_b32 v120, v131, v128, 0xc0c0004
	v_perm_b32 v121, v130, v129, 0xc0c0004
	v_perm_b32 v123, v142, v141, 0xc0c0004
	v_perm_b32 v124, v140, v139, 0xc0c0004
	v_perm_b32 v125, v150, v149, 0xc0c0004
	v_perm_b32 v126, v148, v147, 0xc0c0004
	v_perm_b32 v127, v158, v157, 0xc0c0004
	v_perm_b32 v128, v156, v155, 0xc0c0004
	v_perm_b32 v129, v65, v64, 0xc0c0004
	v_perm_b32 v62, v62, v66, 0xc0c0004
	v_perm_b32 v81, v185, v184, 0xc0c0004
	v_perm_b32 v82, v187, v186, 0xc0c0004
	v_perm_b32 v92, v208, v200, 0xc0c0004
	v_perm_b32 v93, v202, v201, 0xc0c0004
	v_perm_b32 v94, v216, v209, 0xc0c0004
	v_perm_b32 v95, v211, v210, 0xc0c0004
	v_perm_b32 v104, v111, v108, 0xc0c0004
	v_perm_b32 v105, v110, v109, 0xc0c0004
	v_perm_b32 v110, v246, v239, 0xc0c0004
	v_perm_b32 v111, v241, v240, 0xc0c0004
	v_perm_b32 v58, v58, v132, 0xc0c0004
	v_perm_b32 v122, v134, v133, 0xc0c0004
	v_perm_b32 v130, v175, v174, 0xc0c0004
	v_perm_b32 v56, v173, v56, 0xc0c0004
	v_perm_b32 v131, v183, v182, 0xc0c0004
	v_perm_b32 v132, v181, v180, 0xc0c0004
	v_perm_b32 v133, v191, v190, 0xc0c0004
	v_perm_b32 v134, v189, v188, 0xc0c0004
	v_perm_b32 v139, v199, v198, 0xc0c0004
	v_perm_b32 v140, v197, v196, 0xc0c0004
	v_perm_b32 v157, v237, v236, 0xc0c0004
	v_perm_b32 v57, v235, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v55, v144, 0xc0c0004
	v_perm_b32 v136, v138, v136, 0xc0c0004
	v_lshl_or_b32 v66, v137, 16, v135
	v_lshl_or_b32 v65, v145, 16, v143
	v_lshl_or_b32 v64, v153, 16, v151
	v_lshl_or_b32 v63, v59, 16, v60
	v_lshl_or_b32 v74, v67, 16, v61
	v_lshl_or_b32 v73, v69, 16, v68
	v_lshl_or_b32 v72, v71, 16, v70
	v_lshl_or_b32 v71, v76, 16, v75
	v_lshl_or_b32 v78, v78, 16, v77
	v_lshl_or_b32 v77, v80, 16, v79
	v_lshl_or_b32 v75, v154, 16, v83
	v_lshl_or_b32 v80, v89, 16, v88
	v_lshl_or_b32 v79, v91, 16, v90
	v_lshl_or_b32 v83, v99, 16, v98
	v_lshl_or_b32 v90, v101, 16, v100
	v_lshl_or_b32 v89, v103, 16, v102
	v_lshl_or_b32 v102, v124, 16, v123
	v_lshl_or_b32 v101, v126, 16, v125
	v_lshl_or_b32 v100, v128, 16, v127
	v_lshl_or_b32 v99, v129, 16, v62
	v_perm_b32 v108, v238, v232, 0xc0c0004
	v_perm_b32 v109, v234, v233, 0xc0c0004
	v_perm_b32 v141, v207, v206, 0xc0c0004
	v_perm_b32 v142, v205, v204, 0xc0c0004
	v_perm_b32 v147, v215, v214, 0xc0c0004
	v_perm_b32 v148, v213, v212, 0xc0c0004
	v_perm_b32 v149, v223, v222, 0xc0c0004
	v_perm_b32 v150, v221, v220, 0xc0c0004
	v_perm_b32 v155, v231, v230, 0xc0c0004
	v_perm_b32 v156, v229, v228, 0xc0c0004
	v_lshl_or_b32 v76, v82, 16, v81
	v_lshl_or_b32 v82, v85, 16, v84
	v_lshl_or_b32 v81, v87, 16, v86
	v_lshl_or_b32 v86, v93, 16, v92
	v_lshl_or_b32 v85, v95, 16, v94
	v_lshl_or_b32 v88, v105, 16, v104
	v_lshl_or_b32 v87, v107, 16, v106
	v_lshl_or_b32 v93, v111, 16, v110
	v_lshl_or_b32 v91, v115, 16, v114
	v_lshl_or_b32 v95, v122, 16, v58
	v_lshl_or_b32 v106, v56, 16, v130
	v_lshl_or_b32 v105, v132, 16, v131
	v_lshl_or_b32 v104, v134, 16, v133
	v_lshl_or_b32 v103, v140, 16, v139
	v_lshl_or_b32 v114, v57, 16, v157
	v_lshl_or_b32 v111, v136, 16, v55
	v_wmma_i32_16x16x16_iu8 v[55:62], v[71:74], v[63:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[71:74], v[99:102], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v96, v224, v217, 0xc0c0004
	v_perm_b32 v97, v219, v218, 0xc0c0004
	v_perm_b32 v113, v249, v248, 0xc0c0004
	v_perm_b32 v158, v245, v244, 0xc0c0004
	v_perm_b32 v169, v243, v242, 0xc0c0004
	v_perm_b32 v170, v253, v252, 0xc0c0004
	v_perm_b32 v171, v251, v250, 0xc0c0004
	v_lshl_or_b32 v94, v109, 16, v108
	v_lshl_or_b32 v110, v142, 16, v141
	v_lshl_or_b32 v109, v148, 16, v147
	v_lshl_or_b32 v108, v150, 16, v149
	v_lshl_or_b32 v107, v156, 16, v155
	v_wmma_i32_16x16x16_iu8 v[63:70], v[79:82], v[103:106], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v97, 16, v96
	v_lshl_or_b32 v92, v113, 16, v112
	v_lshl_or_b32 v98, v117, 16, v116
	v_lshl_or_b32 v97, v119, 16, v118
	v_lshl_or_b32 v96, v121, 16, v120
	v_lshl_or_b32 v113, v169, 16, v158
	v_lshl_or_b32 v112, v171, 16, v170
	v_wmma_i32_16x16x16_iu8 v[55:62], v[79:82], v[75:78], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[87:90], v[107:110], v[63:70] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s44, 1
	s_mov_b32 s16, s26
	s_cmp_lt_i32 s1, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[87:90], v[83:86], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[95:98], v[111:114], v[63:70] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s44, s1, 0
	s_add_i32 s15, s15, -1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s1, s44, 11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[95:98], v[91:94], v[55:62] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s18, s44, 13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s19, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s26, s18, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v69, v69
	s_mov_b32 s17, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s30, 64
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s19, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v76, 16, v163
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v79, 16, v168
	v_lshlrev_b32_e32 v78, 16, v165
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v72, 16, v160
	v_lshlrev_b32_e32 v71, 16, v159
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v80, 16, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v78, v71
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v77, 16, v166
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v78, v72, v78 :: v_dual_lshlrev_b32 v75, 16, v164
	v_mul_f32_e32 v83, v76, v71
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v146, s19, v47
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v86, v77, v71 :: v_dual_lshlrev_b32 v73, 16, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v84, v75, v71 :: v_dual_add_nc_u32 v53, s35, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v52, s31, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v75, v72, v75 :: v_dual_add_nc_u32 v152, s26, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v33, v84, v58 :: v_dual_lshlrev_b32 v74, 16, v161
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v87, v80, v71 :: v_dual_add_nc_u32 v54, s35, v54
	v_dual_mul_f32 v82, v73, v71 :: v_dual_mul_f32 v73, v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v81, v74, v71 :: v_dual_mul_f32 v74, v72, v74
	v_mul_f32_e32 v77, v72, v77
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v31, v83, v57 :: v_dual_mul_f32 v76, v72, v76
	v_fmac_f32_e32 v19, v81, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v74, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v79, v71
	v_dual_mul_f32 v79, v72, v79 :: v_dual_fmac_f32 v34, v82, v56
	v_dual_mul_f32 v72, v72, v80 :: v_dual_fmac_f32 v27, v85, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v26, v75, v66 :: v_dual_fmac_f32 v29, v86, v60
	v_fmac_f32_e32 v20, v79, v70
	v_dual_fmac_f32 v23, v87, v61 :: v_dual_fmac_f32 v30, v73, v64
	v_dual_fmac_f32 v25, v71, v62 :: v_dual_fmac_f32 v24, v78, v67
	v_fmac_f32_e32 v28, v76, v65
	v_dual_fmac_f32 v22, v77, v68 :: v_dual_fmac_f32 v21, v72, v69
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v146, v[17:18] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v152, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v152, v[13:16] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v50
	v_mov_b32_e32 v52, v51
	s_addk_i32 s17, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v19, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s26, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v54, v49, v36
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v17, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v3, s14, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v3 offset:416
	ds_load_u8 v6, v3 offset:384
	ds_load_u8 v7, v3 offset:480
	ds_load_u8 v8, v3 offset:448
	ds_load_u8 v9, v3 offset:288
	ds_load_u8 v10, v3 offset:256
	ds_load_u8 v11, v3 offset:352
	ds_load_u8 v12, v3 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v4, s16, v54
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v13, s14, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v85, v3 offset:16
	ds_load_u8 v86, v13
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v12, v11, 0xc0c0004
	ds_load_u8 v10, v3 offset:160
	ds_load_u8 v11, v3 offset:128
	ds_load_u8 v12, v3 offset:224
	ds_load_u8 v14, v3 offset:192
	v_lshl_or_b32 v8, v6, 16, v5
	v_lshl_or_b32 v7, v9, 16, v7
	ds_load_u8 v5, v3 offset:96
	ds_load_u8 v6, v3 offset:64
	ds_load_u8 v9, v3
	ds_load_u8 v15, v3 offset:32
	ds_load_u8 v16, v4 offset:1664
	ds_load_u8 v17, v4 offset:1920
	ds_load_u8 v47, v4 offset:1792
	ds_load_u8 v48, v4 offset:1536
	ds_load_u8 v49, v4 offset:1152
	ds_load_u8 v50, v4 offset:1408
	ds_load_u8 v55, v4 offset:1280
	ds_load_u8 v56, v4 offset:1024
	ds_load_u8 v57, v4 offset:640
	ds_load_u8 v58, v4 offset:896
	ds_load_u8 v59, v4 offset:768
	ds_load_u8 v60, v4 offset:512
	ds_load_u8 v61, v4 offset:128
	ds_load_u8 v62, v4 offset:384
	ds_load_u8 v63, v4 offset:256
	ds_load_u8 v64, v4
	ds_load_u8 v79, v3 offset:208
	ds_load_u8 v80, v3 offset:176
	ds_load_u8 v81, v3 offset:144
	ds_load_u8 v82, v3 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v9, v9, v15, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v13, v47, v17, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v15, v55, v50, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v9
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v17, v59, v58, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v11, v14, v12, 0xc0c0004
	v_perm_b32 v12, v48, v16, 0xc0c0004
	v_perm_b32 v14, v56, v49, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v60, v57, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v64, v61, 0xc0c0004
	v_lshl_or_b32 v6, v11, 16, v10
	v_lshl_or_b32 v50, v13, 16, v12
	v_lshl_or_b32 v49, v15, 16, v14
	v_perm_b32 v14, v63, v62, 0xc0c0004
	v_mov_b32_e32 v62, s11
	ds_load_u8 v10, v3 offset:928
	ds_load_u8 v11, v3 offset:896
	ds_load_u8 v12, v3 offset:992
	ds_load_u8 v13, v3 offset:960
	v_lshl_or_b32 v48, v17, 16, v16
	v_mov_b32_e32 v61, s10
	v_lshl_or_b32 v47, v14, 16, v9
	ds_load_u8 v9, v3 offset:800
	ds_load_u8 v63, v3 offset:768
	ds_load_u8 v64, v3 offset:864
	ds_load_u8 v65, v3 offset:832
	ds_load_u8 v87, v3 offset:976
	ds_load_u8 v88, v3 offset:944
	ds_load_u8 v89, v3 offset:912
	ds_load_u8 v90, v3 offset:880
	v_dual_mov_b32 v60, s9 :: v_dual_mov_b32 v59, s8
	v_dual_mov_b32 v58, s7 :: v_dual_mov_b32 v57, s6
	v_dual_mov_b32 v56, s5 :: v_dual_mov_b32 v55, s4
	ds_load_u8 v102, v4 offset:2688
	ds_load_u8 v103, v4 offset:2944
	ds_load_u8 v104, v4 offset:2816
	ds_load_u8 v105, v4 offset:2560
	ds_load_u8 v106, v4 offset:2176
	ds_load_u8 v107, v4 offset:2432
	ds_load_u8 v108, v4 offset:2304
	ds_load_u8 v109, v4 offset:2048
	ds_load_u8 v110, v3 offset:592
	ds_load_u8 v111, v3 offset:560
	ds_load_u8 v112, v3 offset:528
	ds_load_u8 v113, v3 offset:496
	ds_load_u8 v18, v3 offset:464
	ds_load_u8 v51, v3 offset:432
	ds_load_u8 v53, v3 offset:400
	ds_load_u8 v71, v3 offset:368
	ds_load_u8 v75, v3 offset:336
	ds_load_u8 v76, v3 offset:304
	ds_load_u8 v77, v3 offset:272
	ds_load_u8 v78, v3 offset:240
	ds_load_u8 v83, v3 offset:80
	ds_load_u8 v84, v3 offset:48
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v66, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v9, v63, v9, 0xc0c0004
	v_perm_b32 v67, v13, v12, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[47:50], v[5:8], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v63, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v8, v67, 16, v66
	ds_load_u8 v5, v3 offset:672
	ds_load_u8 v6, v3 offset:640
	ds_load_u8 v7, v3 offset:736
	ds_load_u8 v66, v3 offset:704
	ds_load_u8 v91, v3 offset:848
	ds_load_u8 v92, v3 offset:816
	ds_load_u8 v93, v3 offset:784
	ds_load_u8 v94, v3 offset:752
	ds_load_u8 v64, v3 offset:544
	ds_load_u8 v65, v3 offset:512
	ds_load_u8 v67, v3 offset:608
	ds_load_u8 v68, v3 offset:576
	ds_load_u8 v69, v4 offset:3712
	ds_load_u8 v70, v4 offset:3968
	ds_load_u8 v72, v4 offset:3840
	ds_load_u8 v73, v4 offset:3584
	ds_load_u8 v74, v4 offset:3200
	ds_load_u8 v95, v4 offset:3456
	ds_load_u8 v96, v4 offset:3328
	ds_load_u8 v97, v4 offset:3072
	ds_load_u8 v98, v3 offset:720
	ds_load_u8 v99, v3 offset:688
	ds_load_u8 v100, v3 offset:656
	ds_load_u8 v101, v3 offset:624
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v51, v53, v51, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v75, v75, v71, 0xc0c0004
	v_perm_b32 v18, v18, v113, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v53, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_perm_b32 v76, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v68, v67, 0xc0c0004
	v_perm_b32 v79, v79, v78, 0xc0c0004
	v_perm_b32 v80, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v72, v70, 0xc0c0004
	v_perm_b32 v72, v109, v106, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v81, v85, v84, 0xc0c0004
	v_perm_b32 v6, v66, v7, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v73, v69, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v97, v74, 0xc0c0004
	v_perm_b32 v69, v96, v95, 0xc0c0004
	v_lshl_or_b32 v7, v63, 16, v9
	v_perm_b32 v9, v105, v102, 0xc0c0004
	v_perm_b32 v63, v104, v103, 0xc0c0004
	v_perm_b32 v73, v108, v107, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v65, 16, v64
	v_lshl_or_b32 v66, v67, 16, v66
	v_lshl_or_b32 v65, v69, 16, v68
	ds_load_u8 v67, v3 offset:1440
	ds_load_u8 v68, v3 offset:1408
	ds_load_u8 v69, v3 offset:1504
	ds_load_u8 v70, v3 offset:1472
	v_lshl_or_b32 v64, v63, 16, v9
	v_lshl_or_b32 v63, v73, 16, v72
	ds_load_u8 v9, v3 offset:1184
	ds_load_u8 v72, v3 offset:1152
	ds_load_u8 v73, v3 offset:1248
	ds_load_u8 v102, v3 offset:1216
	ds_load_u8 v74, v3 offset:1312
	ds_load_u8 v95, v3 offset:1280
	ds_load_u8 v96, v3 offset:1376
	ds_load_u8 v97, v3 offset:1344
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v103, s14, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v104, v3 offset:1520
	ds_load_u8 v105, v3 offset:1488
	ds_load_u8 v106, v3 offset:1456
	ds_load_u8 v107, v3 offset:1424
	v_wmma_i32_16x16x16_iu8 v[10:17], v[63:66], v[5:8], v[10:17] neg_lo:[1,1,0]
	ds_load_u8 v108, v3 offset:1392
	ds_load_u8 v109, v3 offset:1360
	ds_load_u8 v114, v3 offset:1328
	ds_load_u8 v115, v3 offset:1296
	v_lshl_or_b32 v78, v18, 16, v51
	v_lshl_or_b32 v77, v75, 16, v53
	v_lshl_or_b32 v76, v79, 16, v76
	v_lshl_or_b32 v75, v80, 16, v81
	v_perm_b32 v18, v93, v92, 0xc0c0004
	v_perm_b32 v51, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v53, v100, v99, 0xc0c0004
	v_perm_b32 v79, v98, v94, 0xc0c0004
	v_perm_b32 v80, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v68, v67, 0xc0c0004
	v_perm_b32 v81, v110, v101, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v72, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v95, v74, 0xc0c0004
	v_perm_b32 v68, v102, v73, 0xc0c0004
	ds_load_u8 v69, v3 offset:1056
	ds_load_u8 v70, v3 offset:1024
	ds_load_u8 v72, v3 offset:1120
	ds_load_u8 v73, v3 offset:1088
	ds_load_u8 v74, v4 offset:5760
	ds_load_u8 v102, v4 offset:6016
	ds_load_u8 v117, v4 offset:5888
	ds_load_u8 v118, v4 offset:5632
	ds_load_u8 v119, v4 offset:5248
	ds_load_u8 v120, v4 offset:5504
	ds_load_u8 v121, v4 offset:5376
	ds_load_u8 v122, v4 offset:5120
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v67, v97, v96, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v95, v3 offset:1264
	ds_load_u8 v96, v3 offset:1232
	ds_load_u8 v97, v3 offset:1200
	ds_load_u8 v116, v3 offset:1168
	v_lshl_or_b32 v6, v68, 16, v9
	v_wmma_i32_16x16x16_iu8 v[55:62], v[47:50], v[75:78], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v67, 16, v7
	ds_load_u8 v5, v4 offset:4736
	ds_load_u8 v9, v4 offset:4864
	ds_load_u8 v67, v4 offset:4608
	ds_load_u8 v68, v4 offset:4992
	ds_load_u8 v123, v4 offset:4224
	ds_load_u8 v124, v4 offset:4480
	ds_load_u8 v125, v4 offset:4352
	ds_load_u8 v126, v4 offset:4096
	ds_load_u8 v127, v3 offset:1136
	ds_load_u8 v128, v3 offset:1104
	ds_load_u8 v129, v3 offset:1072
	ds_load_u8 v130, v3 offset:1040
	v_lshl_or_b32 v49, v51, 16, v18
	v_lshl_or_b32 v48, v79, 16, v53
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_lshl_or_b32 v47, v81, 16, v80
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v70, v73, v72, 0xc0c0004
	v_perm_b32 v18, v115, v114, 0xc0c0004
	v_perm_b32 v51, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v73, v117, v102, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v72, v118, v74, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v67, v67, v5, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v74, v122, v119, 0xc0c0004
	ds_load_u8 v102, v3 offset:1952
	ds_load_u8 v117, v3 offset:1920
	ds_load_u8 v118, v3 offset:2016
	ds_load_u8 v119, v3 offset:1984
	ds_load_u8 v121, v3 offset:1824
	ds_load_u8 v122, v3 offset:1792
	ds_load_u8 v131, v3 offset:1888
	ds_load_u8 v132, v3 offset:1856
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v9, v68, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v123, v126, v123, 0xc0c0004
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_lshl_or_b32 v5, v70, 16, v69
	v_lshl_or_b32 v70, v73, 16, v72
	v_lshl_or_b32 v69, v120, 16, v74
	v_lshl_or_b32 v68, v9, 16, v67
	v_lshl_or_b32 v67, v124, 16, v123
	ds_load_u8 v9, v103
	ds_load_u8 v103, v3 offset:2000
	ds_load_u8 v120, v3 offset:1968
	ds_load_u8 v123, v3 offset:1936
	v_perm_b32 v53, v116, v97, 0xc0c0004
	v_perm_b32 v75, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v76, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[67:70], v[5:8], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v77, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v72, v117, v102, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v122, v121, 0xc0c0004
	v_perm_b32 v73, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v132, v131, 0xc0c0004
	ds_load_u8 v102, v3 offset:1904
	ds_load_u8 v117, v3 offset:1872
	ds_load_u8 v118, v3 offset:1840
	ds_load_u8 v119, v3 offset:1808
	v_lshl_or_b32 v6, v73, 16, v72
	v_lshl_or_b32 v5, v121, 16, v74
	ds_load_u8 v7, v3 offset:1696
	ds_load_u8 v8, v3 offset:1664
	ds_load_u8 v72, v3 offset:1760
	ds_load_u8 v73, v3 offset:1728
	ds_load_u8 v74, v3 offset:1568
	ds_load_u8 v121, v3 offset:1536
	ds_load_u8 v122, v3 offset:1632
	ds_load_u8 v124, v3 offset:1600
	ds_load_u8 v125, v4 offset:7808
	ds_load_u8 v126, v4 offset:8064
	ds_load_u8 v131, v4 offset:7936
	ds_load_u8 v132, v4 offset:7680
	ds_load_u8 v133, v4 offset:7296
	ds_load_u8 v134, v4 offset:7552
	ds_load_u8 v135, v4 offset:7424
	ds_load_u8 v136, v4 offset:7168
	ds_load_u8 v137, v4 offset:6784
	ds_load_u8 v138, v4 offset:7040
	ds_load_u8 v139, v4 offset:6912
	ds_load_u8 v140, v4 offset:6656
	ds_load_u8 v141, v4 offset:6272
	ds_load_u8 v142, v4 offset:6528
	ds_load_u8 v143, v4 offset:6400
	ds_load_u8 v144, v4 offset:6144
	ds_load_u8 v145, v3 offset:1776
	ds_load_u8 v146, v3 offset:1744
	ds_load_u8 v147, v3 offset:1712
	ds_load_u8 v148, v3 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v7, v73, v72, 0xc0c0004
	ds_load_u8 v8, v3 offset:1648
	ds_load_u8 v149, v3 offset:1616
	ds_load_u8 v150, v3 offset:1584
	ds_load_u8 v151, v3 offset:1552
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v3, v121, v74, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v72, v124, v122, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v73, v132, v125, 0xc0c0004
	v_perm_b32 v74, v131, v126, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v121, v136, v133, 0xc0c0004
	v_perm_b32 v122, v135, v134, 0xc0c0004
	v_lshl_or_b32 v4, v7, 16, v4
	v_perm_b32 v9, v87, v9, 0xc0c0004
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v124, v140, v137, 0xc0c0004
	v_lshl_or_b32 v73, v122, 16, v121
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v121, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v144, v141, 0xc0c0004
	v_perm_b32 v125, v139, v138, 0xc0c0004
	v_lshl_or_b32 v3, v72, 16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v71, v121, 16, v7
	v_perm_b32 v7, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v149, v8, 0xc0c0004
	v_lshl_or_b32 v72, v125, 16, v124
	v_lshl_or_b32 v50, v9, 16, v7
	v_perm_b32 v7, v107, v106, 0xc0c0004
	v_perm_b32 v9, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[10:17], v[71:74], v[3:6], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[47:50], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v51, 16, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v50, v9, 16, v7
	v_lshl_or_b32 v48, v75, 16, v53
	v_lshl_or_b32 v47, v77, 16, v76
	v_perm_b32 v7, v123, v120, 0xc0c0004
	v_perm_b32 v9, v103, v86, 0xc0c0004
	v_perm_b32 v18, v119, v118, 0xc0c0004
	v_perm_b32 v51, v117, v102, 0xc0c0004
	v_perm_b32 v53, v148, v147, 0xc0c0004
	v_perm_b32 v63, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[67:70], v[47:50], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v9, 16, v7
	v_lshl_or_b32 v49, v51, 16, v18
	v_lshl_or_b32 v48, v63, 16, v53
	v_lshl_or_b32 v47, v8, 16, v64
	v_cvt_f32_i32_e32 v6, v11
	v_cvt_f32_i32_e32 v3, v12
	v_cvt_f32_i32_e32 v7, v13
	v_cvt_f32_i32_e32 v4, v14
	v_wmma_i32_16x16x16_iu8 v[55:62], v[71:74], v[47:50], v[55:62] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v15
	v_cvt_f32_i32_e32 v5, v16
	v_cvt_f32_i32_e32 v9, v17
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v55
	v_cvt_f32_i32_e32 v16, v56
	v_cvt_f32_i32_e32 v15, v57
	v_cvt_f32_i32_e32 v18, v58
	v_cvt_f32_i32_e32 v11, v59
	v_cvt_f32_i32_e32 v14, v60
	v_cvt_f32_i32_e32 v13, v61
	v_cvt_f32_i32_e32 v17, v62
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v47, v45, s4, 1
	v_add_lshl_u32 v48, v46, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v49, v44, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v50, v43, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v55, v47, s[12:15], 0 offen
	buffer_load_u16 v56, v48, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v47, v42, s4, 1
	v_dual_cndmask_b32 v48, 0x80000000, v49 :: v_dual_cndmask_b32 v49, 0x80000000, v50
	v_add_lshl_u32 v50, v40, s4, 1
	v_add_lshl_u32 v51, v38, s4, 1
	v_add_lshl_u32 v53, v41, s4, 1
	v_add_lshl_u32 v57, v39, s4, 1
	v_add_lshl_u32 v58, v37, s4, 1
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v59, 0x80000000, v51 :: v_dual_cndmask_b32 v60, 0x80000000, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v61, 0x80000000, v57 :: v_dual_cndmask_b32 v62, 0x80000000, v58
	s_clause 0x7
	buffer_load_u16 v57, v48, s[28:31], 0 offen
	buffer_load_u16 v58, v49, s[28:31], 0 offen
	buffer_load_u16 v51, v47, s[28:31], 0 offen
	buffer_load_u16 v53, v50, s[28:31], 0 offen
	buffer_load_u16 v49, v59, s[28:31], 0 offen
	buffer_load_u16 v50, v60, s[28:31], 0 offen
	buffer_load_u16 v47, v61, s[28:31], 0 offen
	buffer_load_u16 v48, v62, s[28:31], 0 offen
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v73, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s1, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v59, v1 offset:416
	ds_load_u8 v60, v1 offset:384
	ds_load_u8 v61, v1 offset:480
	ds_load_u8 v62, v1 offset:448
	ds_load_u8 v63, v1 offset:288
	ds_load_u8 v64, v1 offset:256
	ds_load_u8 v65, v1 offset:352
	ds_load_u8 v66, v1 offset:320
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v54, s26, v54
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v52, s1, v52
	v_add_nc_u32_e32 v2, s1, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v60, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v61, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v66, v65, 0xc0c0004
	ds_load_u8 v63, v1 offset:160
	ds_load_u8 v64, v1 offset:128
	ds_load_u8 v65, v1 offset:224
	ds_load_u8 v66, v1 offset:192
	v_lshl_or_b32 v81, v60, 16, v59
	v_lshl_or_b32 v80, v62, 16, v61
	ds_load_u8 v59, v1 offset:96
	ds_load_u8 v60, v1 offset:64
	ds_load_u8 v61, v1
	ds_load_u8 v62, v1 offset:32
	ds_load_u8 v67, v54 offset:1664
	ds_load_u8 v68, v54 offset:1920
	ds_load_u8 v70, v54 offset:1792
	ds_load_u8 v71, v54 offset:1536
	ds_load_u8 v72, v54 offset:1152
	ds_load_u8 v73, v54 offset:1408
	ds_load_u8 v74, v54 offset:1280
	ds_load_u8 v75, v54 offset:1024
	ds_load_u8 v76, v54 offset:640
	ds_load_u8 v77, v54 offset:896
	ds_load_u8 v78, v54 offset:768
	ds_load_u8 v79, v54 offset:512
	ds_load_u8 v82, v54 offset:128
	ds_load_u8 v86, v54 offset:384
	ds_load_u8 v87, v54 offset:256
	ds_load_u8 v88, v54
	ds_load_u8 v104, v1 offset:208
	ds_load_u8 v105, v1 offset:176
	ds_load_u8 v106, v1 offset:144
	ds_load_u8 v107, v1 offset:112
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v61, v61, v62, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v62, v71, v67, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v67, v74, v73, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_perm_b32 v64, v66, v65, 0xc0c0004
	v_perm_b32 v65, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v79, v76, 0xc0c0004
	v_perm_b32 v70, v78, v77, 0xc0c0004
	v_perm_b32 v66, v75, v72, 0xc0c0004
	v_lshl_or_b32 v79, v64, 16, v63
	v_lshl_or_b32 v78, v59, 16, v61
	v_lshl_or_b32 v85, v65, 16, v62
	v_lshl_or_b32 v83, v70, 16, v68
	v_dual_mov_b32 v77, s11 :: v_dual_mov_b32 v76, s10
	ds_load_u8 v61, v1 offset:928
	ds_load_u8 v62, v1 offset:896
	ds_load_u8 v63, v1 offset:992
	ds_load_u8 v64, v1 offset:960
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v59, v88, v82, 0xc0c0004
	v_perm_b32 v65, v87, v86, 0xc0c0004
	v_lshl_or_b32 v84, v67, 16, v66
	v_dual_mov_b32 v75, s9 :: v_dual_mov_b32 v74, s8
	v_mov_b32_e32 v73, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v82, v65, 16, v59
	ds_load_u8 v59, v1 offset:800
	ds_load_u8 v86, v1 offset:768
	ds_load_u8 v87, v1 offset:864
	ds_load_u8 v88, v1 offset:832
	ds_load_u8 v110, v1 offset:976
	ds_load_u8 v111, v1 offset:944
	ds_load_u8 v112, v1 offset:912
	ds_load_u8 v113, v1 offset:880
	v_dual_mov_b32 v72, s6 :: v_dual_mov_b32 v71, s5
	v_mov_b32_e32 v70, s4
	ds_load_u8 v125, v54 offset:2688
	ds_load_u8 v126, v54 offset:2944
	ds_load_u8 v127, v54 offset:2816
	ds_load_u8 v128, v54 offset:2560
	ds_load_u8 v129, v54 offset:2176
	ds_load_u8 v130, v54 offset:2432
	ds_load_u8 v131, v54 offset:2304
	ds_load_u8 v132, v54 offset:2048
	ds_load_u8 v133, v1 offset:592
	ds_load_u8 v134, v1 offset:560
	ds_load_u8 v135, v1 offset:528
	ds_load_u8 v136, v1 offset:496
	ds_load_u8 v69, v1 offset:464
	ds_load_u8 v94, v1 offset:432
	ds_load_u8 v98, v1 offset:400
	ds_load_u8 v99, v1 offset:368
	ds_load_u8 v100, v1 offset:336
	ds_load_u8 v101, v1 offset:304
	ds_load_u8 v102, v1 offset:272
	ds_load_u8 v103, v1 offset:240
	ds_load_u8 v108, v1 offset:80
	ds_load_u8 v109, v1 offset:48
	ds_load_u8 v60, v1 offset:16
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v89, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v90, v64, v63, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[82:85], v[78:81], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v59, v86, v59, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v86, v88, v87, 0xc0c0004
	v_lshl_or_b32 v81, v90, 16, v89
	ds_load_u8 v78, v1 offset:672
	ds_load_u8 v79, v1 offset:640
	ds_load_u8 v80, v1 offset:736
	ds_load_u8 v89, v1 offset:704
	ds_load_u8 v114, v1 offset:848
	ds_load_u8 v115, v1 offset:816
	ds_load_u8 v116, v1 offset:784
	ds_load_u8 v117, v1 offset:752
	ds_load_u8 v87, v1 offset:544
	ds_load_u8 v88, v1 offset:512
	ds_load_u8 v90, v1 offset:608
	ds_load_u8 v91, v1 offset:576
	ds_load_u8 v92, v54 offset:3712
	ds_load_u8 v93, v54 offset:3968
	ds_load_u8 v95, v54 offset:3840
	ds_load_u8 v96, v54 offset:3584
	ds_load_u8 v97, v54 offset:3200
	ds_load_u8 v118, v54 offset:3456
	ds_load_u8 v119, v54 offset:3328
	ds_load_u8 v120, v54 offset:3072
	ds_load_u8 v121, v1 offset:720
	ds_load_u8 v122, v1 offset:688
	ds_load_u8 v123, v1 offset:656
	ds_load_u8 v124, v1 offset:624
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v98, v98, v94, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v69, v69, v136, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v102, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v91, v90, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v104, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v90, v95, v93, 0xc0c0004
	v_perm_b32 v95, v132, v129, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v60, v60, v109, 0xc0c0004
	v_perm_b32 v79, v89, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v96, v92, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v120, v97, 0xc0c0004
	v_perm_b32 v92, v119, v118, 0xc0c0004
	v_lshl_or_b32 v80, v86, 16, v59
	v_perm_b32 v59, v128, v125, 0xc0c0004
	v_perm_b32 v86, v127, v126, 0xc0c0004
	v_perm_b32 v96, v131, v130, 0xc0c0004
	v_lshl_or_b32 v79, v79, 16, v78
	v_lshl_or_b32 v78, v88, 16, v87
	v_lshl_or_b32 v89, v90, 16, v89
	v_lshl_or_b32 v88, v92, 16, v91
	ds_load_u8 v90, v1 offset:1440
	ds_load_u8 v91, v1 offset:1408
	ds_load_u8 v92, v1 offset:1504
	ds_load_u8 v93, v1 offset:1472
	v_lshl_or_b32 v87, v86, 16, v59
	v_lshl_or_b32 v86, v96, 16, v95
	ds_load_u8 v59, v1 offset:1184
	ds_load_u8 v95, v1 offset:1152
	ds_load_u8 v96, v1 offset:1248
	ds_load_u8 v125, v1 offset:1216
	ds_load_u8 v97, v1 offset:1312
	ds_load_u8 v118, v1 offset:1280
	ds_load_u8 v119, v1 offset:1376
	ds_load_u8 v120, v1 offset:1344
	ds_load_u8 v126, v1 offset:1520
	ds_load_u8 v127, v1 offset:1488
	ds_load_u8 v128, v1 offset:1456
	ds_load_u8 v129, v1 offset:1424
	ds_load_u8 v130, v1 offset:1392
	ds_load_u8 v131, v1 offset:1360
	ds_load_u8 v132, v1 offset:1328
	ds_load_u8 v137, v1 offset:1296
	v_wmma_i32_16x16x16_iu8 v[61:68], v[86:89], v[78:81], v[61:68] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v69, 16, v98
	v_lshl_or_b32 v100, v99, 16, v102
	v_lshl_or_b32 v99, v103, 16, v105
	v_lshl_or_b32 v98, v104, 16, v60
	v_perm_b32 v60, v116, v115, 0xc0c0004
	v_perm_b32 v69, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v102, v123, v122, 0xc0c0004
	v_perm_b32 v103, v121, v117, 0xc0c0004
	v_perm_b32 v104, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v105, v133, v124, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v78, v91, v90, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[82:85], v[98:101], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v79, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v59, v95, v59, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v80, v118, v97, 0xc0c0004
	v_perm_b32 v91, v125, v96, 0xc0c0004
	ds_load_u8 v92, v1 offset:1056
	ds_load_u8 v93, v1 offset:1024
	ds_load_u8 v95, v1 offset:1120
	ds_load_u8 v96, v1 offset:1088
	ds_load_u8 v97, v54 offset:5760
	ds_load_u8 v125, v54 offset:6016
	ds_load_u8 v139, v54 offset:5888
	ds_load_u8 v140, v54 offset:5632
	ds_load_u8 v141, v54 offset:5248
	ds_load_u8 v142, v54 offset:5504
	ds_load_u8 v143, v54 offset:5376
	ds_load_u8 v144, v54 offset:5120
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v90, v120, v119, 0xc0c0004
	v_lshl_or_b32 v81, v79, 16, v78
	ds_load_u8 v118, v1 offset:1264
	ds_load_u8 v119, v1 offset:1232
	ds_load_u8 v120, v1 offset:1200
	ds_load_u8 v138, v1 offset:1168
	v_lshl_or_b32 v79, v91, 16, v59
	v_lshl_or_b32 v84, v69, 16, v60
	v_lshl_or_b32 v80, v90, 16, v80
	ds_load_u8 v59, v54 offset:4736
	ds_load_u8 v78, v54 offset:4864
	ds_load_u8 v90, v54 offset:4608
	ds_load_u8 v91, v54 offset:4992
	ds_load_u8 v145, v54 offset:4224
	ds_load_u8 v146, v54 offset:4480
	ds_load_u8 v147, v54 offset:4352
	ds_load_u8 v148, v54 offset:4096
	ds_load_u8 v149, v1 offset:1136
	ds_load_u8 v150, v1 offset:1104
	ds_load_u8 v151, v1 offset:1072
	ds_load_u8 v152, v1 offset:1040
	v_lshl_or_b32 v83, v103, 16, v102
	v_lshl_or_b32 v82, v105, 16, v104
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v60, v137, v132, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v93, v96, v95, 0xc0c0004
	v_perm_b32 v69, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v96, v139, v125, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v95, v140, v97, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v59, v90, v59, 0xc0c0004
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v97, v144, v141, 0xc0c0004
	ds_load_u8 v125, v1 offset:1952
	ds_load_u8 v139, v1 offset:1920
	ds_load_u8 v140, v1 offset:2016
	ds_load_u8 v141, v1 offset:1984
	ds_load_u8 v143, v1 offset:1824
	ds_load_u8 v144, v1 offset:1792
	ds_load_u8 v153, v1 offset:1888
	ds_load_u8 v154, v1 offset:1856
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v90, v78, v91, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v145, v148, v145, 0xc0c0004
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_lshl_or_b32 v78, v93, 16, v92
	v_lshl_or_b32 v93, v96, 16, v95
	v_lshl_or_b32 v92, v142, 16, v97
	v_lshl_or_b32 v91, v90, 16, v59
	v_lshl_or_b32 v90, v146, 16, v145
	ds_load_u8 v2, v2
	ds_load_u8 v59, v1 offset:2000
	ds_load_u8 v142, v1 offset:1968
	ds_load_u8 v145, v1 offset:1936
	v_perm_b32 v98, v138, v120, 0xc0c0004
	v_perm_b32 v99, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v100, v152, v151, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[90:93], v[78:81], v[61:68] neg_lo:[1,1,0]
	v_perm_b32 v101, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v95, v139, v125, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v144, v143, 0xc0c0004
	v_perm_b32 v96, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v154, v153, 0xc0c0004
	ds_load_u8 v125, v1 offset:1904
	ds_load_u8 v139, v1 offset:1872
	ds_load_u8 v140, v1 offset:1840
	ds_load_u8 v141, v1 offset:1808
	v_lshl_or_b32 v81, v96, 16, v95
	v_lshl_or_b32 v80, v143, 16, v97
	ds_load_u8 v78, v1 offset:1696
	ds_load_u8 v79, v1 offset:1664
	ds_load_u8 v95, v1 offset:1760
	ds_load_u8 v96, v1 offset:1728
	ds_load_u8 v97, v1 offset:1568
	ds_load_u8 v143, v1 offset:1536
	ds_load_u8 v144, v1 offset:1632
	ds_load_u8 v146, v1 offset:1600
	ds_load_u8 v147, v54 offset:7808
	ds_load_u8 v148, v54 offset:8064
	ds_load_u8 v153, v54 offset:7936
	ds_load_u8 v154, v54 offset:7680
	ds_load_u8 v155, v54 offset:7296
	ds_load_u8 v156, v54 offset:7552
	ds_load_u8 v157, v54 offset:7424
	ds_load_u8 v158, v54 offset:7168
	ds_load_u8 v159, v54 offset:6784
	ds_load_u8 v160, v54 offset:7040
	ds_load_u8 v161, v54 offset:6912
	ds_load_u8 v162, v54 offset:6656
	ds_load_u8 v163, v54 offset:6272
	ds_load_u8 v164, v54 offset:6528
	ds_load_u8 v165, v54 offset:6400
	ds_load_u8 v54, v54 offset:6144
	ds_load_u8 v166, v1 offset:1776
	ds_load_u8 v167, v1 offset:1744
	ds_load_u8 v168, v1 offset:1712
	ds_load_u8 v169, v1 offset:1680
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v79, v96, v95, 0xc0c0004
	ds_load_u8 v170, v1 offset:1648
	ds_load_u8 v171, v1 offset:1616
	ds_load_u8 v172, v1 offset:1584
	ds_load_u8 v1, v1 offset:1552
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v95, v143, v97, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v97, v154, v147, 0xc0c0004
	v_perm_b32 v143, v153, v148, 0xc0c0004
	v_perm_b32 v2, v110, v2, 0xc0c0004
	v_perm_b32 v96, v146, v144, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v144, v158, v155, 0xc0c0004
	v_perm_b32 v146, v157, v156, 0xc0c0004
	v_lshl_or_b32 v97, v143, 16, v97
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v147, v162, v159, 0xc0c0004
	v_perm_b32 v148, v161, v160, 0xc0c0004
	v_perm_b32 v52, v59, v52, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v143, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v54, v54, v163, 0xc0c0004
	v_perm_b32 v59, v139, v125, 0xc0c0004
	v_lshl_or_b32 v79, v79, 16, v78
	v_lshl_or_b32 v78, v96, 16, v95
	v_lshl_or_b32 v96, v146, 16, v144
	v_lshl_or_b32 v94, v143, 16, v54
	v_perm_b32 v54, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v172, 0xc0c0004
	v_lshl_or_b32 v95, v148, 16, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v85, v2, 16, v54
	v_perm_b32 v2, v129, v128, 0xc0c0004
	v_perm_b32 v54, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[94:97], v[78:81], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[86:89], v[82:85], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v69, 16, v60
	v_lshl_or_b32 v85, v54, 16, v2
	v_lshl_or_b32 v83, v99, 16, v98
	v_lshl_or_b32 v82, v101, 16, v100
	v_perm_b32 v2, v145, v142, 0xc0c0004
	v_perm_b32 v54, v141, v140, 0xc0c0004
	v_perm_b32 v60, v169, v168, 0xc0c0004
	v_perm_b32 v69, v167, v166, 0xc0c0004
	v_perm_b32 v86, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[90:93], v[82:85], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v52, 16, v2
	v_lshl_or_b32 v84, v59, 16, v54
	v_lshl_or_b32 v83, v69, 16, v60
	v_lshl_or_b32 v82, v86, 16, v1
	v_cvt_f32_i32_e32 v1, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v59, v63
	v_cvt_f32_i32_e32 v63, v64
	v_wmma_i32_16x16x16_iu8 v[70:77], v[94:97], v[82:85], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v60, v65
	v_cvt_f32_i32_e32 v64, v66
	v_cvt_f32_i32_e32 v61, v67
	v_cvt_f32_i32_e32 v65, v68
	v_cvt_f32_i32_e32 v67, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v70, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v66, v74
	v_cvt_f32_i32_e32 v69, v75
	v_cvt_f32_i32_e32 v68, v76
	v_cvt_f32_i32_e32 v72, v77
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s17, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s17, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v47.h, v55.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v48.h, v58.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v45, s1, 1
	v_add_lshl_u32 v45, v46, s1, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s1, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v44, v44, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v43, v43, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v40, s1, 1
	v_add_lshl_u32 v42, v42, s1, 1
	v_add_lshl_u32 v38, v38, s1, 1
	v_add_lshl_u32 v41, v41, s1, 1
	v_add_lshl_u32 v39, v39, s1, 1
	v_add_lshl_u32 v37, v37, s1, 1
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v45, v45, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	s_clause 0x7
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	buffer_load_u16 v42, v42, s[28:31], 0 offen
	buffer_load_u16 v41, v41, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	buffer_load_u16 v37, v37, s[28:31], 0 offen
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v46.h, v56.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v49.h, v57.l
	v_mov_b16_e32 v50.h, v53.l
	v_mov_b16_e32 v53.h, v49.l
	v_mov_b16_e32 v54.h, v48.l
	v_mov_b16_e32 v55.h, v47.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v47.l, v46.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v48.l, v46.l
	v_mov_b16_e32 v49.l, v46.l
	v_mov_b16_e32 v53.l, v46.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v35, 0x78, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.h, v51.l
	v_mov_b16_e32 v52.h, v50.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v56, 0x5410 :: v_dual_mul_f32 v81, v46, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v50.l, v46.l
	v_mov_b16_e32 v51.l, v46.l
	v_mov_b16_e32 v52.l, v46.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v46, v48
	v_dual_mul_f32 v48, v48, v47 :: v_dual_mul_f32 v85, v46, v53
	v_dual_mul_f32 v49, v49, v47 :: v_dual_mul_f32 v84, v46, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v54.l, v46.l
	v_mov_b16_e32 v55.l, v46.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v83, v46, v51
	v_mul_f32_e32 v50, v50, v47
	v_dual_mul_f32 v51, v51, v47 :: v_dual_mul_f32 v86, v46, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v49, v10, v19
	v_fma_f32 v11, v85, v11, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.h, v46.l
	v_mov_b16_e32 v74.h, v46.l
	v_mov_b16_e32 v75.h, v46.l
	v_mov_b16_e32 v76.h, v46.l
	v_mov_b16_e32 v77.h, v46.l
	v_mov_b16_e32 v78.h, v46.l
	v_mov_b16_e32 v79.h, v46.l
	v_mov_b16_e32 v80.h, v46.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v52, v47
	v_mul_f32_e32 v53, v53, v47
	v_mul_f32_e32 v87, v46, v55
	v_mul_f32_e32 v46, v46, v54
	v_mul_f32_e32 v54, v54, v47
	v_mul_f32_e32 v47, v55, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v86, v14, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v19, v10, s3
	v_cndmask_b32_e64 v11, v24, v11, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v36, s27, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v46, v17, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v22, v14, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s34, s27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v82, v16, v30
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v81, v12, v32
	v_fma_f32 v18, v84, v18, v26
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v35, s0, v35, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v51, v3, v31
	v_fma_f32 v4, v53, v4, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v20, v17, s3
	v_cndmask_b32_e64 v12, v32, v12, s3
	v_cndmask_b32_e64 v16, v30, v16, s3
	v_cndmask_b32_e64 v18, v26, v18, s3
	v_cndmask_b32_e64 v3, v31, v3, s3
	v_cndmask_b32_e64 v4, v27, v4, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v48, v6, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v57, 0x7632 :: v_dual_and_b32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s1, s27, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s26, s14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v34, v6, s3
	s_mov_b32 s16, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s27, s15
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v2, 16, v2
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v19, 16, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v50, v7, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v87, v13, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v47, v5, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v33, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v83, v15, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v21, v13, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v33, v24, v2 :: v_dual_mul_f32 v24, v19, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v23, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v21, 16, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v52, v8, v29
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v20, 16, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v69, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v23, 16, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v54, v9, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v28, v15, s3
	v_cndmask_b32_e64 v8, v29, v8, s3
	v_cndmask_b32_e64 v14, v14, v24, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v31, v22, v2 :: v_dual_lshlrev_b32 v26, 16, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v25, v9, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, v21, v2 :: v_dual_lshlrev_b32 v27, 16, v39
	v_dual_mul_f32 v21, v19, v21 :: v_dual_lshlrev_b32 v36, 1, v35
	v_mul_f32_e32 v29, v20, v2
	v_dual_mul_f32 v20, v19, v20 :: v_dual_lshlrev_b32 v25, 16, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v14.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v19, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v28, v1, v10
	v_fma_f32 v21, v21, v67, v12
	v_fma_f32 v20, v20, v71, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v25, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v73, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v10, v1, s2
	v_cndmask_b32_e64 v10, v12, v21, s2
	v_cndmask_b32_e64 v12, v16, v20, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v19, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v18, v22, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v27, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v10.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v19, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v75.l, v16.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v23, v2
	v_dual_mul_f32 v23, v19, v23 :: v_dual_mul_f32 v2, v26, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v66, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v30, v59, v3
	v_fma_f32 v23, v23, v70, v15
	v_fma_f32 v2, v2, v65, v9
	v_fma_f32 v30, v32, v60, v4
	v_fma_f32 v32, v34, v61, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s2
	v_cndmask_b32_e64 v15, v15, v23, s2
	v_cndmask_b32_e64 v2, v9, v2, s2
	v_cndmask_b32_e64 v4, v4, v30, s2
	v_cndmask_b32_e64 v11, v11, v25, s2
	v_cndmask_b32_e64 v5, v5, v32, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.l, v15.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v19, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v29, v62, v6
	v_fma_f32 v29, v31, v63, v7
	v_fma_f32 v31, v33, v64, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v3, v3
	v_bfe_u32 v21, v4, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v26, s2
	v_cndmask_b32_e64 v7, v7, v29, s2
	v_cndmask_b32_e64 v8, v8, v31, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v35, v35, s1, 1
	v_cmp_o_f32_e64 s1, v12, v12
	v_bfe_u32 v18, v6, 16, 1
	v_bfe_u32 v20, v7, 16, 1
	v_cmp_o_f32_e64 s0, v6, v6
	v_cmp_o_f32_e64 s4, v7, v7
	v_bfe_u32 v22, v8, 16, 1
	v_add3_u32 v6, v6, v18, 0x7fff
	v_and_b32_e32 v18, 1, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v68, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v20, 0x7fff
	v_and_b32_e32 v20, 1, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v19, v72, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v16, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v13, v27, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v15, v15
	v_cmp_o_f32_e64 s7, v4, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v17, v19, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v17, v1, 16, 1
	v_bfe_u32 v19, v3, 16, 1
	v_cmp_o_f32_e64 s2, v10, v10
	v_cmp_o_f32_e64 s8, v8, v8
	v_mov_b16_e32 v78.l, v11.h
	v_add3_u32 v1, v1, v17, 0x7fff
	v_add3_u32 v3, v3, v19, 0x7fff
	v_and_b32_e32 v19, 1, v75
	v_bfe_u32 v23, v5, 16, 1
	v_bfe_u32 v24, v2, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v17, 1, v58
	v_mov_b16_e32 v79.l, v13.h
	v_mov_b16_e32 v80.l, v9.h
	v_add3_u32 v4, v4, v21, 0x7fff
	v_add3_u32 v8, v8, v22, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v6.h, s0
	v_add3_u32 v6, v10, v18, 0x7fff
	v_add3_u32 v10, v12, v17, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s4
	v_add3_u32 v7, v15, v20, 0x7fff
	v_add3_u32 v12, v16, v19, 0x7fff
	v_cmp_o_f32_e64 s11, v5, v5
	v_cmp_o_f32_e64 s12, v2, v2
	v_add3_u32 v5, v5, v23, 0x7fff
	v_add3_u32 v2, v2, v24, 0x7fff
	v_and_b32_e32 v23, 1, v79
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s8
	v_and_b32_e32 v22, 1, v78
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v12.h, s5
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s6
	v_and_b32_e32 v24, 1, v80
	v_and_b32_e32 v21, 1, v77
	v_cmp_o_f32_e64 s10, v11, v11
	v_cmp_o_f32_e64 s13, v13, v13
	v_cmp_o_f32_e64 s14, v9, v9
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s11
	v_add3_u32 v5, v9, v24, 0x7fff
	v_add3_u32 v9, v13, v23, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v10.h, s1
	v_cndmask_b32_e32 v7, v4, v1, vcc_lo
	v_add3_u32 v8, v11, v22, 0x7fff
	v_cndmask_b32_e32 v10, 0x1054, v56, vcc_lo
	v_dual_cndmask_b32 v12, 0x3276, v57 :: v_dual_cndmask_b32 v1, v1, v4
	v_add3_u32 v11, v14, v21, 0x7fff
	v_cmp_o_f32_e64 s9, v14, v14
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s10
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s13
	v_lshl_or_b32 v9, v10, 8, v10
	v_lshl_or_b32 v10, v12, 8, v12
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s9
	v_cndmask_b16 v8.l, 0x7fff, v5.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, v2, v3 :: v_dual_and_b32 v5, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v10, v11, v0, vcc_lo
	v_cndmask_b32_e32 v2, v3, v2, vcc_lo
	v_cndmask_b32_e32 v0, v0, v11, vcc_lo
	v_lshl_or_b32 v3, v5, 4, v5
	v_lshl_or_b32 v5, v9, 4, v9
	v_dual_cndmask_b32 v9, v8, v6 :: v_dual_cndmask_b32 v6, v6, v8
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 0x5040504, v3
	v_and_b32_e32 v11, 0x7060706, v5
	v_permlanex16_b32 v3, v2, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v0, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v6, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v7, v8
	v_perm_b32 v1, v1, v7, v11
	v_perm_b32 v2, v3, v4, v8
	v_perm_b32 v3, v3, v4, v11
	v_perm_b32 v4, v5, v10, v8
	v_perm_b32 v5, v5, v10, v11
	v_perm_b32 v6, v12, v9, v8
	v_perm_b32 v7, v12, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v36, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v35, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 254
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 254
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14828
; TotalNumSgprs: 47
; NumVgprs: 254
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 254
; Occupancy: 5
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     254
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
