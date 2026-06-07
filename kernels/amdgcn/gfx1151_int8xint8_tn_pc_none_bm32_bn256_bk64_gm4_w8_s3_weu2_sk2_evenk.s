	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s23, s19
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s31, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s28, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s10, 0x7f
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s6, s24, s31
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s27, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s25, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s28, s2
	v_mov_b32_e32 v219, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s26, s25, 4
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 4, v219
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v220, 15, v219
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s7, s24, 7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s8, s25, 7
	v_mul_lo_u32 v2, s25, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v0, v220, 4, v2
	v_add_nc_u32_e32 v2, s4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v1, 2, v219
	v_dual_mov_b32 v10, v0 :: v_dual_lshlrev_b32 v9, 3, v219
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v7, s25, 5, v0
	v_add_nc_u32_e32 v47, s26, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s24, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 24, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v11, v7 :: v_dual_add_nc_u32 v6, s4, v47
	v_or_b32_e32 v48, 0x3f0, v219
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[15:16], null, s25, 48, v[0:1]
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add3_u32 v46, v1, v3, s27
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s4, v7
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v24, 0x80000000, v6, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s6, v46
	v_dual_mov_b32 v235, v15 :: v_dual_add_nc_u32 v4, s4, v15
	v_add3_u32 v5, s6, s7, v46
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s4, s8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v23, s6, v0
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v3, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v27, s6, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v28, s6, v7
	v_add_nc_u32_e32 v29, s6, v15
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	buffer_load_b64 v[7:8], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2
	buffer_load_b128 v[3:6], v2, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v12, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v13, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v23, s2
	v_cndmask_b32_e64 v31, 0x80000000, v27, s2
	v_cndmask_b32_e64 v35, 0x80000000, v28, s2
	v_cndmask_b32_e64 v39, 0x80000000, v29, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[12:13], v1, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4
	buffer_load_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v31, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v35, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v39, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v24, s[20:23], 0 offen
	v_dual_mov_b32 v0, v9 :: v_dual_add_nc_u32 v1, 0, v9
	v_lshrrev_b32_e32 v2, 1, v219
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x17f
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, v1, v9
	v_or_b32_e32 v9, 0x7f0, v219
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v1, v[7:8] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v43, v[3:6]
	s_waitcnt vmcnt(6)
	ds_store_b128 v43, v[19:22] offset:12288
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[23:26] offset:4096
	ds_store_b128 v43, v[15:18] offset:8192
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v1, v[12:13] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v43, v[27:30] offset:16384
	ds_store_b128 v43, v[31:34] offset:20480
	ds_store_b128 v43, v[35:38] offset:24576
	ds_store_b128 v43, v[39:42] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v219
	v_or_b32_e32 v3, 0x7f0, v219
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v5, 0x70, v2
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s29, 0, 0x8800
	s_add_i32 s30, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	s_mov_b32 s11, s4
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s34, s5, 7
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_dual_mov_b32 v19, s11 :: v_dual_mov_b32 v16, s8
	v_dual_mov_b32 v18, s10 :: v_dual_and_b32 v5, 0x70, v2
	v_dual_mov_b32 v17, s9 :: v_dual_mov_b32 v14, s6
	v_dual_mov_b32 v15, s7 :: v_dual_mov_b32 v12, s4
	v_dual_mov_b32 v13, s5 :: v_dual_mov_b32 v2, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:12
	scratch_store_b128 off, v[16:19], off offset:28
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v1, 4, v219
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	s_addk_i32 s31, 0x100
	s_mov_b32 s33, 1
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s29, 0, 0x8800
	s_add_i32 s30, 0, 0x4000
	s_add_i32 s34, s34, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:8
	scratch_store_b32 off, v219, off offset:48
	scratch_store_b32 off, v0, off offset:44
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v58, s4, v5, v220
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s31, s6
	v_dual_mov_b32 v8, v46 :: v_dual_add_nc_u32 v59, s35, v220
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[12:13], null, s6, s24, v[46:47]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s6, s25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s33, 1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s6, 2
	v_dual_mov_b32 v46, v44 :: v_dual_add_nc_u32 v61, s35, v48
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[0:1], v12, s[16:19], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s33, s6, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v60, s35, v9
	s_lshl_b32 s7, s33, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s8, s33, 14
	v_dual_mov_b32 v44, v42 :: v_dual_add_nc_u32 v57, s4, v10
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v56, s4, v47
	v_dual_mov_b32 v42, v40 :: v_dual_add_nc_u32 v55, s4, v11
	v_mov_b32_e32 v40, v38
	v_mov_b32_e32 v38, v36
	v_mov_b32_e32 v36, v34
	v_dual_mov_b32 v34, v32 :: v_dual_mov_b32 v13, v11
	v_dual_mov_b32 v32, v30 :: v_dual_mov_b32 v7, v9
	v_mov_b32_e32 v4, v47
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_add_i32 s7, s7, 0
	v_mov_b32_e32 v30, v28
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v6, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s5, 1
	s_mov_b32 s35, s29
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s29, s7, 0x8000
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off      ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v62, v59 offset:416
	ds_load_u8 v63, v59 offset:384
	ds_load_u8 v64, v59 offset:480
	ds_load_u8 v65, v59 offset:448
	ds_load_u8 v66, v59 offset:288
	ds_load_u8 v67, v59 offset:256
	ds_load_u8 v68, v59 offset:352
	ds_load_u8 v69, v59 offset:320
	ds_load_u8 v70, v59 offset:160
	ds_load_u8 v71, v59 offset:128
	ds_load_u8 v72, v59 offset:224
	ds_load_u8 v73, v59 offset:192
	ds_load_u8 v74, v59 offset:96
	ds_load_u8 v75, v59 offset:64
	ds_load_u8 v76, v59
	ds_load_u8 v54, v59 offset:16
	ds_load_u8 v77, v59 offset:32
	ds_load_u8 v78, v59 offset:112
	ds_load_u8 v80, v59 offset:80
	ds_load_u8 v79, v59 offset:48
	ds_load_u8 v81, v59 offset:800
	ds_load_u8 v82, v59 offset:768
	ds_load_u8 v83, v59 offset:864
	ds_load_u8 v84, v59 offset:832
	ds_load_u8 v85, v59 offset:672
	ds_load_u8 v86, v59 offset:640
	ds_load_u8 v87, v59 offset:736
	ds_load_u8 v88, v59 offset:704
	ds_load_u8 v89, v59 offset:544
	ds_load_u8 v90, v59 offset:512
	ds_load_u8 v91, v59 offset:608
	ds_load_u8 v92, v59 offset:576
	ds_load_u8 v93, v59 offset:1408
	ds_load_u8 v94, v59 offset:1312
	ds_load_u8 v95, v59 offset:1376
	ds_load_u8 v96, v59 offset:1344
	ds_load_u8 v97, v59 offset:1280
	ds_load_u8 v98, v59 offset:1184
	ds_load_u8 v99, v59 offset:1248
	ds_load_u8 v100, v59 offset:1216
	ds_load_u8 v101, v59 offset:928
	ds_load_u8 v102, v59 offset:896
	ds_load_u8 v103, v59 offset:992
	ds_load_u8 v104, v59 offset:960
	ds_load_u8 v105, v59 offset:1024
	ds_load_u8 v106, v59 offset:1152
	ds_load_u8 v107, v59 offset:1056
	ds_load_u8 v108, v59 offset:1120
	ds_load_u8 v109, v59 offset:1088
	ds_load_u8 v110, v59 offset:1952
	ds_load_u8 v111, v59 offset:2016
	ds_load_u8 v112, v59 offset:1920
	ds_load_u8 v113, v59 offset:1824
	ds_load_u8 v114, v59 offset:1888
	ds_load_u8 v115, v59 offset:1856
	ds_load_u8 v116, v59 offset:1792
	ds_load_u8 v117, v59 offset:1696
	ds_load_u8 v118, v59 offset:1760
	ds_load_u8 v119, v59 offset:1728
	ds_load_u8 v120, v59 offset:1440
	ds_load_u8 v121, v59 offset:1504
	ds_load_u8 v122, v59 offset:1472
	ds_load_u8 v123, v59 offset:1536
	ds_load_u8 v124, v59 offset:1664
	ds_load_u8 v125, v59 offset:1568
	ds_load_u8 v126, v59 offset:1632
	ds_load_u8 v127, v59 offset:1600
	ds_load_u8 v128, v58 offset:14592
	ds_load_u8 v129, v58 offset:14336
	ds_load_u8 v130, v58 offset:15104
	ds_load_u8 v131, v58 offset:14848
	ds_load_u8 v132, v58 offset:13568
	ds_load_u8 v133, v58 offset:13312
	ds_load_u8 v134, v58 offset:14080
	ds_load_u8 v135, v58 offset:13824
	ds_load_u8 v136, v58 offset:12544
	ds_load_u8 v137, v58 offset:12288
	ds_load_u8 v138, v58 offset:3328
	ds_load_u8 v139, v58 offset:3072
	ds_load_u8 v140, v58 offset:3840
	ds_load_u8 v141, v58 offset:3584
	ds_load_u8 v142, v58 offset:3968
	ds_load_u8 v143, v58 offset:3712
	ds_load_u8 v144, v58 offset:3456
	ds_load_u8 v145, v58 offset:3200
	ds_load_u8 v146, v58 offset:2304
	ds_load_u8 v147, v58 offset:2048
	ds_load_u8 v148, v58 offset:2816
	ds_load_u8 v149, v58 offset:2560
	ds_load_u8 v150, v58 offset:2944
	ds_load_u8 v151, v58 offset:2688
	ds_load_u8 v152, v58 offset:2432
	ds_load_u8 v153, v58 offset:2176
	ds_load_u8 v154, v58 offset:1280
	ds_load_u8 v155, v58 offset:1024
	ds_load_u8 v156, v58 offset:1792
	ds_load_u8 v157, v58 offset:1536
	ds_load_u8 v158, v58 offset:1920
	ds_load_u8 v159, v58 offset:1664
	ds_load_u8 v160, v58 offset:1408
	ds_load_u8 v161, v58 offset:1152
	ds_load_u8 v162, v58 offset:256
	ds_load_u8 v163, v58
	ds_load_u8 v164, v58 offset:768
	ds_load_u8 v165, v58 offset:512
	ds_load_u8 v166, v58 offset:896
	ds_load_u8 v167, v58 offset:640
	ds_load_u8 v168, v58 offset:384
	ds_load_u8 v169, v58 offset:128
	ds_load_u8 v170, v58 offset:7424
	ds_load_u8 v171, v58 offset:7168
	ds_load_u8 v172, v58 offset:7936
	ds_load_u8 v173, v58 offset:7680
	ds_load_u8 v174, v58 offset:8064
	ds_load_u8 v175, v58 offset:7808
	ds_load_u8 v176, v58 offset:7552
	ds_load_u8 v177, v58 offset:7296
	ds_load_u8 v178, v58 offset:6400
	ds_load_u8 v179, v58 offset:6144
	ds_load_u8 v180, v58 offset:6912
	ds_load_u8 v181, v58 offset:6656
	ds_load_u8 v182, v58 offset:7040
	ds_load_u8 v183, v58 offset:6784
	ds_load_u8 v184, v58 offset:6528
	ds_load_u8 v185, v58 offset:6272
	ds_load_u8 v186, v58 offset:5376
	ds_load_u8 v187, v58 offset:5120
	ds_load_u8 v188, v58 offset:5888
	ds_load_u8 v189, v58 offset:5632
	ds_load_u8 v190, v58 offset:6016
	ds_load_u8 v191, v58 offset:5760
	ds_load_u8 v192, v58 offset:5504
	ds_load_u8 v193, v58 offset:5248
	ds_load_u8 v194, v58 offset:4352
	ds_load_u8 v195, v58 offset:4096
	ds_load_u8 v196, v58 offset:4864
	ds_load_u8 v197, v58 offset:4608
	ds_load_u8 v198, v58 offset:4992
	ds_load_u8 v199, v58 offset:4736
	ds_load_u8 v200, v58 offset:4480
	ds_load_u8 v201, v58 offset:4224
	ds_load_u8 v202, v58 offset:11520
	ds_load_u8 v203, v58 offset:11264
	ds_load_u8 v204, v58 offset:12032
	ds_load_u8 v205, v58 offset:11776
	ds_load_u8 v206, v58 offset:12160
	ds_load_u8 v207, v58 offset:11904
	ds_load_u8 v208, v58 offset:11648
	ds_load_u8 v209, v58 offset:11392
	ds_load_u8 v210, v58 offset:10496
	ds_load_u8 v211, v58 offset:10240
	ds_load_u8 v212, v58 offset:11008
	ds_load_u8 v213, v58 offset:10752
	ds_load_u8 v214, v58 offset:11136
	ds_load_u8 v215, v58 offset:10880
	ds_load_u8 v216, v58 offset:10624
	ds_load_u8 v217, v58 offset:10368
	ds_load_u8 v218, v58 offset:9472
	ds_load_u8 v219, v58 offset:9216
	v_mov_b32_e32 v1, v23
	v_mov_b32_e32 v23, v221
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v49, v106, v98, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v98, s4, v235
	s_mov_b32 s4, s30
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_add_i32 s30, s8, 0
	v_mov_b32_e32 v28, v26
	v_mov_b32_e32 v26, v24
	v_mov_b32_e32 v24, v22
	v_dual_mov_b32 v22, v21 :: v_dual_mov_b32 v21, v20
	v_dual_mov_b32 v20, v19 :: v_dual_mov_b32 v19, v18
	v_dual_mov_b32 v18, v17 :: v_dual_mov_b32 v17, v16
	v_mov_b32_e32 v16, v220
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	ds_load_u8 v220, v58 offset:9984
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v59 offset:1984
	ds_load_u8 v61, v61
	ds_load_u8 v60, v60
	ds_load_u8 v221, v58 offset:9728
	ds_load_u8 v222, v58 offset:10112
	ds_load_u8 v223, v58 offset:9856
	ds_load_u8 v224, v58 offset:9600
	ds_load_u8 v225, v58 offset:9344
	ds_load_u8 v226, v58 offset:8448
	ds_load_u8 v227, v58 offset:8192
	ds_load_u8 v228, v58 offset:8960
	ds_load_u8 v229, v58 offset:8704
	ds_load_u8 v230, v58 offset:9088
	ds_load_u8 v231, v58 offset:8832
	ds_load_u8 v232, v58 offset:8576
	ds_load_u8 v233, v58 offset:8320
	ds_load_u8 v234, v58 offset:15616
	ds_load_u8 v236, v58 offset:15360
	ds_load_u8 v3, v58 offset:16128
	ds_load_u8 v237, v58 offset:15872
	ds_load_u8 v238, v58 offset:16256
	ds_load_u8 v239, v58 offset:16000
	ds_load_u8 v240, v58 offset:15744
	ds_load_u8 v241, v58 offset:15488
	ds_load_u8 v242, v59 offset:496
	ds_load_u8 v243, v59 offset:464
	ds_load_u8 v244, v59 offset:432
	ds_load_u8 v245, v59 offset:400
	ds_load_u8 v246, v59 offset:368
	ds_load_u8 v247, v59 offset:336
	ds_load_u8 v248, v59 offset:304
	ds_load_u8 v249, v59 offset:272
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v58 offset:15232
	v_perm_b32 v250, v73, v72, 0xc0c0004
	ds_load_u8 v72, v58 offset:14976
	ds_load_u8 v73, v58 offset:14720
	v_perm_b32 v50, v105, v107, 0xc0c0004
	ds_load_u8 v105, v58 offset:14464
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v203, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v205, v213, v212, 0xc0c0004
	v_perm_b32 v124, v124, v117, 0xc0c0004
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v123, v123, v125, 0xc0c0004
	v_perm_b32 v125, v127, v126, 0xc0c0004
	ds_load_u8 v117, v58 offset:13952
	ds_load_u8 v119, v58 offset:13696
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v126, v236, v234, 0xc0c0004
	ds_load_u8 v234, v58 offset:13440
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v58 offset:13184
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v58 offset:12928
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v58 offset:12672
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v58 offset:12416
	v_perm_b32 v213, v221, v220, 0xc0c0004
	v_perm_b32 v221, v229, v228, 0xc0c0004
	v_perm_b32 v228, v86, v111, 0xc0c0004
	v_perm_b32 v229, v116, v113, 0xc0c0004
	ds_load_u8 v116, v58 offset:14208
	ds_load_u8 v86, v58 offset:13056
	ds_load_u8 v58, v58 offset:12800
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v59 offset:240
	ds_load_u8 v251, v59 offset:560
	ds_load_u8 v253, v59 offset:528
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v59 offset:208
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v59 offset:176
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v59 offset:144
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v75, v76, v77, 0xc0c0004
	ds_load_u8 v76, v59 offset:976
	ds_load_u8 v52, v59 offset:1136
	ds_load_u8 v48, v59 offset:1104
	ds_load_u8 v106, v59 offset:1072
	ds_load_u8 v11, v59 offset:1040
	v_perm_b32 v77, v139, v138, 0xc0c0004
	ds_load_u8 v138, v59 offset:944
	v_perm_b32 v139, v141, v140, 0xc0c0004
	ds_load_u8 v140, v59 offset:912
	v_perm_b32 v141, v147, v146, 0xc0c0004
	ds_load_u8 v146, v59 offset:880
	v_perm_b32 v147, v149, v148, 0xc0c0004
	ds_load_u8 v148, v59 offset:848
	v_perm_b32 v149, v155, v154, 0xc0c0004
	ds_load_u8 v154, v59 offset:816
	v_perm_b32 v155, v157, v156, 0xc0c0004
	ds_load_u8 v156, v59 offset:784
	v_perm_b32 v157, v163, v162, 0xc0c0004
	ds_load_u8 v162, v59 offset:752
	v_perm_b32 v163, v165, v164, 0xc0c0004
	ds_load_u8 v164, v59 offset:720
	ds_load_u8 v165, v59 offset:688
	v_perm_b32 v102, v102, v101, 0xc0c0004
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v59 offset:656
	v_perm_b32 v82, v82, v81, 0xc0c0004
	ds_load_u8 v81, v59 offset:624
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v59 offset:592
	v_perm_b32 v252, v88, v87, 0xc0c0004
	v_perm_b32 v254, v90, v89, 0xc0c0004
	ds_load_u8 v255, v59 offset:1520
	ds_load_u8 v111, v59 offset:1712
	ds_load_u8 v113, v59 offset:1648
	v_perm_b32 v14, v92, v91, 0xc0c0004
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v59 offset:1456
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v59 offset:1424
	ds_load_u8 v53, v59 offset:1200
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v59 offset:1392
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v59 offset:1360
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v59 offset:1328
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v59 offset:1296
	v_perm_b32 v194, v195, v194, 0xc0c0004
	ds_load_u8 v195, v59 offset:1264
	v_perm_b32 v196, v197, v196, 0xc0c0004
	ds_load_u8 v197, v59 offset:1232
	v_perm_b32 v120, v93, v120, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v59 offset:1168
	v_perm_b32 v51, v97, v94, 0xc0c0004
	v_perm_b32 v47, v96, v95, 0xc0c0004
	v_perm_b32 v10, v100, v99, 0xc0c0004
	v_perm_b32 v9, v109, v108, 0xc0c0004
	ds_load_u8 v107, v59 offset:2000
	ds_load_u8 v108, v59 offset:1968
	ds_load_u8 v109, v59 offset:1936
	ds_load_u8 v212, v59 offset:1872
	ds_load_u8 v220, v59 offset:1808
	v_perm_b32 v204, v211, v210, 0xc0c0004
	ds_load_u8 v210, v59 offset:1904
	v_perm_b32 v211, v219, v218, 0xc0c0004
	ds_load_u8 v218, v59 offset:1840
	v_perm_b32 v219, v227, v226, 0xc0c0004
	ds_load_u8 v226, v59 offset:1776
	v_perm_b32 v227, v112, v110, 0xc0c0004
	ds_load_u8 v110, v59 offset:1744
	ds_load_u8 v112, v59 offset:1680
	v_perm_b32 v15, v115, v114, 0xc0c0004
	ds_load_u8 v114, v59 offset:1616
	ds_load_u8 v0, v59 offset:1488
	ds_load_u8 v115, v59 offset:1584
	ds_load_u8 v59, v59 offset:1552
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v127, v237, v3, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v58, v58, v86, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[86:89], v57, s[20:23], 0 offen
	buffer_load_b128 v[98:101], v98, s[20:23], 0 offen
	buffer_load_b128 v[90:93], v56, s[20:23], 0 offen
	buffer_load_b128 v[94:97], v55, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v57, v151, v150, 0xc0c0004
	v_perm_b32 v56, v169, v168, 0xc0c0004
	v_perm_b32 v150, v167, v166, 0xc0c0004
	v_perm_b32 v151, v177, v176, 0xc0c0004
	v_perm_b32 v55, v175, v174, 0xc0c0004
	v_perm_b32 v61, v76, v61, 0xc0c0004
	v_perm_b32 v76, v156, v154, 0xc0c0004
	v_perm_b32 v156, v164, v162, 0xc0c0004
	v_perm_b32 v164, v173, v171, 0xc0c0004
	v_perm_b32 v53, v122, v53, 0xc0c0004
	v_perm_b32 v173, v197, v195, 0xc0c0004
	v_perm_b32 v11, v11, v106, 0xc0c0004
	v_perm_b32 v48, v48, v52, 0xc0c0004
	v_perm_b32 v52, v109, v108, 0xc0c0004
	v_perm_b32 v60, v107, v60, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v137, v145, v144, 0xc0c0004
	v_perm_b32 v145, v159, v158, 0xc0c0004
	v_perm_b32 v158, v193, v192, 0xc0c0004
	v_perm_b32 v167, v199, v198, 0xc0c0004
	v_perm_b32 v192, v234, v119, 0xc0c0004
	v_perm_b32 v198, v135, v133, 0xc0c0004
	v_perm_b32 v63, v65, v63, 0xc0c0004
	v_perm_b32 v65, v80, v78, 0xc0c0004
	v_perm_b32 v154, v104, v165, 0xc0c0004
	v_perm_b32 v165, v189, v187, 0xc0c0004
	v_perm_b32 v171, v181, v179, 0xc0c0004
	v_perm_b32 v179, v220, v218, 0xc0c0004
	v_perm_b32 v187, v112, v111, 0xc0c0004
	v_perm_b32 v189, v110, v226, 0xc0c0004
	v_perm_b32 v195, v114, v113, 0xc0c0004
	v_lshl_or_b32 v78, v163, 16, v157
	v_lshl_or_b32 v112, v47, 16, v51
	v_lshl_or_b32 v111, v10, 16, v49
	v_lshl_or_b32 v110, v9, 16, v50
	v_lshl_or_b32 v114, v221, 16, v219
	v_mov_b32_e32 v221, v23
	v_dual_mov_b32 v23, v1 :: v_dual_mov_b32 v220, v16
	v_dual_mov_b32 v16, v17 :: v_dual_mov_b32 v17, v18
	v_dual_mov_b32 v18, v19 :: v_dual_mov_b32 v19, v20
	v_dual_mov_b32 v20, v21 :: v_dual_mov_b32 v21, v22
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v24, v26
	v_mov_b32_e32 v26, v28
	v_lshl_or_b32 v119, v118, 16, v124
	v_lshl_or_b32 v118, v125, 16, v123
	v_lshl_or_b32 v125, v127, 16, v126
	v_lshl_or_b32 v126, v150, 16, v56
	v_lshl_or_b32 v133, v55, 16, v151
	v_lshl_or_b32 v151, v173, 16, v53
	v_lshl_or_b32 v150, v48, 16, v11
	v_lshl_or_b32 v157, v60, 16, v52
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v143, v153, v152, 0xc0c0004
	v_perm_b32 v144, v161, v160, 0xc0c0004
	v_perm_b32 v166, v201, v200, 0xc0c0004
	v_perm_b32 v169, v207, v206, 0xc0c0004
	v_perm_b32 v200, v245, v244, 0xc0c0004
	v_perm_b32 v201, v243, v242, 0xc0c0004
	v_perm_b32 v206, v249, v248, 0xc0c0004
	v_perm_b32 v207, v247, v246, 0xc0c0004
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_perm_b32 v54, v54, v79, 0xc0c0004
	v_perm_b32 v152, v185, v184, 0xc0c0004
	v_perm_b32 v153, v183, v182, 0xc0c0004
	v_perm_b32 v160, v191, v190, 0xc0c0004
	v_perm_b32 v190, v105, v73, 0xc0c0004
	v_perm_b32 v191, v72, v71, 0xc0c0004
	v_perm_b32 v199, v131, v129, 0xc0c0004
	v_perm_b32 v69, v140, v138, 0xc0c0004
	v_perm_b32 v146, v148, v146, 0xc0c0004
	v_perm_b32 v162, v253, v251, 0xc0c0004
	v_perm_b32 v84, v84, v81, 0xc0c0004
	v_perm_b32 v59, v59, v115, 0xc0c0004
	v_lshl_or_b32 v73, v64, 16, v62
	v_lshl_or_b32 v72, v68, 16, v66
	v_lshl_or_b32 v71, v250, 16, v70
	v_lshl_or_b32 v70, v74, 16, v75
	v_lshl_or_b32 v81, v139, 16, v77
	v_lshl_or_b32 v80, v147, 16, v141
	v_lshl_or_b32 v79, v155, 16, v149
	v_lshl_or_b32 v124, v130, 16, v128
	v_lshl_or_b32 v129, v142, 16, v137
	v_lshl_or_b32 v128, v57, 16, v143
	v_lshl_or_b32 v127, v145, 16, v144
	v_lshl_or_b32 v145, v201, 16, v200
	v_lshl_or_b32 v144, v207, 16, v206
	v_lshl_or_b32 v143, v63, 16, v67
	v_lshl_or_b32 v142, v65, 16, v54
	v_perm_b32 v168, v209, v208, 0xc0c0004
	v_perm_b32 v174, v217, v216, 0xc0c0004
	v_perm_b32 v175, v215, v214, 0xc0c0004
	v_perm_b32 v176, v225, v224, 0xc0c0004
	v_perm_b32 v177, v223, v222, 0xc0c0004
	v_perm_b32 v182, v233, v232, 0xc0c0004
	v_perm_b32 v183, v231, v230, 0xc0c0004
	v_perm_b32 v0, v0, v255, 0xc0c0004
	v_lshl_or_b32 v105, v103, 16, v102
	v_lshl_or_b32 v104, v83, 16, v82
	v_lshl_or_b32 v103, v252, 16, v85
	v_lshl_or_b32 v102, v14, 16, v254
	v_lshl_or_b32 v109, v172, 16, v170
	v_lshl_or_b32 v108, v180, 16, v178
	v_lshl_or_b32 v107, v188, 16, v186
	v_lshl_or_b32 v106, v196, 16, v194
	v_lshl_or_b32 v123, v134, 16, v132
	v_lshl_or_b32 v122, v58, 16, v136
	v_lshl_or_b32 v132, v153, 16, v152
	v_lshl_or_b32 v131, v160, 16, v158
	v_lshl_or_b32 v130, v167, 16, v166
	v_lshl_or_b32 v149, v61, 16, v69
	v_lshl_or_b32 v148, v146, 16, v76
	v_lshl_or_b32 v147, v156, 16, v154
	v_lshl_or_b32 v146, v84, 16, v162
	v_lshl_or_b32 v154, v195, 16, v59
	v_perm_b32 v184, v241, v240, 0xc0c0004
	v_perm_b32 v185, v239, v238, 0xc0c0004
	v_perm_b32 v193, v117, v116, 0xc0c0004
	v_perm_b32 v181, v212, v210, 0xc0c0004
	v_lshl_or_b32 v113, v121, 16, v120
	v_lshl_or_b32 v117, v203, 16, v202
	v_lshl_or_b32 v116, v205, 16, v204
	v_lshl_or_b32 v115, v213, 16, v211
	v_lshl_or_b32 v137, v169, 16, v168
	v_lshl_or_b32 v136, v175, 16, v174
	v_lshl_or_b32 v135, v177, 16, v176
	v_lshl_or_b32 v134, v183, 16, v182
	v_lshl_or_b32 v153, v0, 16, v164
	v_lshl_or_b32 v152, v171, 16, v165
	v_lshl_or_b32 v121, v228, 16, v227
	v_lshl_or_b32 v120, v15, 16, v229
	v_lshl_or_b32 v141, v185, 16, v184
	v_lshl_or_b32 v140, v191, 16, v190
	v_lshl_or_b32 v139, v193, 16, v192
	v_lshl_or_b32 v138, v199, 16, v198
	v_lshl_or_b32 v156, v181, 16, v179
	v_lshl_or_b32 v155, v189, 16, v187
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s6
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v28, v30 :: v_dual_add_nc_u32 v159, s7, v3
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v32, v34
	v_mov_b32_e32 v34, v36
	v_mov_b32_e32 v36, v38
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v40, v42
	v_mov_b32_e32 v42, v44
	v_mov_b32_e32 v44, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[46:49], off, off offset:12
	scratch_load_b128 v[50:53], off, off offset:28
	scratch_load_b32 v3, off, off offset:8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[70:73], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[126:129], v[70:73], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[142:145], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[126:129], v[142:145], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[106:109], v[102:105], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[106:109], v[146:149], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[130:133], v[102:105], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[130:133], v[146:149], v[78:85] neg_lo:[1,1,0]
	v_mov_b32_e32 v46, v8
	v_wmma_i32_16x16x16_iu8 v[54:61], v[114:117], v[110:113], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[114:117], v[150:153], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[134:137], v[110:113], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[134:137], v[150:153], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[122:125], v[118:121], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[122:125], v[154:157], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[138:141], v[118:121], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[138:141], v[154:157], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v54
	v_cvt_f32_i32_e32 v14, v58
	v_cvt_f32_i32_e32 v58, v71
	v_cvt_f32_i32_e32 v71, v84
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v11, v57
	v_cvt_f32_i32_e32 v15, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v17, v71 :: v_dual_add_f32 v40, v40, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	scratch_load_b64 v[0:1], off, off       ; 8-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v47, v60
	v_cvt_f32_i32_e32 v48, v61
	v_cvt_f32_i32_e32 v49, v62
	v_cvt_f32_i32_e32 v50, v63
	v_cvt_f32_i32_e32 v51, v64
	v_cvt_f32_i32_e32 v52, v65
	v_cvt_f32_i32_e32 v53, v66
	v_cvt_f32_i32_e32 v54, v67
	v_cvt_f32_i32_e32 v55, v68
	v_cvt_f32_i32_e32 v56, v69
	v_cvt_f32_i32_e32 v57, v70
	v_cvt_f32_i32_e32 v59, v72
	v_cvt_f32_i32_e32 v60, v73
	v_cvt_f32_i32_e32 v61, v74
	v_cvt_f32_i32_e32 v62, v75
	v_cvt_f32_i32_e32 v63, v76
	v_cvt_f32_i32_e32 v64, v77
	v_cvt_f32_i32_e32 v65, v78
	v_cvt_f32_i32_e32 v66, v79
	v_cvt_f32_i32_e32 v67, v80
	v_cvt_f32_i32_e32 v68, v81
	v_cvt_f32_i32_e32 v69, v82
	v_cvt_f32_i32_e32 v70, v83
	v_cvt_f32_i32_e32 v72, v85
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v2, v9 :: v_dual_mov_b32 v9, v7
	v_dual_add_f32 v45, v45, v10 :: v_dual_add_f32 v44, v44, v11
	v_mov_b32_e32 v11, v13
	v_dual_add_f32 v43, v43, v14 :: v_dual_add_f32 v42, v42, v15
	v_add_f32_e32 v41, v41, v47
	v_mov_b32_e32 v47, v4
	v_dual_add_f32 v39, v39, v48 :: v_dual_mov_b32 v48, v6
	v_dual_mov_b32 v10, v12 :: v_dual_add_f32 v37, v37, v50
	v_add_f32_e32 v35, v35, v52
	v_add_f32_e32 v33, v33, v54
	v_add_f32_e32 v31, v31, v56
	v_add_f32_e32 v29, v29, v58
	v_dual_add_f32 v27, v27, v60 :: v_dual_add_f32 v28, v28, v59
	v_dual_add_f32 v26, v26, v61 :: v_dual_add_f32 v25, v25, v62
	v_add_f32_e32 v30, v30, v57
	v_dual_add_f32 v24, v24, v63 :: v_dual_add_f32 v23, v23, v64
	v_add_f32_e32 v32, v32, v55
	v_dual_add_f32 v22, v22, v65 :: v_dual_add_f32 v221, v221, v66
	v_dual_add_f32 v34, v34, v53 :: v_dual_add_f32 v21, v21, v67
	v_add_f32_e32 v36, v36, v51
	v_dual_add_f32 v20, v20, v68 :: v_dual_add_f32 v19, v19, v69
	v_add_f32_e32 v38, v38, v49
	v_add_f32_e32 v18, v18, v70
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v16, v16, v72 :: v_dual_add_nc_u32 v161, s30, v3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v159, v[0:1] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v161, v[86:89]
	ds_store_b128 v161, v[90:93] offset:4096
	ds_store_b128 v161, v[94:97] offset:8192
	ds_store_b128 v161, v[98:101] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v219, off, off offset:48 ; 4-byte Folded Reload
	v_dual_mov_b32 v46, v2 :: v_dual_mov_b32 v1, v48
	v_mov_b32_e32 v3, v9
.LBB0_7:                                ; %Flow224
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 0xf0, v219
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v4, v5, v220
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v55, s4, v4
	s_mov_b32 s4, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v87, s35, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v5, s35, v220
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v5 offset:416
	ds_load_u8 v6, v5 offset:384
	ds_load_u8 v7, v5 offset:480
	ds_load_u8 v8, v5 offset:448
	ds_load_u8 v9, v5 offset:288
	ds_load_u8 v10, v5 offset:256
	ds_load_u8 v11, v5 offset:352
	ds_load_u8 v12, v5 offset:320
	ds_load_u8 v13, v5 offset:160
	ds_load_u8 v14, v5 offset:128
	ds_load_u8 v15, v5 offset:224
	ds_load_u8 v47, v5 offset:192
	ds_load_u8 v48, v5 offset:32
	ds_load_u8 v49, v5
	ds_load_u8 v50, v5 offset:96
	ds_load_u8 v51, v5 offset:64
	ds_load_u8 v107, v5 offset:464
	ds_load_u8 v108, v5 offset:432
	ds_load_u8 v109, v5 offset:400
	ds_load_u8 v110, v5 offset:368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v6, v0, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v9, s35, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	v_lshl_or_b32 v66, v6, 16, v0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v14, v13, 0xc0c0004
	ds_load_u8 v10, v55 offset:3328
	ds_load_u8 v11, v55 offset:3072
	ds_load_u8 v12, v55 offset:3840
	ds_load_u8 v13, v55 offset:3584
	v_lshl_or_b32 v65, v8, 16, v7
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v47, v15, 0xc0c0004
	ds_load_u8 v14, v5 offset:80
	ds_load_u8 v15, v5 offset:48
	ds_load_u8 v118, v5 offset:16
	ds_load_u8 v119, v9
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v51, v50, 0xc0c0004
	v_lshl_or_b32 v64, v7, 16, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v63, v9, 16, v8
	ds_load_u8 v6, v55 offset:2304
	ds_load_u8 v7, v55 offset:2048
	ds_load_u8 v8, v55 offset:2816
	ds_load_u8 v9, v55 offset:2560
	ds_load_u8 v47, v55 offset:1280
	ds_load_u8 v48, v55 offset:1024
	ds_load_u8 v49, v55 offset:1792
	ds_load_u8 v50, v55 offset:1536
	ds_load_u8 v51, v55 offset:256
	ds_load_u8 v52, v55
	ds_load_u8 v53, v55 offset:768
	ds_load_u8 v54, v55 offset:512
	ds_load_u8 v56, v55 offset:3968
	ds_load_u8 v57, v55 offset:3712
	ds_load_u8 v58, v55 offset:3456
	ds_load_u8 v59, v55 offset:3200
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v11, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v48, v47, 0xc0c0004
	v_perm_b32 v15, v118, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v50, v49, 0xc0c0004
	v_lshl_or_b32 v74, v11, 16, v10
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v52, v51, 0xc0c0004
	v_lshl_or_b32 v73, v7, 16, v6
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v54, v53, 0xc0c0004
	v_lshl_or_b32 v72, v9, 16, v8
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v71, v13, 16, v12
	v_dual_mov_b32 v13, s11 :: v_dual_mov_b32 v6, s4
	v_mov_b32_e32 v12, s10
	ds_load_u8 v67, v5 offset:928
	ds_load_u8 v68, v5 offset:896
	ds_load_u8 v69, v5 offset:992
	ds_load_u8 v70, v5 offset:960
	ds_load_u8 v75, v5 offset:800
	ds_load_u8 v76, v5 offset:768
	ds_load_u8 v77, v5 offset:864
	ds_load_u8 v78, v5 offset:832
	ds_load_u8 v79, v5 offset:672
	ds_load_u8 v80, v5 offset:640
	ds_load_u8 v81, v5 offset:736
	ds_load_u8 v82, v5 offset:704
	ds_load_u8 v120, v5 offset:976
	ds_load_u8 v121, v5 offset:944
	ds_load_u8 v122, v5 offset:912
	ds_load_u8 v123, v5 offset:880
	v_mov_b32_e32 v10, s8
	ds_load_u8 v111, v5 offset:336
	ds_load_u8 v112, v5 offset:304
	ds_load_u8 v113, v5 offset:272
	ds_load_u8 v114, v5 offset:240
	ds_load_u8 v0, v5 offset:208
	ds_load_u8 v115, v5 offset:176
	ds_load_u8 v116, v5 offset:144
	ds_load_u8 v117, v5 offset:112
	ds_load_u8 v128, v5 offset:720
	ds_load_u8 v129, v5 offset:688
	ds_load_u8 v130, v5 offset:656
	ds_load_u8 v131, v5 offset:624
	ds_load_u8 v132, v5 offset:592
	ds_load_u8 v133, v5 offset:560
	ds_load_u8 v134, v5 offset:528
	ds_load_u8 v135, v5 offset:496
	ds_load_u8 v156, v5 offset:1264
	ds_load_u8 v157, v5 offset:1232
	ds_load_u8 v158, v5 offset:1200
	ds_load_u8 v159, v5 offset:1168
	ds_load_u8 v160, v5 offset:1136
	ds_load_u8 v161, v5 offset:1104
	ds_load_u8 v162, v5 offset:1072
	ds_load_u8 v163, v5 offset:1040
	ds_load_u8 v60, v55 offset:2944
	ds_load_u8 v61, v55 offset:2688
	ds_load_u8 v62, v55 offset:2432
	ds_load_u8 v91, v55 offset:2176
	ds_load_u8 v95, v55 offset:1920
	ds_load_u8 v96, v55 offset:1664
	ds_load_u8 v97, v55 offset:1408
	ds_load_u8 v98, v55 offset:1152
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v99, v55 offset:896
	ds_load_u8 v100, v55 offset:640
	ds_load_u8 v101, v55 offset:384
	ds_load_u8 v102, v55 offset:128
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	ds_load_u8 v140, v55 offset:6016
	ds_load_u8 v141, v55 offset:5760
	ds_load_u8 v142, v55 offset:5504
	ds_load_u8 v143, v55 offset:5248
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v77, v80, v79, 0xc0c0004
	ds_load_u8 v144, v55 offset:4992
	ds_load_u8 v145, v55 offset:4736
	ds_load_u8 v146, v55 offset:4480
	ds_load_u8 v147, v55 offset:4224
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v78, v82, v81, 0xc0c0004
	ds_load_u8 v80, v55 offset:7424
	ds_load_u8 v81, v55 offset:7168
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v5 offset:544
	ds_load_u8 v83, v5 offset:512
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v5 offset:608
	ds_load_u8 v84, v5 offset:576
	ds_load_u8 v124, v5 offset:848
	ds_load_u8 v125, v5 offset:816
	ds_load_u8 v126, v5 offset:784
	ds_load_u8 v127, v5 offset:752
	ds_load_u8 v176, v55 offset:10112
	ds_load_u8 v177, v55 offset:9856
	ds_load_u8 v178, v55 offset:9600
	ds_load_u8 v179, v55 offset:9344
	v_mov_b32_e32 v11, s9
	v_dual_mov_b32 v9, s7 :: v_dual_mov_b32 v8, s6
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v59, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v61, v96, v95, 0xc0c0004
	v_perm_b32 v57, v91, v62, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v60, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v95, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v62, v102, v101, 0xc0c0004
	v_mov_b32_e32 v7, s5
	v_lshl_or_b32 v98, v56, 16, v58
	v_lshl_or_b32 v97, v59, 16, v57
	v_lshl_or_b32 v96, v61, 16, v60
	v_lshl_or_b32 v95, v95, 16, v62
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v84, v70, 0xc0c0004
	v_lshl_or_b32 v70, v69, 16, v67
	v_perm_b32 v79, v83, v68, 0xc0c0004
	ds_load_u8 v83, v55 offset:7936
	ds_load_u8 v84, v55 offset:7680
	v_lshl_or_b32 v69, v76, 16, v75
	v_lshl_or_b32 v68, v78, 16, v77
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_lshl_or_b32 v67, v82, 16, v79
	ds_load_u8 v75, v55 offset:6400
	ds_load_u8 v76, v55 offset:6144
	ds_load_u8 v77, v55 offset:6912
	ds_load_u8 v78, v55 offset:6656
	ds_load_u8 v79, v55 offset:5376
	ds_load_u8 v82, v55 offset:5120
	ds_load_u8 v85, v55 offset:5888
	ds_load_u8 v86, v55 offset:5632
	ds_load_u8 v103, v55 offset:8064
	ds_load_u8 v104, v55 offset:7808
	ds_load_u8 v105, v55 offset:7552
	ds_load_u8 v106, v55 offset:7296
	ds_load_u8 v81, v55 offset:4352
	ds_load_u8 v88, v55 offset:4096
	v_wmma_i32_16x16x16_iu8 v[47:54], v[71:74], v[63:66], v[6:13] neg_lo:[1,1,0]
	v_perm_b32 v0, v0, v114, 0xc0c0004
	v_perm_b32 v14, v14, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v79, v82, v79, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v55 offset:4864
	ds_load_u8 v89, v55 offset:4608
	ds_load_u8 v136, v55 offset:7040
	ds_load_u8 v137, v55 offset:6784
	ds_load_u8 v138, v55 offset:6528
	ds_load_u8 v139, v55 offset:6272
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v82, v86, v85, 0xc0c0004
	ds_load_u8 v85, v5 offset:1440
	ds_load_u8 v86, v5 offset:1408
	v_lshl_or_b32 v77, v76, 16, v75
	v_lshl_or_b32 v78, v83, 16, v80
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v88, v81, 0xc0c0004
	v_lshl_or_b32 v76, v82, 16, v79
	v_perm_b32 v99, v106, v105, 0xc0c0004
	v_perm_b32 v100, v104, v103, 0xc0c0004
	v_perm_b32 v104, v143, v142, 0xc0c0004
	v_perm_b32 v105, v141, v140, 0xc0c0004
	v_perm_b32 v106, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v102, v100, 16, v99
	v_lshl_or_b32 v100, v105, 16, v104
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v84, v89, v84, 0xc0c0004
	ds_load_u8 v88, v5 offset:1504
	ds_load_u8 v89, v5 offset:1472
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v137, v136, 0xc0c0004
	v_perm_b32 v136, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v139, v138, 0xc0c0004
	v_lshl_or_b32 v75, v84, 16, v81
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v5 offset:1056
	ds_load_u8 v93, v5 offset:1024
	ds_load_u8 v79, v5 offset:1312
	ds_load_u8 v80, v5 offset:1280
	ds_load_u8 v81, v5 offset:1376
	ds_load_u8 v82, v5 offset:1344
	ds_load_u8 v83, v5 offset:1184
	ds_load_u8 v84, v5 offset:1152
	ds_load_u8 v90, v5 offset:1248
	ds_load_u8 v92, v5 offset:1216
	ds_load_u8 v148, v5 offset:1520
	ds_load_u8 v149, v5 offset:1488
	ds_load_u8 v150, v5 offset:1456
	ds_load_u8 v151, v5 offset:1424
	v_lshl_or_b32 v101, v103, 16, v101
	v_lshl_or_b32 v99, v136, 16, v106
	v_perm_b32 v103, v179, v178, 0xc0c0004
	v_perm_b32 v104, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[75:78], v[67:70], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v104, v104, 16, v103
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v80, v82, v81, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v5 offset:1120
	ds_load_u8 v94, v5 offset:1088
	ds_load_u8 v152, v5 offset:1392
	ds_load_u8 v153, v5 offset:1360
	ds_load_u8 v154, v5 offset:1328
	ds_load_u8 v155, v5 offset:1296
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v84, v92, v90, 0xc0c0004
	v_lshl_or_b32 v81, v80, 16, v79
	v_lshl_or_b32 v82, v88, 16, v85
	v_perm_b32 v86, v93, v86, 0xc0c0004
	ds_load_u8 v90, v55 offset:11520
	ds_load_u8 v92, v55 offset:11264
	ds_load_u8 v93, v55 offset:12032
	ds_load_u8 v164, v55 offset:11776
	v_lshl_or_b32 v80, v84, 16, v83
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v94, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v89, 16, v86
	ds_load_u8 v83, v55 offset:10496
	ds_load_u8 v84, v55 offset:10240
	ds_load_u8 v85, v55 offset:11008
	ds_load_u8 v86, v55 offset:10752
	ds_load_u8 v88, v55 offset:9472
	ds_load_u8 v89, v55 offset:9216
	ds_load_u8 v94, v55 offset:9984
	ds_load_u8 v165, v55 offset:9728
	ds_load_u8 v166, v55 offset:12160
	ds_load_u8 v167, v55 offset:11904
	ds_load_u8 v168, v55 offset:11648
	ds_load_u8 v169, v55 offset:11392
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v164, v93, 0xc0c0004
	ds_load_u8 v93, v55 offset:8448
	ds_load_u8 v164, v55 offset:8192
	ds_load_u8 v170, v55 offset:8960
	ds_load_u8 v171, v55 offset:8704
	ds_load_u8 v172, v55 offset:11136
	ds_load_u8 v173, v55 offset:10880
	ds_load_u8 v174, v55 offset:10624
	ds_load_u8 v175, v55 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v84, v86, v85, 0xc0c0004
	v_lshl_or_b32 v86, v92, 16, v90
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v89, v165, v94, 0xc0c0004
	ds_load_u8 v94, v5 offset:1952
	ds_load_u8 v165, v5 offset:1920
	ds_load_u8 v180, v5 offset:2016
	ds_load_u8 v181, v5 offset:1984
	ds_load_u8 v182, v55 offset:9088
	ds_load_u8 v183, v55 offset:8832
	ds_load_u8 v184, v55 offset:8576
	ds_load_u8 v185, v55 offset:8320
	v_lshl_or_b32 v85, v84, 16, v83
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v164, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v164, v171, v170, 0xc0c0004
	ds_load_u8 v170, v5 offset:1824
	ds_load_u8 v171, v5 offset:1792
	ds_load_u8 v186, v5 offset:1888
	ds_load_u8 v187, v5 offset:1856
	v_lshl_or_b32 v84, v89, 16, v88
	v_lshl_or_b32 v83, v164, 16, v93
	ds_load_u8 v164, v87
	ds_load_u8 v188, v5 offset:2000
	ds_load_u8 v189, v5 offset:1968
	ds_load_u8 v190, v5 offset:1936
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v165, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[83:86], v[79:82], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v181, v180, 0xc0c0004
	ds_load_u8 v92, v5 offset:1696
	ds_load_u8 v93, v5 offset:1664
	ds_load_u8 v94, v5 offset:1760
	ds_load_u8 v165, v5 offset:1728
	ds_load_u8 v180, v5 offset:1904
	ds_load_u8 v181, v5 offset:1872
	ds_load_u8 v191, v5 offset:1840
	ds_load_u8 v192, v5 offset:1808
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v137, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v136, v185, v184, 0xc0c0004
	v_lshl_or_b32 v90, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v89, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v170, v187, v186, 0xc0c0004
	ds_load_u8 v171, v5 offset:1568
	ds_load_u8 v186, v5 offset:1536
	ds_load_u8 v187, v5 offset:1632
	ds_load_u8 v193, v5 offset:1600
	v_lshl_or_b32 v103, v137, 16, v136
	v_lshl_or_b32 v89, v170, 16, v89
	ds_load_u8 v170, v5 offset:1776
	ds_load_u8 v194, v5 offset:1744
	ds_load_u8 v195, v5 offset:1712
	ds_load_u8 v196, v5 offset:1680
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v165, v94, 0xc0c0004
	ds_load_u8 v92, v55 offset:15616
	ds_load_u8 v93, v55 offset:15360
	ds_load_u8 v94, v55 offset:16128
	ds_load_u8 v165, v55 offset:15872
	ds_load_u8 v197, v5 offset:1648
	ds_load_u8 v198, v5 offset:1616
	ds_load_u8 v199, v5 offset:1584
	ds_load_u8 v5, v5 offset:1552
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v171, v186, v171, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v186, v193, v187, 0xc0c0004
	ds_load_u8 v187, v55 offset:14592
	ds_load_u8 v193, v55 offset:14336
	ds_load_u8 v200, v55 offset:15104
	ds_load_u8 v201, v55 offset:14848
	ds_load_u8 v202, v55 offset:13568
	ds_load_u8 v203, v55 offset:13312
	ds_load_u8 v204, v55 offset:14080
	ds_load_u8 v205, v55 offset:13824
	ds_load_u8 v206, v55 offset:16256
	ds_load_u8 v207, v55 offset:16000
	ds_load_u8 v208, v55 offset:15744
	ds_load_u8 v209, v55 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v93, v165, v94, 0xc0c0004
	ds_load_u8 v165, v55 offset:12544
	ds_load_u8 v210, v55 offset:12288
	ds_load_u8 v211, v55 offset:13056
	ds_load_u8 v212, v55 offset:12800
	ds_load_u8 v213, v55 offset:15232
	ds_load_u8 v214, v55 offset:14976
	ds_load_u8 v215, v55 offset:14720
	ds_load_u8 v216, v55 offset:14464
	v_lshl_or_b32 v87, v186, 16, v171
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v5, v5, v199, 0xc0c0004
	v_lshl_or_b32 v94, v93, 16, v92
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v187, v193, v187, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v193, v201, v200, 0xc0c0004
	ds_load_u8 v200, v55 offset:14208
	ds_load_u8 v201, v55 offset:13952
	ds_load_u8 v217, v55 offset:13696
	ds_load_u8 v218, v55 offset:13440
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v203, v205, v204, 0xc0c0004
	v_lshl_or_b32 v93, v193, 16, v187
	ds_load_u8 v171, v55 offset:13184
	ds_load_u8 v186, v55 offset:12928
	ds_load_u8 v187, v55 offset:12672
	ds_load_u8 v193, v55 offset:12416
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v210, v165, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v165, v212, v211, 0xc0c0004
	v_lshl_or_b32 v92, v203, 16, v202
	v_perm_b32 v136, v209, v208, 0xc0c0004
	v_perm_b32 v137, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v138, v216, v215, 0xc0c0004
	v_lshl_or_b32 v91, v165, 16, v55
	v_wmma_i32_16x16x16_iu8 v[55:62], v[95:98], v[63:66], v[6:13] neg_lo:[1,1,0]
	v_perm_b32 v63, v169, v168, 0xc0c0004
	v_perm_b32 v64, v167, v166, 0xc0c0004
	v_perm_b32 v65, v175, v174, 0xc0c0004
	v_perm_b32 v66, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[99:102], v[67:70], v[55:62] neg_lo:[1,1,0]
	v_perm_b32 v67, v116, v115, 0xc0c0004
	v_lshl_or_b32 v106, v64, 16, v63
	v_perm_b32 v63, v109, v108, 0xc0c0004
	v_lshl_or_b32 v105, v66, 16, v65
	v_perm_b32 v64, v107, v135, 0xc0c0004
	v_perm_b32 v65, v113, v112, 0xc0c0004
	v_perm_b32 v66, v111, v110, 0xc0c0004
	v_perm_b32 v108, v124, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[103:106], v[79:82], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v64, 16, v63
	v_lshl_or_b32 v80, v0, 16, v67
	v_lshl_or_b32 v81, v66, 16, v65
	v_lshl_or_b32 v79, v14, 16, v15
	v_perm_b32 v0, v122, v121, 0xc0c0004
	v_perm_b32 v14, v120, v164, 0xc0c0004
	v_perm_b32 v15, v126, v125, 0xc0c0004
	v_perm_b32 v109, v130, v129, 0xc0c0004
	v_perm_b32 v110, v128, v127, 0xc0c0004
	v_perm_b32 v111, v134, v133, 0xc0c0004
	v_perm_b32 v112, v132, v131, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[71:74], v[79:82], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v14, 16, v0
	v_lshl_or_b32 v73, v108, 16, v15
	v_lshl_or_b32 v72, v110, 16, v109
	v_lshl_or_b32 v71, v112, 16, v111
	v_perm_b32 v0, v151, v150, 0xc0c0004
	v_perm_b32 v14, v149, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[91:94], v[87:90], v[47:54] neg_lo:[1,1,0]
	v_perm_b32 v139, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v218, v217, 0xc0c0004
	v_perm_b32 v141, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v193, v187, 0xc0c0004
	v_perm_b32 v107, v186, v171, 0xc0c0004
	v_perm_b32 v15, v155, v154, 0xc0c0004
	v_perm_b32 v108, v153, v152, 0xc0c0004
	v_perm_b32 v109, v159, v158, 0xc0c0004
	v_perm_b32 v110, v157, v156, 0xc0c0004
	v_perm_b32 v111, v163, v162, 0xc0c0004
	v_perm_b32 v112, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[75:78], v[71:74], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v14, 16, v0
	v_perm_b32 v0, v190, v189, 0xc0c0004
	v_perm_b32 v14, v188, v119, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[95:98], v[79:82], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v108, 16, v15
	v_lshl_or_b32 v76, v110, 16, v109
	v_lshl_or_b32 v75, v112, 16, v111
	v_lshl_or_b32 v110, v137, 16, v136
	v_lshl_or_b32 v109, v139, 16, v138
	v_lshl_or_b32 v108, v141, 16, v140
	v_lshl_or_b32 v107, v107, 16, v142
	v_perm_b32 v81, v198, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[99:102], v[71:74], v[6:13] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v14, 16, v0
	v_cvt_f32_i32_e32 v0, v48
	v_wmma_i32_16x16x16_iu8 v[63:70], v[83:86], v[75:78], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v15, v192, v191, 0xc0c0004
	v_perm_b32 v83, v181, v180, 0xc0c0004
	v_perm_b32 v79, v196, v195, 0xc0c0004
	v_perm_b32 v80, v194, v170, 0xc0c0004
	v_lshl_or_b32 v71, v81, 16, v5
	v_cvt_f32_i32_e32 v5, v49
	v_wmma_i32_16x16x16_iu8 v[55:62], v[107:110], v[87:90], v[55:62] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v50
	v_cvt_f32_i32_e32 v14, v52
	v_lshl_or_b32 v73, v83, 16, v15
	v_lshl_or_b32 v72, v80, 16, v79
	v_cvt_f32_i32_e32 v48, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v44, v44, v0
	v_add_f32_e32 v42, v42, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v55
	v_cvt_f32_i32_e32 v14, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v45, v45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v51
	v_wmma_i32_16x16x16_iu8 v[63:70], v[91:94], v[71:74], v[63:70] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v38, v38, v0 :: v_dual_add_f32 v43, v43, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v56
	v_cvt_f32_i32_e32 v0, v60
	v_wmma_i32_16x16x16_iu8 v[6:13], v[103:106], v[75:78], v[6:13] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v14
	v_add_f32_e32 v34, v34, v48
	v_add_f32_e32 v33, v33, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v61
	v_wmma_i32_16x16x16_iu8 v[6:13], v[107:110], v[71:74], v[6:13] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v41, v41, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v58
	v_cvt_f32_i32_e32 v14, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v66
	v_cvt_f32_i32_e32 v48, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v22, v22, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v29, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v31, v31, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v221, v221, v6
	v_dual_add_f32 v21, v21, v7 :: v_dual_add_f32 v20, v20, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v68
	v_cvt_f32_i32_e32 v7, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v10
	v_cvt_f32_i32_e32 v8, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v14 :: v_dual_add_f32 v25, v25, v15
	v_add_f32_e32 v24, v24, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v19, v19, v0 :: v_dual_add_f32 v18, v18, v5
	v_dual_add_f32 v17, v17, v6 :: v_dual_add_f32 v16, v16, v7
	v_add_f32_e32 v40, v40, v8
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v69, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s29, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v5, s29, v220
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v69, s11 :: v_dual_add_nc_u32 v4, s30, v4
	v_mov_b32_e32 v68, s10
	ds_load_u8 v0, v5 offset:416
	ds_load_u8 v6, v5 offset:384
	ds_load_u8 v7, v5 offset:480
	ds_load_u8 v8, v5 offset:448
	ds_load_u8 v9, v5 offset:288
	ds_load_u8 v10, v5 offset:256
	ds_load_u8 v11, v5 offset:352
	ds_load_u8 v12, v5 offset:320
	ds_load_u8 v13, v5 offset:160
	ds_load_u8 v14, v5 offset:128
	ds_load_u8 v15, v5 offset:224
	ds_load_u8 v47, v5 offset:192
	ds_load_u8 v48, v5 offset:32
	ds_load_u8 v49, v5
	ds_load_u8 v50, v5 offset:96
	ds_load_u8 v51, v5 offset:64
	ds_load_u8 v59, v5 offset:464
	ds_load_u8 v60, v5 offset:432
	ds_load_u8 v61, v5 offset:400
	ds_load_u8 v106, v5 offset:368
	ds_load_u8 v70, v5 offset:800
	ds_load_u8 v71, v5 offset:768
	ds_load_u8 v72, v5 offset:864
	ds_load_u8 v73, v5 offset:832
	ds_load_u8 v74, v5 offset:672
	ds_load_u8 v75, v5 offset:640
	ds_load_u8 v76, v5 offset:736
	ds_load_u8 v77, v5 offset:704
	ds_load_u8 v115, v5 offset:976
	ds_load_u8 v116, v5 offset:944
	ds_load_u8 v117, v5 offset:912
	ds_load_u8 v118, v5 offset:880
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v0, v6, v0, 0xc0c0004
	ds_load_u8 v89, v5 offset:1504
	ds_load_u8 v90, v5 offset:1472
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v98, v4 offset:2944
	ds_load_u8 v99, v4 offset:2688
	ds_load_u8 v100, v4 offset:2432
	ds_load_u8 v101, v4 offset:2176
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	ds_load_u8 v102, v4 offset:1920
	ds_load_u8 v103, v4 offset:1664
	ds_load_u8 v104, v4 offset:1408
	ds_load_u8 v105, v4 offset:1152
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	v_lshl_or_b32 v58, v6, 16, v0
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v6, v14, v13, 0xc0c0004
	ds_load_u8 v10, v4 offset:3328
	ds_load_u8 v11, v4 offset:3072
	ds_load_u8 v12, v4 offset:3840
	ds_load_u8 v13, v4 offset:3584
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_lshl_or_b32 v57, v8, 16, v7
	v_perm_b32 v7, v47, v15, 0xc0c0004
	v_perm_b32 v8, v49, v48, 0xc0c0004
	v_perm_b32 v9, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v75, v77, v76, 0xc0c0004
	v_lshl_or_b32 v56, v7, 16, v6
	ds_load_u8 v76, v4 offset:7424
	ds_load_u8 v77, v4 offset:7168
	v_lshl_or_b32 v55, v9, 16, v8
	ds_load_u8 v6, v4 offset:2304
	ds_load_u8 v7, v4 offset:2048
	ds_load_u8 v8, v4 offset:2816
	ds_load_u8 v9, v4 offset:2560
	ds_load_u8 v47, v4 offset:1280
	ds_load_u8 v48, v4 offset:1024
	ds_load_u8 v49, v4 offset:1792
	ds_load_u8 v50, v4 offset:1536
	ds_load_u8 v51, v4 offset:256
	ds_load_u8 v52, v4
	ds_load_u8 v53, v4 offset:768
	ds_load_u8 v54, v4 offset:512
	ds_load_u8 v94, v4 offset:3968
	ds_load_u8 v95, v4 offset:3712
	ds_load_u8 v96, v4 offset:3456
	ds_load_u8 v97, v4 offset:3200
	v_perm_b32 v71, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v5 offset:1120
	ds_load_u8 v93, v5 offset:1088
	ds_load_u8 v149, v5 offset:1392
	ds_load_u8 v150, v5 offset:1360
	ds_load_u8 v151, v5 offset:1328
	ds_load_u8 v152, v5 offset:1296
	ds_load_u8 v141, v4 offset:4992
	ds_load_u8 v142, v4 offset:4736
	ds_load_u8 v143, v4 offset:4480
	ds_load_u8 v144, v4 offset:4224
	v_dual_mov_b32 v66, s8 :: v_dual_add_nc_u32 v3, s29, v3
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v72, v71, 16, v70
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v11, v13, v12, 0xc0c0004
	v_lshl_or_b32 v71, v75, 16, v74
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v8, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v12, v52, v51, 0xc0c0004
	ds_load_u8 v51, v5 offset:928
	ds_load_u8 v52, v5 offset:896
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v13, v54, v53, 0xc0c0004
	ds_load_u8 v53, v5 offset:992
	ds_load_u8 v54, v5 offset:960
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v4 offset:4352
	ds_load_u8 v86, v4 offset:4096
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	v_perm_b32 v9, v50, v49, 0xc0c0004
	ds_load_u8 v47, v4 offset:896
	ds_load_u8 v48, v4 offset:640
	ds_load_u8 v49, v4 offset:384
	ds_load_u8 v50, v4 offset:128
	ds_load_u8 v107, v5 offset:336
	ds_load_u8 v108, v5 offset:304
	ds_load_u8 v109, v5 offset:272
	ds_load_u8 v110, v5 offset:240
	ds_load_u8 v0, v5 offset:208
	ds_load_u8 v111, v5 offset:176
	ds_load_u8 v112, v5 offset:144
	ds_load_u8 v113, v5 offset:112
	ds_load_u8 v14, v5 offset:80
	ds_load_u8 v15, v5 offset:48
	ds_load_u8 v114, v5 offset:16
	ds_load_u8 v3, v3
	ds_load_u8 v123, v5 offset:720
	ds_load_u8 v124, v5 offset:688
	ds_load_u8 v125, v5 offset:656
	ds_load_u8 v126, v5 offset:624
	ds_load_u8 v127, v5 offset:592
	ds_load_u8 v128, v5 offset:560
	ds_load_u8 v129, v5 offset:528
	ds_load_u8 v130, v5 offset:496
	ds_load_u8 v153, v5 offset:1264
	ds_load_u8 v154, v5 offset:1232
	ds_load_u8 v155, v5 offset:1200
	ds_load_u8 v156, v5 offset:1168
	ds_load_u8 v157, v5 offset:1136
	ds_load_u8 v158, v5 offset:1104
	ds_load_u8 v159, v5 offset:1072
	ds_load_u8 v160, v5 offset:1040
	ds_load_u8 v173, v4 offset:10112
	ds_load_u8 v174, v4 offset:9856
	ds_load_u8 v175, v4 offset:9600
	ds_load_u8 v176, v4 offset:9344
	v_lshl_or_b32 v81, v11, 16, v10
	v_lshl_or_b32 v80, v7, 16, v6
	v_lshl_or_b32 v79, v9, 16, v8
	v_lshl_or_b32 v78, v13, 16, v12
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v5 offset:544
	ds_load_u8 v82, v5 offset:512
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v5 offset:608
	ds_load_u8 v83, v5 offset:576
	ds_load_u8 v119, v5 offset:848
	ds_load_u8 v120, v5 offset:816
	ds_load_u8 v121, v5 offset:784
	ds_load_u8 v122, v5 offset:752
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v77, v86, v77, 0xc0c0004
	ds_load_u8 v86, v5 offset:1440
	ds_load_u8 v88, v5 offset:1408
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_lshl_or_b32 v73, v53, 16, v51
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_dual_mov_b32 v67, s9 :: v_dual_mov_b32 v64, s6
	v_dual_mov_b32 v65, s7 :: v_dual_mov_b32 v62, s4
	v_mov_b32_e32 v63, s5
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v59, v59, v130, 0xc0c0004
	v_perm_b32 v61, v109, v108, 0xc0c0004
	v_perm_b32 v0, v0, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[78:81], v[55:58], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v83, v54, 0xc0c0004
	v_perm_b32 v52, v82, v52, 0xc0c0004
	ds_load_u8 v82, v4 offset:7936
	ds_load_u8 v83, v4 offset:7680
	v_perm_b32 v15, v114, v15, 0xc0c0004
	v_perm_b32 v14, v14, v113, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v88, v86, 0xc0c0004
	v_lshl_or_b32 v70, v54, 16, v52
	ds_load_u8 v51, v4 offset:6400
	ds_load_u8 v52, v4 offset:6144
	ds_load_u8 v53, v4 offset:6912
	ds_load_u8 v54, v4 offset:6656
	ds_load_u8 v74, v4 offset:5376
	ds_load_u8 v75, v4 offset:5120
	ds_load_u8 v84, v4 offset:5888
	ds_load_u8 v85, v4 offset:5632
	ds_load_u8 v131, v4 offset:8064
	ds_load_u8 v132, v4 offset:7808
	ds_load_u8 v133, v4 offset:7552
	ds_load_u8 v134, v4 offset:7296
	ds_load_u8 v88, v5 offset:1056
	ds_load_u8 v92, v5 offset:1024
	v_lshl_or_b32 v109, v59, 16, v60
	v_perm_b32 v59, v125, v124, 0xc0c0004
	v_perm_b32 v60, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v52, v54, v53, 0xc0c0004
	ds_load_u8 v53, v4 offset:6016
	ds_load_u8 v54, v4 offset:5760
	ds_load_u8 v139, v4 offset:5504
	ds_load_u8 v140, v4 offset:5248
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v4 offset:4864
	ds_load_u8 v87, v4 offset:4608
	ds_load_u8 v135, v4 offset:7040
	ds_load_u8 v136, v4 offset:6784
	ds_load_u8 v137, v4 offset:6528
	ds_load_u8 v138, v4 offset:6272
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v75, v85, v84, 0xc0c0004
	v_lshl_or_b32 v84, v52, 16, v51
	v_lshl_or_b32 v85, v82, 16, v76
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v87, v83, 0xc0c0004
	v_lshl_or_b32 v83, v75, 16, v74
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v82, v87, 16, v77
	ds_load_u8 v51, v5 offset:1312
	ds_load_u8 v52, v5 offset:1280
	ds_load_u8 v74, v5 offset:1376
	ds_load_u8 v75, v5 offset:1344
	ds_load_u8 v76, v5 offset:1184
	ds_load_u8 v77, v5 offset:1152
	ds_load_u8 v87, v5 offset:1248
	ds_load_u8 v91, v5 offset:1216
	ds_load_u8 v145, v5 offset:1520
	ds_load_u8 v146, v5 offset:1488
	ds_load_u8 v147, v5 offset:1456
	ds_load_u8 v148, v5 offset:1424
	v_wmma_i32_16x16x16_iu8 v[6:13], v[82:85], v[70:73], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_lshl_or_b32 v77, v89, 16, v86
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v91, v87, 0xc0c0004
	v_perm_b32 v87, v92, v88, 0xc0c0004
	ds_load_u8 v88, v4 offset:11520
	ds_load_u8 v91, v4 offset:11264
	ds_load_u8 v92, v4 offset:12032
	ds_load_u8 v161, v4 offset:11776
	v_lshl_or_b32 v76, v52, 16, v51
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v90, 16, v87
	ds_load_u8 v51, v4 offset:10496
	ds_load_u8 v52, v4 offset:10240
	ds_load_u8 v86, v4 offset:11008
	ds_load_u8 v87, v4 offset:10752
	ds_load_u8 v89, v4 offset:9472
	ds_load_u8 v90, v4 offset:9216
	ds_load_u8 v93, v4 offset:9984
	ds_load_u8 v162, v4 offset:9728
	ds_load_u8 v163, v4 offset:12160
	ds_load_u8 v164, v4 offset:11904
	ds_load_u8 v165, v4 offset:11648
	ds_load_u8 v166, v4 offset:11392
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v87, v86, 0xc0c0004
	v_perm_b32 v88, v91, v88, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v86, v90, v89, 0xc0c0004
	v_perm_b32 v91, v161, v92, 0xc0c0004
	ds_load_u8 v92, v4 offset:8448
	ds_load_u8 v161, v4 offset:8192
	ds_load_u8 v167, v4 offset:8960
	ds_load_u8 v168, v4 offset:8704
	ds_load_u8 v169, v4 offset:11136
	ds_load_u8 v170, v4 offset:10880
	ds_load_u8 v171, v4 offset:10624
	ds_load_u8 v172, v4 offset:10368
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v87, v162, v93, 0xc0c0004
	ds_load_u8 v90, v5 offset:1952
	ds_load_u8 v93, v5 offset:1920
	ds_load_u8 v162, v5 offset:2016
	ds_load_u8 v177, v5 offset:1984
	ds_load_u8 v178, v4 offset:9088
	ds_load_u8 v179, v4 offset:8832
	ds_load_u8 v180, v4 offset:8576
	ds_load_u8 v181, v4 offset:8320
	v_lshl_or_b32 v89, v91, 16, v88
	v_lshl_or_b32 v88, v52, 16, v51
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v161, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v161, v168, v167, 0xc0c0004
	ds_load_u8 v167, v5 offset:1824
	ds_load_u8 v168, v5 offset:1792
	ds_load_u8 v182, v5 offset:1888
	ds_load_u8 v183, v5 offset:1856
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v93, v90, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v177, v162, 0xc0c0004
	ds_load_u8 v90, v5 offset:1696
	ds_load_u8 v91, v5 offset:1664
	ds_load_u8 v162, v5 offset:1760
	ds_load_u8 v177, v5 offset:1728
	ds_load_u8 v186, v5 offset:1904
	ds_load_u8 v187, v5 offset:1872
	ds_load_u8 v188, v5 offset:1840
	ds_load_u8 v189, v5 offset:1808
	v_lshl_or_b32 v86, v161, 16, v92
	ds_load_u8 v1, v1
	ds_load_u8 v161, v5 offset:2000
	ds_load_u8 v184, v5 offset:1968
	ds_load_u8 v185, v5 offset:1936
	v_lshl_or_b32 v93, v52, 16, v51
	v_wmma_i32_16x16x16_iu8 v[6:13], v[86:89], v[74:77], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v91, v90, 0xc0c0004
	v_perm_b32 v92, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v177, v162, 0xc0c0004
	v_perm_b32 v167, v183, v182, 0xc0c0004
	ds_load_u8 v168, v5 offset:1568
	ds_load_u8 v182, v5 offset:1536
	ds_load_u8 v183, v5 offset:1632
	ds_load_u8 v190, v5 offset:1600
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v115, v1, 0xc0c0004
	v_lshl_or_b32 v91, v52, 16, v51
	v_lshl_or_b32 v92, v167, 16, v92
	ds_load_u8 v167, v5 offset:1776
	ds_load_u8 v191, v5 offset:1744
	ds_load_u8 v192, v5 offset:1712
	ds_load_u8 v193, v5 offset:1680
	ds_load_u8 v162, v4 offset:15616
	ds_load_u8 v177, v4 offset:15360
	ds_load_u8 v194, v4 offset:16128
	ds_load_u8 v195, v4 offset:15872
	ds_load_u8 v196, v5 offset:1648
	ds_load_u8 v197, v5 offset:1616
	ds_load_u8 v198, v5 offset:1584
	ds_load_u8 v5, v5 offset:1552
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v182, v168, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v168, v190, v183, 0xc0c0004
	ds_load_u8 v182, v4 offset:14592
	ds_load_u8 v183, v4 offset:14336
	ds_load_u8 v190, v4 offset:15104
	ds_load_u8 v199, v4 offset:14848
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v162, v177, v162, 0xc0c0004
	ds_load_u8 v177, v4 offset:12544
	ds_load_u8 v205, v4 offset:12288
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	v_lshl_or_b32 v90, v168, 16, v90
	ds_load_u8 v51, v4 offset:13568
	ds_load_u8 v52, v4 offset:13312
	ds_load_u8 v168, v4 offset:14080
	ds_load_u8 v200, v4 offset:13824
	ds_load_u8 v201, v4 offset:16256
	ds_load_u8 v202, v4 offset:16000
	ds_load_u8 v203, v4 offset:15744
	ds_load_u8 v204, v4 offset:15488
	ds_load_u8 v195, v4 offset:15232
	ds_load_u8 v206, v4 offset:14976
	ds_load_u8 v207, v4 offset:14720
	ds_load_u8 v208, v4 offset:14464
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v5, v198, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v213, v52, v51, 0xc0c0004
	v_perm_b32 v51, v97, v96, 0xc0c0004
	v_perm_b32 v52, v95, v94, 0xc0c0004
	v_perm_b32 v94, v101, v100, 0xc0c0004
	v_perm_b32 v95, v99, v98, 0xc0c0004
	v_perm_b32 v98, v105, v104, 0xc0c0004
	v_perm_b32 v99, v103, v102, 0xc0c0004
	v_perm_b32 v183, v199, v190, 0xc0c0004
	ds_load_u8 v190, v4 offset:13056
	ds_load_u8 v199, v4 offset:12800
	ds_load_u8 v209, v4 offset:14208
	ds_load_u8 v210, v4 offset:13952
	ds_load_u8 v211, v4 offset:13696
	ds_load_u8 v212, v4 offset:13440
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v168, v200, v168, 0xc0c0004
	ds_load_u8 v200, v4 offset:13184
	ds_load_u8 v214, v4 offset:12928
	ds_load_u8 v215, v4 offset:12672
	ds_load_u8 v4, v4 offset:12416
	v_lshl_or_b32 v97, v52, 16, v51
	v_lshl_or_b32 v96, v95, 16, v94
	v_lshl_or_b32 v95, v99, 16, v98
	v_lshl_or_b32 v94, v47, 16, v49
	v_perm_b32 v98, v134, v133, 0xc0c0004
	v_perm_b32 v99, v132, v131, 0xc0c0004
	v_perm_b32 v100, v138, v137, 0xc0c0004
	v_perm_b32 v101, v136, v135, 0xc0c0004
	v_perm_b32 v103, v140, v139, 0xc0c0004
	v_perm_b32 v104, v54, v53, 0xc0c0004
	v_perm_b32 v105, v144, v143, 0xc0c0004
	v_perm_b32 v131, v142, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[94:97], v[55:58], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v99, 16, v98
	v_lshl_or_b32 v57, v101, 16, v100
	v_lshl_or_b32 v56, v104, 16, v103
	v_lshl_or_b32 v55, v131, 16, v105
	v_perm_b32 v98, v166, v165, 0xc0c0004
	v_perm_b32 v99, v164, v163, 0xc0c0004
	v_perm_b32 v100, v172, v171, 0xc0c0004
	v_perm_b32 v103, v170, v169, 0xc0c0004
	v_perm_b32 v104, v176, v175, 0xc0c0004
	v_perm_b32 v105, v174, v173, 0xc0c0004
	v_perm_b32 v131, v181, v180, 0xc0c0004
	v_perm_b32 v132, v179, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[55:58], v[70:73], v[47:54] neg_lo:[1,1,0]
	v_perm_b32 v70, v107, v106, 0xc0c0004
	v_perm_b32 v71, v112, v111, 0xc0c0004
	v_lshl_or_b32 v101, v99, 16, v98
	v_lshl_or_b32 v100, v103, 16, v100
	v_lshl_or_b32 v99, v105, 16, v104
	v_lshl_or_b32 v98, v132, 16, v131
	v_lshl_or_b32 v108, v70, 16, v61
	v_lshl_or_b32 v107, v0, 16, v71
	v_lshl_or_b32 v106, v14, 16, v15
	v_perm_b32 v0, v117, v116, 0xc0c0004
	v_perm_b32 v14, v121, v120, 0xc0c0004
	v_perm_b32 v15, v119, v118, 0xc0c0004
	v_perm_b32 v61, v129, v128, 0xc0c0004
	v_perm_b32 v111, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[98:101], v[74:77], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v4, v215, 0xc0c0004
	v_perm_b32 v110, v214, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v1, 16, v0
	v_lshl_or_b32 v80, v15, 16, v14
	v_lshl_or_b32 v79, v60, 16, v59
	v_lshl_or_b32 v78, v111, 16, v61
	v_perm_b32 v0, v148, v147, 0xc0c0004
	v_perm_b32 v1, v146, v145, 0xc0c0004
	v_perm_b32 v14, v152, v151, 0xc0c0004
	v_perm_b32 v15, v150, v149, 0xc0c0004
	v_perm_b32 v59, v156, v155, 0xc0c0004
	v_perm_b32 v60, v154, v153, 0xc0c0004
	v_perm_b32 v61, v160, v159, 0xc0c0004
	v_perm_b32 v111, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[94:97], v[106:109], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v177, v205, v177, 0xc0c0004
	v_perm_b32 v102, v199, v190, 0xc0c0004
	v_perm_b32 v131, v204, v203, 0xc0c0004
	v_perm_b32 v132, v202, v201, 0xc0c0004
	v_perm_b32 v133, v208, v207, 0xc0c0004
	v_perm_b32 v134, v206, v195, 0xc0c0004
	v_perm_b32 v135, v212, v211, 0xc0c0004
	v_perm_b32 v136, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[82:85], v[78:81], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v1, 16, v0
	v_lshl_or_b32 v84, v15, 16, v14
	v_lshl_or_b32 v83, v60, 16, v59
	v_lshl_or_b32 v82, v111, 16, v61
	v_lshl_or_b32 v110, v110, 16, v4
	v_perm_b32 v0, v185, v184, 0xc0c0004
	v_perm_b32 v1, v161, v3, 0xc0c0004
	v_perm_b32 v3, v189, v188, 0xc0c0004
	v_perm_b32 v4, v187, v186, 0xc0c0004
	v_perm_b32 v14, v193, v192, 0xc0c0004
	v_perm_b32 v15, v191, v167, 0xc0c0004
	v_perm_b32 v59, v197, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[55:58], v[78:81], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v194, 16, v162
	v_lshl_or_b32 v104, v183, 16, v182
	v_lshl_or_b32 v103, v168, 16, v213
	v_lshl_or_b32 v102, v102, 16, v177
	v_lshl_or_b32 v113, v132, 16, v131
	v_lshl_or_b32 v112, v134, 16, v133
	v_lshl_or_b32 v111, v136, 16, v135
	v_wmma_i32_16x16x16_iu8 v[70:77], v[86:89], v[82:85], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v1, 16, v0
	v_lshl_or_b32 v57, v4, 16, v3
	v_lshl_or_b32 v56, v15, 16, v14
	v_lshl_or_b32 v55, v59, 16, v5
	v_wmma_i32_16x16x16_iu8 v[62:69], v[98:101], v[82:85], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[6:13], v[102:105], v[90:93], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[110:113], v[90:93], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[102:105], v[55:58], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[110:113], v[55:58], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v70
	v_cvt_f32_i32_e32 v55, v71
	v_cvt_f32_i32_e32 v56, v72
	v_cvt_f32_i32_e32 v57, v73
	v_cvt_f32_i32_e32 v58, v74
	v_cvt_f32_i32_e32 v59, v75
	v_cvt_f32_i32_e32 v60, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v0, s27, v220
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 300 14 is_stmt 1              ; generate_amdgcn.py:300:14
	v_or_b32_e32 v1, s28, v219
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v14, v35, v49
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_bfe_i32 v71, v219, 0, 1
	v_lshl_add_u32 v72, v2, 1, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v3, 32, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v4, 1, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v15, v0, s[4:7], 0 offen
	buffer_load_u16 v70, v3, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v0, v40, v5 :: v_dual_add_f32 v5, v45, v7
	v_add_f32_e32 v7, v43, v9
	v_add_f32_e32 v9, v41, v11
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v3, v4, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v4, v46, v6
	v_dual_add_f32 v6, v44, v8 :: v_dual_add_f32 v11, v38, v13
	v_add_f32_e32 v8, v42, v10
	v_add_f32_e32 v10, v39, v12
	v_dual_add_f32 v12, v37, v47 :: v_dual_add_f32 v49, v32, v52
	v_add_f32_e32 v13, v36, v48
	v_dual_add_f32 v47, v34, v50 :: v_dual_add_f32 v48, v33, v51
	v_dual_add_f32 v50, v31, v53 :: v_dual_add_f32 v51, v30, v54
	v_dual_add_f32 v52, v29, v55 :: v_dual_add_f32 v53, v28, v56
	v_dual_add_f32 v54, v27, v57 :: v_dual_add_f32 v55, v26, v58
	v_dual_add_f32 v56, v25, v59 :: v_dual_add_f32 v57, v24, v60
	v_add_f32_e32 v58, v23, v61
	v_add_f32_e32 v60, v221, v63
	v_add_f32_e32 v61, v21, v64
	v_dual_add_f32 v63, v19, v66 :: v_dual_add_f32 v66, v16, v69
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v73, 2, v219
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v0, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s27, s25, v[1:2]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v64, v18, v67 :: v_dual_and_b32 v1, 0x3f8, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v5, s2
	v_cndmask_b32_e64 v30, v30, v51, s2
	v_cndmask_b32_e64 v26, v26, v55, s2
	v_cndmask_b32_e64 v55, v21, v61, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v59, v22, v62 :: v_dual_add_f32 v62, v20, v65
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v69, 1, v219
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v49, s2
	v_cndmask_b32_e64 v49, v31, v50, s2
	v_cndmask_b32_e64 v50, v29, v52, s2
	v_cndmask_b32_e64 v52, v25, v56, s2
	v_cndmask_b32_e64 v24, v24, v57, s2
	v_cndmask_b32_e64 v56, v20, v62, s2
	v_cndmask_b32_e64 v57, v19, v63, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v67, 2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v4, s2
	v_cndmask_b32_e64 v48, v33, v48, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v17, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v6, s2
	v_cndmask_b32_e64 v51, v27, v54, s2
	v_cndmask_b32_e64 v54, v221, v60, s2
	v_cndmask_b32_e64 v60, v16, v66, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v7, s2
	v_cndmask_b32_e64 v42, v42, v8, s2
	v_cndmask_b32_e64 v41, v41, v9, s2
	v_cndmask_b32_e64 v39, v39, v10, s2
	v_cndmask_b32_e64 v38, v38, v11, s2
	v_cndmask_b32_e64 v37, v37, v12, s2
	v_cndmask_b32_e64 v36, v36, v13, s2
	v_cndmask_b32_e64 v35, v35, v14, s2
	v_cndmask_b32_e64 v28, v28, v53, s2
	v_cndmask_b32_e64 v53, v23, v58, s2
	v_cndmask_b32_e64 v22, v22, v59, s2
	v_cndmask_b32_e64 v58, v18, v64, s2
	v_cndmask_b32_e64 v59, v17, v65, s2
	v_cndmask_b32_e64 v47, v34, v47, s2
	s_mov_b32 s2, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v15
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v5, 0x840, v71
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v68, 14, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v5, v5, v1
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v16, v68, 11, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b64 v[19:20], 2, v[0:1]
	v_xad_u32 v61, v16, 8, 0
	v_xad_u32 v62, v16, 16, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_co_u32 v33, vcc_lo, s0, v19
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v19, 16, v70
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v4, 5, v69
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v63, v16, 24, 0
	v_xad_u32 v64, v16, 32, 0
	v_xad_u32 v65, v16, 40, 0
	v_xad_u32 v66, v16, 48, 0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v4, 0, v67, v4
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v67, v16, 56, 0
	v_add_co_ci_u32_e64 v34, null, s1, v20, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v4, v68, 1, v4
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v72
	ds_load_b128 v[7:10], v72 offset:16
	ds_load_b128 v[11:14], v72 offset:512
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v80, v3, v19 :: v_dual_mul_f32 v23, v4, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v81, v4, v19 :: v_dual_mul_f32 v4, v30, v80
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v1, 0, v16
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[15:18], v72 offset:528
	v_mul_f32_e32 v20, v3, v21
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v72, v11, v21
	v_mul_f32_e32 v74, v13, v21
	v_dual_mul_f32 v31, v8, v21 :: v_dual_mul_f32 v88, v11, v19
	v_dual_mul_f32 v25, v5, v21 :: v_dual_mul_f32 v84, v7, v19
	v_dual_mul_f32 v27, v6, v21 :: v_dual_mul_f32 v82, v5, v19
	v_dual_mul_f32 v29, v7, v21 :: v_dual_mul_f32 v86, v9, v19
	v_mul_f32_e32 v73, v12, v21
	v_mul_f32_e32 v89, v12, v19
	v_dual_mul_f32 v71, v10, v21 :: v_dual_mul_f32 v90, v13, v19
	v_mul_f32_e32 v85, v8, v19
	v_mul_f32_e32 v75, v14, v21
	v_mul_f32_e32 v83, v6, v19
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v91, v14, v19 :: v_dual_mul_f32 v76, v15, v21
	v_mul_f32_e32 v92, v15, v19
	v_dual_mul_f32 v95, v18, v19 :: v_dual_mul_f32 v70, v9, v21
	v_mul_f32_e32 v77, v16, v21
	v_dual_mul_f32 v78, v17, v21 :: v_dual_mul_f32 v87, v10, v19
	v_dual_mul_f32 v79, v18, v21 :: v_dual_mul_f32 v8, v28, v82
	v_mul_f32_e32 v93, v16, v19
	v_dual_mul_f32 v94, v17, v19 :: v_dual_mul_f32 v3, v40, v20
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v19, v38, v72
	v_mul_f32_e32 v20, v22, v88
	v_mul_f32_e32 v5, v46, v23
	v_mul_f32_e32 v12, v26, v84
	v_dual_mul_f32 v6, v50, v81 :: v_dual_mul_f32 v9, v44, v27
	v_mul_f32_e32 v22, v54, v89
	v_dual_mul_f32 v16, v24, v86 :: v_dual_mul_f32 v21, v37, v73
	v_mul_f32_e32 v23, v36, v74
	v_mul_f32_e32 v14, v52, v85
	v_dual_mul_f32 v7, v45, v25 :: v_dual_mul_f32 v26, v56, v91
	v_mul_f32_e32 v24, v55, v90
	v_mul_f32_e32 v25, v35, v75
	v_mul_f32_e32 v10, v51, v83
	v_dual_mul_f32 v11, v43, v29 :: v_dual_mul_f32 v18, v53, v87
	v_dual_mul_f32 v13, v42, v31 :: v_dual_mul_f32 v28, v57, v92
	v_dual_mul_f32 v27, v47, v76 :: v_dual_mul_f32 v36, v60, v95
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v15, v41, v70 :: v_dual_mul_f32 v30, v58, v93
	v_mul_f32_e32 v17, v39, v71
	v_mul_f32_e32 v29, v48, v77
	v_mul_f32_e32 v31, v32, v78
	v_dual_mul_f32 v35, v49, v79 :: v_dual_mul_f32 v32, v59, v94
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v1, v[3:4], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v61, v[5:6], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v62, v[7:8], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v63, v[9:10], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v64, v[11:12], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v65, v[13:14], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v66, v[15:16], v[31:32] offset1:2
	ds_store_2addr_stride64_b64 v67, v[17:18], v[35:36] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_lshlrev_b32_e32 v1, 3, v2
	v_lshlrev_b32_e32 v2, 2, v68
	v_lshlrev_b32_e32 v3, 6, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v1, v1, v3, v2
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, 0x840, v1, 0
	v_xad_u32 v4, 0x1008, v1, 0
	v_xad_u32 v5, 0x1848, v1, 0
	v_xad_u32 v6, 0x2010, v1, 0
	v_xad_u32 v7, 0x2850, v1, 0
	v_xad_u32 v8, 0x3018, v1, 0
	v_xad_u32 v9, 0x3858, v1, 0
	ds_load_b64 v[31:32], v2
	ds_load_b64 v[29:30], v3
	ds_load_b64 v[27:28], v4
	ds_load_b64 v[25:26], v5
	ds_load_b64 v[23:24], v6
	ds_load_b64 v[21:22], v7
	ds_load_b64 v[19:20], v8
	ds_load_b64 v[17:18], v9
	v_xad_u32 v2, 0x4020, v1, 0
	v_xad_u32 v3, 0x4860, v1, 0
	v_xad_u32 v4, 0x5028, v1, 0
	v_xad_u32 v5, 0x5868, v1, 0
	v_xad_u32 v6, 0x6030, v1, 0
	v_xad_u32 v35, 0x6870, v1, 0
	v_xad_u32 v37, 0x7038, v1, 0
	v_xad_u32 v1, 0x7878, v1, 0
	ds_load_b64 v[15:16], v2
	ds_load_b64 v[13:14], v3
	ds_load_b64 v[11:12], v4
	ds_load_b64 v[9:10], v5
	ds_load_b64 v[7:8], v6
	ds_load_b64 v[5:6], v35
	ds_load_b64 v[3:4], v37
	ds_load_b64 v[1:2], v1
.LBB0_12:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v35, v36, v31
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s25, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_14:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v31, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v31, v36
	v_mov_b32_e32 v36, v31
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 1, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_16:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v35, v36, v27
	global_atomic_cmpswap_b32 v29, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v29, v36
	v_mov_b32_e32 v36, v29
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, s25, 3, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_18:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v25
	global_atomic_cmpswap_b32 v27, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v27, v36
	v_mov_b32_e32 v36, v27
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 2, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_20:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v23
	global_atomic_cmpswap_b32 v25, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v25, v36
	v_mov_b32_e32 v36, v25
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 5, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_22:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v21
	global_atomic_cmpswap_b32 v23, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v23, v36
	v_mov_b32_e32 v36, v23
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 6, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_24:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v19
	global_atomic_cmpswap_b32 v21, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v21, v36
	v_mov_b32_e32 v36, v21
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 7, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_26:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v17
	global_atomic_cmpswap_b32 v19, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v19, v36
	v_mov_b32_e32 v36, v19
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 3, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_28:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v15
	global_atomic_cmpswap_b32 v17, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v17, v36
	v_mov_b32_e32 v36, v17
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 9, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_30:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v13
	global_atomic_cmpswap_b32 v15, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v15, v36
	v_mov_b32_e32 v36, v15
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 10, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_32:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v11
	global_atomic_cmpswap_b32 v13, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v13, v36
	v_mov_b32_e32 v36, v13
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 11, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_34:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v9
	global_atomic_cmpswap_b32 v11, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v11, v36
	v_mov_b32_e32 v36, v11
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 12, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_36:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v7
	global_atomic_cmpswap_b32 v9, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v9, v36
	v_mov_b32_e32 v36, v9
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 13, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_38:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v5
	global_atomic_cmpswap_b32 v7, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v7, v36
	v_mov_b32_e32 v36, v7
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 14, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_40:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v3
	global_atomic_cmpswap_b32 v5, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v36
	v_mov_b32_e32 v36, v5
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s25, 15, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_42:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v1
	global_atomic_cmpswap_b32 v3, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v36
	v_mov_b32_e32 v36, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s26, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_44:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v32
	global_atomic_cmpswap_b32 v1, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v36
	v_mov_b32_e32 v36, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[31:32], null, s25, 17, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v32, 31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[31:32], 2, v[31:32]
	v_add_co_u32 v31, vcc_lo, s0, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v32, null, s1, v32, vcc_lo
	global_load_b32 v34, v[31:32], off
.LBB0_46:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v30
	global_atomic_cmpswap_b32 v1, v[31:32], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v34
	v_mov_b32_e32 v34, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[29:30], null, s25, 18, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v30, 31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[29:30], 2, v[29:30]
	v_add_co_u32 v29, vcc_lo, s0, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v30, null, s1, v30, vcc_lo
	global_load_b32 v32, v[29:30], off
.LBB0_48:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v31, v32, v28
	global_atomic_cmpswap_b32 v1, v[29:30], v[31:32], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v32
	v_mov_b32_e32 v32, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[27:28], null, s25, 19, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v28, 31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[27:28], 2, v[27:28]
	v_add_co_u32 v27, vcc_lo, s0, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v28, null, s1, v28, vcc_lo
	global_load_b32 v30, v[27:28], off
.LBB0_50:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v29, v30, v26
	global_atomic_cmpswap_b32 v1, v[27:28], v[29:30], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v30
	v_mov_b32_e32 v30, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[25:26], null, s25, 20, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v26, 31, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[25:26], 2, v[25:26]
	v_add_co_u32 v25, vcc_lo, s0, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v26, null, s1, v26, vcc_lo
	global_load_b32 v28, v[25:26], off
.LBB0_52:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v27, v28, v24
	global_atomic_cmpswap_b32 v1, v[25:26], v[27:28], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v28
	v_mov_b32_e32 v28, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[23:24], null, s25, 21, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v24, 31, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[23:24], 2, v[23:24]
	v_add_co_u32 v23, vcc_lo, s0, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v24, null, s1, v24, vcc_lo
	global_load_b32 v26, v[23:24], off
.LBB0_54:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v25, v26, v22
	global_atomic_cmpswap_b32 v1, v[23:24], v[25:26], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v26
	v_mov_b32_e32 v26, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[21:22], null, s25, 22, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v22, 31, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[21:22], 2, v[21:22]
	v_add_co_u32 v21, vcc_lo, s0, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v22, null, s1, v22, vcc_lo
	global_load_b32 v24, v[21:22], off
.LBB0_56:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v23, v24, v20
	global_atomic_cmpswap_b32 v1, v[21:22], v[23:24], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v24
	v_mov_b32_e32 v24, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[19:20], null, s25, 23, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v20, 31, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[19:20], 2, v[19:20]
	v_add_co_u32 v19, vcc_lo, s0, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, s1, v20, vcc_lo
	global_load_b32 v22, v[19:20], off
.LBB0_58:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v21, v22, v18
	global_atomic_cmpswap_b32 v1, v[19:20], v[21:22], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v22
	v_mov_b32_e32 v22, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[17:18], null, s25, 24, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s0, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s1, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_60:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v16
	global_atomic_cmpswap_b32 v1, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v20
	v_mov_b32_e32 v20, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[15:16], null, s25, 25, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v16, 31, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[15:16], 2, v[15:16]
	v_add_co_u32 v15, vcc_lo, s0, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, s1, v16, vcc_lo
	global_load_b32 v18, v[15:16], off
.LBB0_62:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v17, v18, v14
	global_atomic_cmpswap_b32 v1, v[15:16], v[17:18], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v18
	v_mov_b32_e32 v18, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[13:14], null, s25, 26, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v13, vcc_lo, s0, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s1, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_64:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v15, v16, v12
	global_atomic_cmpswap_b32 v1, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v16
	v_mov_b32_e32 v16, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[11:12], null, s25, 27, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v12, 31, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	v_add_co_u32 v11, vcc_lo, s0, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, s1, v12, vcc_lo
	global_load_b32 v14, v[11:12], off
.LBB0_66:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v10
	global_atomic_cmpswap_b32 v1, v[11:12], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v14
	v_mov_b32_e32 v14, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[9:10], null, s25, 28, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, vcc_lo, s0, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s1, v10, vcc_lo
	global_load_b32 v12, v[9:10], off
.LBB0_68:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v11, v12, v8
	global_atomic_cmpswap_b32 v1, v[9:10], v[11:12], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v12
	v_mov_b32_e32 v12, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[7:8], null, s25, 29, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v8, 31, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[7:8], 2, v[7:8]
	v_add_co_u32 v7, vcc_lo, s0, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s1, v8, vcc_lo
	global_load_b32 v10, v[7:8], off
.LBB0_70:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v9, v10, v6
	global_atomic_cmpswap_b32 v1, v[7:8], v[9:10], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v10
	v_mov_b32_e32 v10, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[5:6], null, s25, 30, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v6, 31, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_add_co_u32 v5, vcc_lo, s0, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s1, v6, vcc_lo
	global_load_b32 v8, v[5:6], off
.LBB0_72:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v7, v8, v4
	global_atomic_cmpswap_b32 v1, v[5:6], v[7:8], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v8
	v_mov_b32_e32 v8, v1
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 31, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v4, v[0:1], off
.LBB0_74:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v3, v4, v2
	global_atomic_cmpswap_b32 v3, v[0:1], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_74
; %bb.75:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 56
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 56
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20984
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 56
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 56
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 13
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
