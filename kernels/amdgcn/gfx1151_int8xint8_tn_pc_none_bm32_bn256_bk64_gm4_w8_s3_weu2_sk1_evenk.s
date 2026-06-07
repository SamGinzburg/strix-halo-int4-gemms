	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	s_lshl_b32 s28, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s6, s24, s28
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s25, s28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s26, s2
	v_mov_b32_e32 v219, v0
	s_lshl_b32 s27, s25, 4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 4, v219
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v220, 15, v219
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s7, s24, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s8, s25, 6
	v_mul_lo_u32 v2, s25, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v0, v220, 4, v2
	v_add_nc_u32_e32 v2, s4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v1, 2, v219
	v_dual_mov_b32 v10, v0 :: v_dual_lshlrev_b32 v9, 3, v219
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v47, s27, v0
	v_lshl_add_u32 v6, s25, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s24, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 24, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_or_b32_e32 v48, 0x3f0, v219
	v_mov_b32_e32 v11, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v46, v1, v3, s33
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[7:8], null, s25, 48, v[0:1]
	v_add_nc_u32_e32 v8, s4, v47
	v_add_nc_u32_e32 v3, s4, v6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s6, v46
	v_add3_u32 v5, s6, s7, v46
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s4, s8
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v23, s6, v0
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_dual_mov_b32 v235, v7 :: v_dual_add_nc_u32 v4, s4, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v27, s6, v47
	v_add_nc_u32_e32 v28, s6, v6
	v_add_nc_u32_e32 v29, s6, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[6:7], v1, s[16:19], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v3, s3
	v_cndmask_b32_e64 v30, 0x80000000, v23, s2
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	buffer_load_b128 v[23:26], v8, s[20:23], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v27, s2
	v_cndmask_b32_e64 v35, 0x80000000, v28, s2
	v_cndmask_b32_e64 v39, 0x80000000, v29, s2
	s_clause 0x2
	buffer_load_b128 v[2:5], v2, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v12, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v13, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[12:13], v1, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[27:30], v30, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v8, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v35, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v39, s[20:23], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v8, 0, v9
	v_mov_b32_e32 v0, v9
	v_lshrrev_b32_e32 v1, 1, v219
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, v8, v9
	v_or_b32_e32 v9, 0x7f0, v219
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v8, v[6:7] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v43, v[2:5]
	s_waitcnt vmcnt(5)
	ds_store_b128 v43, v[19:22] offset:12288
	ds_store_b128 v43, v[23:26] offset:4096
	ds_store_b128 v43, v[15:18] offset:8192
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v8, v[12:13] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[27:30] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v43, v[31:34] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v43, v[35:38] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[39:42] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 0x3f0, v219
	v_or_b32_e32 v3, 0x7f0, v219
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v5, 0x70, v1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
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
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	s_mov_b32 s11, s4
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s30, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_dual_mov_b32 v19, s11 :: v_dual_lshlrev_b32 v2, 4, v219
	v_dual_mov_b32 v18, s10 :: v_dual_mov_b32 v17, s9
	v_dual_mov_b32 v16, s8 :: v_dual_mov_b32 v15, s7
	v_dual_mov_b32 v14, s6 :: v_dual_mov_b32 v13, s5
	v_dual_mov_b32 v12, s4 :: v_dual_mov_b32 v45, 0
	s_clause 0x4                            ; 44-byte Folded Spill
	scratch_store_b128 off, v[12:15], off offset:12
	scratch_store_b128 off, v[16:19], off offset:28
	scratch_store_b32 off, v2, off offset:8
	scratch_store_b32 off, v219, off offset:48
	scratch_store_b32 off, v0, off offset:44
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v5, 0x70, v1
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v221, 0
	s_addk_i32 s28, 0x80
	s_mov_b32 s29, 1
	s_add_i32 s31, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s30, s30, -3
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v58, s4, v5, v220
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s28, s6
	v_dual_mov_b32 v8, v46 :: v_dual_add_nc_u32 v59, s31, v220
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[12:13], null, s6, s24, v[46:47]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s6, s25
	v_dual_mov_b32 v46, v44 :: v_dual_add_nc_u32 v61, s31, v48
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v60, s31, v9
	s_mov_b32 s31, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s29, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[0:1], v12, s[16:19], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s0, 2
	v_dual_mov_b32 v44, v42 :: v_dual_add_nc_u32 v57, s4, v10
	s_cselect_b32 s29, s0, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v56, s4, v47
	v_dual_mov_b32 v42, v40 :: v_dual_add_nc_u32 v55, s4, v11
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s29, 11
	v_dual_mov_b32 v40, v38 :: v_dual_mov_b32 v13, v11
	v_dual_mov_b32 v38, v36 :: v_dual_mov_b32 v7, v9
	s_add_i32 s7, s0, 0
	v_mov_b32_e32 v36, v34
	v_mov_b32_e32 v4, v47
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v6, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s5, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s0, s7, 0x8000
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
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v49, v106, v98, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v98, s4, v235
	s_mov_b32 s4, s1
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_lshl_b32 s1, s29, 14
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v17, v221
	s_add_i32 s1, s1, 0
	v_mov_b32_e32 v34, v32
	v_mov_b32_e32 v32, v30
	v_mov_b32_e32 v30, v28
	v_mov_b32_e32 v28, v26
	v_mov_b32_e32 v26, v24
	v_mov_b32_e32 v24, v22
	v_mov_b32_e32 v22, v20
	v_mov_b32_e32 v20, v18
	v_mov_b32_e32 v18, v16
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
	v_mov_b32_e32 v220, v16
	v_mov_b32_e32 v16, v18
	v_mov_b32_e32 v18, v20
	v_mov_b32_e32 v20, v22
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v24, v26
	v_perm_b32 v187, v112, v111, 0xc0c0004
	v_perm_b32 v189, v110, v226, 0xc0c0004
	v_perm_b32 v195, v114, v113, 0xc0c0004
	v_lshl_or_b32 v78, v163, 16, v157
	v_lshl_or_b32 v112, v47, 16, v51
	v_lshl_or_b32 v111, v10, 16, v49
	v_lshl_or_b32 v110, v9, 16, v50
	v_lshl_or_b32 v114, v221, 16, v219
	v_mov_b32_e32 v221, v17
	v_dual_mov_b32 v17, v1 :: v_dual_mov_b32 v26, v28
	v_mov_b32_e32 v28, v30
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v32, v34
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
	v_perm_b32 v160, v191, v190, 0xc0c0004
	v_perm_b32 v190, v105, v73, 0xc0c0004
	v_perm_b32 v191, v72, v71, 0xc0c0004
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_perm_b32 v54, v54, v79, 0xc0c0004
	v_perm_b32 v69, v140, v138, 0xc0c0004
	v_perm_b32 v84, v84, v81, 0xc0c0004
	v_perm_b32 v59, v59, v115, 0xc0c0004
	v_lshl_or_b32 v73, v64, 16, v62
	v_lshl_or_b32 v72, v68, 16, v66
	v_lshl_or_b32 v71, v250, 16, v70
	v_lshl_or_b32 v70, v74, 16, v75
	v_lshl_or_b32 v81, v139, 16, v77
	v_lshl_or_b32 v80, v147, 16, v141
	v_lshl_or_b32 v79, v155, 16, v149
	v_perm_b32 v199, v131, v129, 0xc0c0004
	v_lshl_or_b32 v105, v103, 16, v102
	v_lshl_or_b32 v104, v83, 16, v82
	v_lshl_or_b32 v103, v252, 16, v85
	v_lshl_or_b32 v102, v14, 16, v254
	v_lshl_or_b32 v109, v172, 16, v170
	v_lshl_or_b32 v108, v180, 16, v178
	v_lshl_or_b32 v107, v188, 16, v186
	v_lshl_or_b32 v106, v196, 16, v194
	v_lshl_or_b32 v124, v130, 16, v128
	v_lshl_or_b32 v122, v58, 16, v136
	v_lshl_or_b32 v129, v142, 16, v137
	v_lshl_or_b32 v128, v57, 16, v143
	v_lshl_or_b32 v142, v65, 16, v54
	v_lshl_or_b32 v149, v61, 16, v69
	v_lshl_or_b32 v147, v156, 16, v154
	v_lshl_or_b32 v154, v195, 16, v59
	v_perm_b32 v193, v117, v116, 0xc0c0004
	v_lshl_or_b32 v113, v121, 16, v120
	v_lshl_or_b32 v117, v203, 16, v202
	v_lshl_or_b32 v116, v205, 16, v204
	v_lshl_or_b32 v115, v213, 16, v211
	v_lshl_or_b32 v121, v228, 16, v227
	v_lshl_or_b32 v120, v15, 16, v229
	v_lshl_or_b32 v123, v134, 16, v132
	v_perm_b32 v152, v185, v184, 0xc0c0004
	v_perm_b32 v153, v183, v182, 0xc0c0004
	v_perm_b32 v0, v0, v255, 0xc0c0004
	v_perm_b32 v166, v201, v200, 0xc0c0004
	v_perm_b32 v169, v207, v206, 0xc0c0004
	v_perm_b32 v200, v245, v244, 0xc0c0004
	v_lshl_or_b32 v132, v153, 16, v152
	v_lshl_or_b32 v153, v0, 16, v164
	v_perm_b32 v201, v243, v242, 0xc0c0004
	v_perm_b32 v206, v249, v248, 0xc0c0004
	v_perm_b32 v207, v247, v246, 0xc0c0004
	v_perm_b32 v146, v148, v146, 0xc0c0004
	v_perm_b32 v162, v253, v251, 0xc0c0004
	v_lshl_or_b32 v127, v145, 16, v144
	v_lshl_or_b32 v145, v201, 16, v200
	v_lshl_or_b32 v144, v207, 16, v206
	v_lshl_or_b32 v143, v63, 16, v67
	v_perm_b32 v168, v209, v208, 0xc0c0004
	v_perm_b32 v174, v217, v216, 0xc0c0004
	v_perm_b32 v175, v215, v214, 0xc0c0004
	v_perm_b32 v176, v225, v224, 0xc0c0004
	v_perm_b32 v177, v223, v222, 0xc0c0004
	v_perm_b32 v182, v233, v232, 0xc0c0004
	v_perm_b32 v183, v231, v230, 0xc0c0004
	v_lshl_or_b32 v131, v160, 16, v158
	v_lshl_or_b32 v130, v167, 16, v166
	v_lshl_or_b32 v148, v146, 16, v76
	v_lshl_or_b32 v146, v84, 16, v162
	v_perm_b32 v184, v241, v240, 0xc0c0004
	v_perm_b32 v185, v239, v238, 0xc0c0004
	v_perm_b32 v181, v212, v210, 0xc0c0004
	v_lshl_or_b32 v137, v169, 16, v168
	v_lshl_or_b32 v136, v175, 16, v174
	v_lshl_or_b32 v135, v177, 16, v176
	v_lshl_or_b32 v134, v183, 16, v182
	v_lshl_or_b32 v152, v171, 16, v165
	v_lshl_or_b32 v141, v185, 16, v184
	v_lshl_or_b32 v140, v191, 16, v190
	v_lshl_or_b32 v139, v193, 16, v192
	v_lshl_or_b32 v138, v199, 16, v198
	v_lshl_or_b32 v156, v181, 16, v179
	v_lshl_or_b32 v155, v189, 16, v187
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s30
	s_mov_b32 s5, s6
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v34, v36 :: v_dual_add_nc_u32 v159, s7, v3
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[106:109], v[102:105], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[126:129], v[142:145], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[130:133], v[102:105], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[106:109], v[146:149], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[114:117], v[110:113], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[130:133], v[146:149], v[78:85] neg_lo:[1,1,0]
	v_mov_b32_e32 v46, v8
	v_wmma_i32_16x16x16_iu8 v[62:69], v[134:137], v[110:113], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[114:117], v[150:153], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[122:125], v[118:121], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[134:137], v[150:153], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[138:141], v[118:121], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[122:125], v[154:157], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v54
	v_wmma_i32_16x16x16_iu8 v[78:85], v[138:141], v[154:157], v[78:85] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v11, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	scratch_load_b64 v[0:1], off, off       ; 8-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v58
	v_cvt_f32_i32_e32 v15, v59
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
	v_cvt_f32_i32_e32 v58, v71
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
	v_cvt_f32_i32_e32 v71, v84
	v_cvt_f32_i32_e32 v72, v85
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v2, v9 :: v_dual_mov_b32 v9, v7
	v_dual_add_f32 v45, v45, v10 :: v_dual_add_f32 v44, v44, v11
	v_mov_b32_e32 v11, v13
	v_dual_add_f32 v43, v43, v14 :: v_dual_add_f32 v42, v42, v15
	v_add_f32_e32 v41, v41, v47
	v_dual_add_f32 v39, v39, v48 :: v_dual_add_f32 v38, v38, v49
	v_dual_add_f32 v37, v37, v50 :: v_dual_add_f32 v36, v36, v51
	v_dual_add_f32 v35, v35, v52 :: v_dual_mov_b32 v48, v6
	v_dual_add_f32 v34, v34, v53 :: v_dual_add_f32 v33, v33, v54
	v_mov_b32_e32 v47, v4
	v_mov_b32_e32 v10, v12
	v_dual_add_f32 v32, v32, v55 :: v_dual_add_f32 v31, v31, v56
	v_dual_add_f32 v30, v30, v57 :: v_dual_add_f32 v29, v29, v58
	v_add_f32_e32 v27, v27, v60
	v_add_f32_e32 v25, v25, v62
	v_add_f32_e32 v23, v23, v64
	v_dual_add_f32 v21, v21, v66 :: v_dual_add_f32 v22, v22, v65
	v_dual_add_f32 v20, v20, v67 :: v_dual_add_f32 v19, v19, v68
	v_add_f32_e32 v24, v24, v63
	v_dual_add_f32 v18, v18, v69 :: v_dual_add_f32 v17, v17, v70
	v_add_f32_e32 v26, v26, v61
	v_dual_add_f32 v16, v16, v71 :: v_dual_add_f32 v221, v221, v72
	v_add_f32_e32 v28, v28, v59
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v161, s1, v3
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
	v_dual_mov_b32 v46, v2 :: v_dual_mov_b32 v3, v9
	v_mov_b32_e32 v2, v48
.LBB0_7:                                ; %Flow40
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 0xf0, v219
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
	v_add_nc_u32_e32 v87, s31, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v5, s31, v220
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
	v_add_nc_u32_e32 v9, s31, v3
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
	v_cvt_f32_i32_e32 v48, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v32, v32, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
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
	v_cvt_f32_i32_e32 v8, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v22, v22, v5
	v_add_f32_e32 v20, v20, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v19, v19, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v7, v13
	v_cvt_f32_i32_e32 v8, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v21, v21, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v26, v26, v14 :: v_dual_add_f32 v25, v25, v15
	v_add_f32_e32 v24, v24, v48
	v_dual_add_f32 v18, v18, v0 :: v_dual_add_f32 v17, v17, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v16, v16, v6 :: v_dual_add_f32 v221, v221, v7
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
	v_add_nc_u32_e32 v2, s0, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v5, s0, v220
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v69, s11 :: v_dual_add_nc_u32 v4, s1, v4
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
	ds_load_u8 v102, v5 offset:368
	v_dual_mov_b32 v66, s8 :: v_dual_add_nc_u32 v3, s0, v3
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v6, v0, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v87, v5 offset:1440
	ds_load_u8 v88, v5 offset:1408
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	v_mov_b32_e32 v63, s5
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v12, v11, 0xc0c0004
	ds_load_u8 v9, v4 offset:3328
	ds_load_u8 v10, v4 offset:3072
	ds_load_u8 v11, v4 offset:3840
	ds_load_u8 v12, v4 offset:3584
	v_lshl_or_b32 v58, v6, 16, v0
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v14, v13, 0xc0c0004
	ds_load_u8 v103, v5 offset:336
	ds_load_u8 v104, v5 offset:304
	ds_load_u8 v105, v5 offset:272
	ds_load_u8 v106, v5 offset:240
	v_lshl_or_b32 v57, v8, 16, v7
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v7, v47, v15, 0xc0c0004
	ds_load_u8 v14, v5 offset:80
	ds_load_u8 v15, v5 offset:48
	ds_load_u8 v110, v5 offset:16
	ds_load_u8 v111, v3
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v8, v51, v50, 0xc0c0004
	ds_load_u8 v0, v5 offset:208
	ds_load_u8 v107, v5 offset:176
	ds_load_u8 v108, v5 offset:144
	ds_load_u8 v109, v5 offset:112
	v_lshl_or_b32 v56, v7, 16, v6
	ds_load_u8 v97, v4 offset:2944
	ds_load_u8 v98, v4 offset:2688
	ds_load_u8 v99, v4 offset:2432
	ds_load_u8 v100, v4 offset:2176
	ds_load_u8 v101, v4 offset:1920
	ds_load_u8 v112, v4 offset:1664
	ds_load_u8 v113, v4 offset:1408
	ds_load_u8 v114, v4 offset:1152
	v_lshl_or_b32 v55, v8, 16, v3
	ds_load_u8 v3, v4 offset:2304
	ds_load_u8 v6, v4 offset:2048
	ds_load_u8 v7, v4 offset:2816
	ds_load_u8 v8, v4 offset:2560
	ds_load_u8 v13, v4 offset:1280
	ds_load_u8 v47, v4 offset:1024
	ds_load_u8 v48, v4 offset:1792
	ds_load_u8 v49, v4 offset:1536
	ds_load_u8 v50, v4 offset:256
	ds_load_u8 v51, v4
	ds_load_u8 v52, v4 offset:768
	ds_load_u8 v53, v4 offset:512
	ds_load_u8 v54, v4 offset:3968
	ds_load_u8 v94, v4 offset:3712
	ds_load_u8 v95, v4 offset:3456
	ds_load_u8 v96, v4 offset:3200
	ds_load_u8 v124, v5 offset:720
	ds_load_u8 v125, v5 offset:688
	ds_load_u8 v126, v5 offset:656
	ds_load_u8 v127, v5 offset:624
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v5 offset:1056
	ds_load_u8 v91, v5 offset:1024
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v128, v5 offset:592
	ds_load_u8 v129, v5 offset:560
	ds_load_u8 v130, v5 offset:528
	ds_load_u8 v131, v5 offset:496
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v6, v3, 0xc0c0004
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v154, v5 offset:1264
	ds_load_u8 v155, v5 offset:1232
	ds_load_u8 v156, v5 offset:1200
	ds_load_u8 v157, v5 offset:1168
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v7, v47, v13, 0xc0c0004
	ds_load_u8 v158, v5 offset:1136
	ds_load_u8 v159, v5 offset:1104
	ds_load_u8 v160, v5 offset:1072
	ds_load_u8 v161, v5 offset:1040
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v8, v49, v48, 0xc0c0004
	v_lshl_or_b32 v80, v6, 16, v3
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v11, v51, v50, 0xc0c0004
	ds_load_u8 v3, v5 offset:928
	ds_load_u8 v50, v5 offset:896
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v12, v53, v52, 0xc0c0004
	ds_load_u8 v51, v5 offset:992
	ds_load_u8 v52, v5 offset:960
	ds_load_u8 v53, v5 offset:800
	ds_load_u8 v70, v5 offset:768
	ds_load_u8 v71, v5 offset:864
	ds_load_u8 v72, v5 offset:832
	ds_load_u8 v73, v5 offset:672
	ds_load_u8 v74, v5 offset:640
	ds_load_u8 v75, v5 offset:736
	ds_load_u8 v76, v5 offset:704
	ds_load_u8 v116, v5 offset:976
	ds_load_u8 v117, v5 offset:944
	ds_load_u8 v118, v5 offset:912
	ds_load_u8 v119, v5 offset:880
	ds_load_u8 v47, v4 offset:896
	ds_load_u8 v48, v4 offset:640
	ds_load_u8 v49, v4 offset:384
	ds_load_u8 v115, v4 offset:128
	ds_load_u8 v142, v4 offset:4992
	ds_load_u8 v143, v4 offset:4736
	ds_load_u8 v144, v4 offset:4480
	ds_load_u8 v145, v4 offset:4224
	ds_load_u8 v173, v4 offset:10112
	ds_load_u8 v174, v4 offset:9856
	ds_load_u8 v175, v4 offset:9600
	ds_load_u8 v176, v4 offset:9344
	ds_load_u8 v214, v4 offset:13184
	ds_load_u8 v215, v4 offset:12928
	ds_load_u8 v216, v4 offset:12672
	ds_load_u8 v217, v4 offset:12416
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v88, v91, v88, 0xc0c0004
	v_lshl_or_b32 v81, v10, 16, v9
	v_lshl_or_b32 v79, v8, 16, v7
	v_lshl_or_b32 v78, v12, 16, v11
	v_dual_mov_b32 v67, s9 :: v_dual_mov_b32 v64, s6
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v53, v70, v53, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_dual_mov_b32 v65, s7 :: v_dual_mov_b32 v62, s4
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v71, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_perm_b32 v3, v50, v3, 0xc0c0004
	ds_load_u8 v50, v5 offset:544
	ds_load_u8 v77, v5 offset:512
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v5 offset:608
	ds_load_u8 v82, v5 offset:576
	ds_load_u8 v120, v5 offset:848
	ds_load_u8 v121, v5 offset:816
	ds_load_u8 v122, v5 offset:784
	ds_load_u8 v123, v5 offset:752
	ds_load_u8 v75, v4 offset:7424
	ds_load_u8 v76, v4 offset:7168
	v_lshl_or_b32 v72, v70, 16, v53
	v_lshl_or_b32 v71, v74, 16, v71
	v_lshl_or_b32 v73, v51, 16, v3
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v49, v115, v49, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[6:13], v[78:81], v[55:58], v[62:69] neg_lo:[1,1,0]
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v59, v59, v131, 0xc0c0004
	v_perm_b32 v61, v105, v104, 0xc0c0004
	v_perm_b32 v0, v0, v106, 0xc0c0004
	v_perm_b32 v15, v110, v15, 0xc0c0004
	v_perm_b32 v14, v14, v109, 0xc0c0004
	v_lshl_or_b32 v105, v59, 16, v60
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v82, v52, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v59, v120, v119, 0xc0c0004
	v_perm_b32 v50, v77, v50, 0xc0c0004
	ds_load_u8 v77, v4 offset:7936
	ds_load_u8 v82, v4 offset:7680
	v_perm_b32 v60, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v4 offset:4352
	ds_load_u8 v85, v4 offset:4096
	v_lshl_or_b32 v70, v52, 16, v50
	ds_load_u8 v3, v4 offset:6400
	ds_load_u8 v50, v4 offset:6144
	ds_load_u8 v51, v4 offset:6912
	ds_load_u8 v52, v4 offset:6656
	ds_load_u8 v53, v4 offset:5376
	ds_load_u8 v74, v4 offset:5120
	ds_load_u8 v83, v4 offset:5888
	ds_load_u8 v84, v4 offset:5632
	ds_load_u8 v132, v4 offset:8064
	ds_load_u8 v133, v4 offset:7808
	ds_load_u8 v134, v4 offset:7552
	ds_load_u8 v135, v4 offset:7296
	v_perm_b32 v106, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v50, v3, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v52, v51, 0xc0c0004
	ds_load_u8 v51, v4 offset:6016
	ds_load_u8 v52, v4 offset:5760
	ds_load_u8 v140, v4 offset:5504
	ds_load_u8 v141, v4 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v53, v74, v53, 0xc0c0004
	v_perm_b32 v77, v82, v77, 0xc0c0004
	ds_load_u8 v82, v4 offset:4864
	ds_load_u8 v86, v4 offset:4608
	ds_load_u8 v136, v4 offset:7040
	ds_load_u8 v137, v4 offset:6784
	ds_load_u8 v138, v4 offset:6528
	ds_load_u8 v139, v4 offset:6272
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v74, v84, v83, 0xc0c0004
	v_perm_b32 v76, v85, v76, 0xc0c0004
	v_lshl_or_b32 v84, v50, 16, v3
	v_lshl_or_b32 v85, v77, 16, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v83, v74, 16, v53
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v86, v82, 0xc0c0004
	ds_load_u8 v86, v5 offset:1504
	ds_load_u8 v89, v5 offset:1472
	v_lshl_or_b32 v82, v82, 16, v76
	ds_load_u8 v3, v5 offset:1312
	ds_load_u8 v50, v5 offset:1280
	ds_load_u8 v53, v5 offset:1376
	ds_load_u8 v74, v5 offset:1344
	ds_load_u8 v75, v5 offset:1184
	ds_load_u8 v76, v5 offset:1152
	ds_load_u8 v77, v5 offset:1248
	ds_load_u8 v90, v5 offset:1216
	ds_load_u8 v146, v5 offset:1520
	ds_load_u8 v147, v5 offset:1488
	ds_load_u8 v148, v5 offset:1456
	ds_load_u8 v149, v5 offset:1424
	v_wmma_i32_16x16x16_iu8 v[6:13], v[82:85], v[70:73], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v50, v3, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v74, v53, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v53, v76, v75, 0xc0c0004
	v_perm_b32 v86, v89, v86, 0xc0c0004
	ds_load_u8 v89, v5 offset:1120
	ds_load_u8 v92, v5 offset:1088
	ds_load_u8 v150, v5 offset:1392
	ds_load_u8 v151, v5 offset:1360
	ds_load_u8 v152, v5 offset:1328
	ds_load_u8 v153, v5 offset:1296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v74, v90, v77, 0xc0c0004
	ds_load_u8 v90, v4 offset:11520
	ds_load_u8 v91, v4 offset:11264
	ds_load_u8 v93, v4 offset:12032
	ds_load_u8 v162, v4 offset:11776
	v_lshl_or_b32 v76, v50, 16, v3
	v_lshl_or_b32 v77, v86, 16, v87
	v_lshl_or_b32 v75, v74, 16, v53
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v92, v89, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v74, v89, 16, v88
	ds_load_u8 v3, v4 offset:10496
	ds_load_u8 v50, v4 offset:10240
	ds_load_u8 v53, v4 offset:11008
	ds_load_u8 v86, v4 offset:10752
	ds_load_u8 v87, v4 offset:9472
	ds_load_u8 v88, v4 offset:9216
	ds_load_u8 v89, v4 offset:9984
	ds_load_u8 v92, v4 offset:9728
	ds_load_u8 v163, v4 offset:12160
	ds_load_u8 v164, v4 offset:11904
	ds_load_u8 v165, v4 offset:11648
	ds_load_u8 v166, v4 offset:11392
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v162, v93, 0xc0c0004
	ds_load_u8 v93, v4 offset:8448
	ds_load_u8 v162, v4 offset:8192
	ds_load_u8 v167, v4 offset:8960
	ds_load_u8 v168, v4 offset:8704
	ds_load_u8 v169, v4 offset:11136
	ds_load_u8 v170, v4 offset:10880
	ds_load_u8 v171, v4 offset:10624
	ds_load_u8 v172, v4 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v3, v50, v3, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v86, v53, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v53, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v92, v89, 0xc0c0004
	ds_load_u8 v92, v5 offset:1952
	ds_load_u8 v177, v5 offset:1920
	ds_load_u8 v178, v5 offset:2016
	ds_load_u8 v179, v5 offset:1984
	ds_load_u8 v180, v4 offset:9088
	ds_load_u8 v181, v4 offset:8832
	ds_load_u8 v182, v4 offset:8576
	ds_load_u8 v183, v4 offset:8320
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v162, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v162, v168, v167, 0xc0c0004
	ds_load_u8 v167, v5 offset:1824
	ds_load_u8 v168, v5 offset:1792
	ds_load_u8 v184, v5 offset:1888
	ds_load_u8 v185, v5 offset:1856
	v_lshl_or_b32 v89, v91, 16, v90
	v_lshl_or_b32 v88, v50, 16, v3
	v_lshl_or_b32 v87, v86, 16, v53
	v_lshl_or_b32 v86, v162, 16, v93
	ds_load_u8 v162, v2
	ds_load_u8 v186, v5 offset:2000
	ds_load_u8 v187, v5 offset:1968
	ds_load_u8 v188, v5 offset:1936
	v_wmma_i32_16x16x16_iu8 v[6:13], v[86:89], v[74:77], v[6:13] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v177, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v179, v178, 0xc0c0004
	ds_load_u8 v50, v5 offset:1696
	ds_load_u8 v53, v5 offset:1664
	ds_load_u8 v90, v5 offset:1760
	ds_load_u8 v91, v5 offset:1728
	ds_load_u8 v177, v5 offset:1904
	ds_load_u8 v178, v5 offset:1872
	ds_load_u8 v179, v5 offset:1840
	ds_load_u8 v189, v5 offset:1808
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v168, v167, 0xc0c0004
	v_lshl_or_b32 v93, v3, 16, v2
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v185, v184, 0xc0c0004
	ds_load_u8 v168, v5 offset:1568
	ds_load_u8 v184, v5 offset:1536
	ds_load_u8 v185, v5 offset:1632
	ds_load_u8 v190, v5 offset:1600
	v_lshl_or_b32 v92, v167, 16, v92
	ds_load_u8 v167, v5 offset:1776
	ds_load_u8 v191, v5 offset:1744
	ds_load_u8 v192, v5 offset:1712
	ds_load_u8 v193, v5 offset:1680
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v53, v50, 0xc0c0004
	ds_load_u8 v50, v4 offset:15616
	ds_load_u8 v53, v4 offset:15360
	ds_load_u8 v194, v4 offset:16128
	ds_load_u8 v195, v4 offset:15872
	ds_load_u8 v196, v5 offset:1648
	ds_load_u8 v197, v5 offset:1616
	ds_load_u8 v198, v5 offset:1584
	ds_load_u8 v199, v5 offset:1552
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v3, 16, v2
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v184, v168, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v90, v190, v185, 0xc0c0004
	ds_load_u8 v168, v4 offset:14592
	ds_load_u8 v184, v4 offset:14336
	ds_load_u8 v185, v4 offset:15104
	ds_load_u8 v190, v4 offset:14848
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v205, v53, v50, 0xc0c0004
	ds_load_u8 v50, v4 offset:12544
	ds_load_u8 v53, v4 offset:12288
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	v_lshl_or_b32 v90, v90, 16, v5
	ds_load_u8 v2, v4 offset:13568
	ds_load_u8 v3, v4 offset:13312
	ds_load_u8 v5, v4 offset:14080
	ds_load_u8 v200, v4 offset:13824
	ds_load_u8 v201, v4 offset:16256
	ds_load_u8 v202, v4 offset:16000
	ds_load_u8 v203, v4 offset:15744
	ds_load_u8 v204, v4 offset:15488
	ds_load_u8 v195, v4 offset:15232
	ds_load_u8 v206, v4 offset:14976
	ds_load_u8 v207, v4 offset:14720
	ds_load_u8 v208, v4 offset:14464
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v168, v184, v168, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v213, v3, v2, 0xc0c0004
	v_perm_b32 v184, v190, v185, 0xc0c0004
	ds_load_u8 v185, v4 offset:13056
	ds_load_u8 v190, v4 offset:12800
	ds_load_u8 v209, v4 offset:14208
	ds_load_u8 v210, v4 offset:13952
	ds_load_u8 v211, v4 offset:13696
	ds_load_u8 v212, v4 offset:13440
	v_perm_b32 v218, v53, v50, 0xc0c0004
	v_perm_b32 v2, v96, v95, 0xc0c0004
	v_perm_b32 v3, v94, v54, 0xc0c0004
	v_perm_b32 v4, v100, v99, 0xc0c0004
	v_perm_b32 v50, v98, v97, 0xc0c0004
	v_perm_b32 v53, v114, v113, 0xc0c0004
	v_perm_b32 v54, v112, v101, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v200, v200, v5, 0xc0c0004
	v_lshl_or_b32 v5, v3, 16, v2
	v_lshl_or_b32 v4, v50, 16, v4
	v_lshl_or_b32 v2, v47, 16, v49
	v_lshl_or_b32 v3, v54, 16, v53
	v_perm_b32 v94, v135, v134, 0xc0c0004
	v_perm_b32 v95, v133, v132, 0xc0c0004
	v_perm_b32 v96, v139, v138, 0xc0c0004
	v_perm_b32 v97, v137, v136, 0xc0c0004
	v_perm_b32 v99, v141, v140, 0xc0c0004
	v_perm_b32 v100, v52, v51, 0xc0c0004
	v_perm_b32 v101, v145, v144, 0xc0c0004
	v_perm_b32 v112, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[2:5], v[55:58], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v95, 16, v94
	v_lshl_or_b32 v57, v97, 16, v96
	v_lshl_or_b32 v56, v100, 16, v99
	v_lshl_or_b32 v55, v112, 16, v101
	v_perm_b32 v94, v166, v165, 0xc0c0004
	v_perm_b32 v95, v164, v163, 0xc0c0004
	v_perm_b32 v96, v172, v171, 0xc0c0004
	v_perm_b32 v99, v170, v169, 0xc0c0004
	v_perm_b32 v100, v176, v175, 0xc0c0004
	v_perm_b32 v101, v174, v173, 0xc0c0004
	v_perm_b32 v112, v183, v182, 0xc0c0004
	v_perm_b32 v113, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[55:58], v[70:73], v[47:54] neg_lo:[1,1,0]
	v_perm_b32 v70, v103, v102, 0xc0c0004
	v_perm_b32 v71, v108, v107, 0xc0c0004
	v_lshl_or_b32 v97, v95, 16, v94
	v_lshl_or_b32 v96, v99, 16, v96
	v_lshl_or_b32 v95, v101, 16, v100
	v_lshl_or_b32 v94, v113, 16, v112
	v_lshl_or_b32 v104, v70, 16, v61
	v_lshl_or_b32 v103, v0, 16, v71
	v_lshl_or_b32 v102, v14, 16, v15
	v_perm_b32 v0, v118, v117, 0xc0c0004
	v_perm_b32 v14, v116, v162, 0xc0c0004
	v_perm_b32 v15, v122, v121, 0xc0c0004
	v_perm_b32 v61, v124, v123, 0xc0c0004
	v_perm_b32 v107, v130, v129, 0xc0c0004
	v_perm_b32 v108, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[47:54], v[94:97], v[74:77], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[102:105], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v14, 16, v0
	v_lshl_or_b32 v80, v59, 16, v15
	v_lshl_or_b32 v79, v61, 16, v60
	v_lshl_or_b32 v78, v108, 16, v107
	v_perm_b32 v0, v149, v148, 0xc0c0004
	v_perm_b32 v14, v147, v146, 0xc0c0004
	v_perm_b32 v15, v153, v152, 0xc0c0004
	v_perm_b32 v59, v151, v150, 0xc0c0004
	v_perm_b32 v60, v157, v156, 0xc0c0004
	v_perm_b32 v61, v155, v154, 0xc0c0004
	v_perm_b32 v107, v161, v160, 0xc0c0004
	v_perm_b32 v108, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[2:5], v[102:105], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v190, v185, 0xc0c0004
	v_perm_b32 v112, v204, v203, 0xc0c0004
	v_perm_b32 v113, v202, v201, 0xc0c0004
	v_perm_b32 v114, v208, v207, 0xc0c0004
	v_perm_b32 v115, v206, v195, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v212, v211, 0xc0c0004
	v_perm_b32 v133, v210, v209, 0xc0c0004
	v_perm_b32 v134, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[82:85], v[78:81], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v14, 16, v0
	v_lshl_or_b32 v84, v59, 16, v15
	v_lshl_or_b32 v83, v61, 16, v60
	v_lshl_or_b32 v82, v108, 16, v107
	v_perm_b32 v0, v188, v187, 0xc0c0004
	v_perm_b32 v14, v186, v111, 0xc0c0004
	v_perm_b32 v15, v189, v179, 0xc0c0004
	v_perm_b32 v59, v178, v177, 0xc0c0004
	v_perm_b32 v2, v193, v192, 0xc0c0004
	v_perm_b32 v3, v191, v167, 0xc0c0004
	v_perm_b32 v60, v199, v198, 0xc0c0004
	v_perm_b32 v61, v197, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[55:58], v[78:81], v[62:69] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v194, 16, v205
	v_lshl_or_b32 v100, v184, 16, v168
	v_lshl_or_b32 v99, v200, 16, v213
	v_lshl_or_b32 v98, v98, 16, v218
	v_lshl_or_b32 v109, v113, 16, v112
	v_lshl_or_b32 v108, v115, 16, v114
	v_lshl_or_b32 v107, v133, 16, v132
	v_lshl_or_b32 v106, v106, 16, v134
	v_wmma_i32_16x16x16_iu8 v[70:77], v[86:89], v[82:85], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v14, 16, v0
	v_lshl_or_b32 v4, v59, 16, v15
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v61, 16, v60
	v_wmma_i32_16x16x16_iu8 v[62:69], v[94:97], v[82:85], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[6:13], v[98:101], v[90:93], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[47:54], v[106:109], v[90:93], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[98:101], v[2:5], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[106:109], v[2:5], v[62:69] neg_lo:[1,1,0]
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
	v_or_b32_e32 v0, s33, v220
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s12
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v2, s26, v219
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v4, v45, v7
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v70, 1, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v71, v1, 1, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v3, 32, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v72, s25, v220
	s_mul_i32 s0, s33, s25
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v14, v0, s[28:31], 0 offen
	buffer_load_u16 v15, v3, s[28:31], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v3, v46, v6
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v0, v2, s[28:31], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v40, v5 :: v_dual_add_f32 v7, v42, v10
	v_dual_add_f32 v5, v44, v8 :: v_dual_add_f32 v6, v43, v9
	v_dual_add_f32 v8, v41, v11 :: v_dual_add_f32 v9, v39, v12
	v_dual_add_f32 v10, v38, v13 :: v_dual_add_f32 v11, v37, v47
	v_dual_add_f32 v12, v36, v48 :: v_dual_add_f32 v47, v34, v50
	v_dual_add_f32 v13, v35, v49 :: v_dual_add_f32 v48, v33, v51
	v_add_f32_e32 v51, v30, v54
	v_dual_add_f32 v49, v32, v52 :: v_dual_add_f32 v50, v31, v53
	v_dual_add_f32 v53, v28, v56 :: v_dual_add_f32 v52, v29, v55
	v_dual_add_f32 v55, v26, v58 :: v_dual_add_f32 v54, v27, v57
	v_dual_add_f32 v57, v24, v60 :: v_dual_add_f32 v56, v25, v59
	v_dual_add_f32 v59, v22, v62 :: v_dual_add_f32 v58, v23, v61
	v_dual_add_f32 v61, v20, v64 :: v_dual_add_f32 v60, v21, v63
	v_dual_add_f32 v63, v18, v66 :: v_dual_add_f32 v62, v19, v65
	v_dual_add_f32 v65, v16, v68 :: v_dual_add_f32 v64, v17, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v75, 0x7632 :: v_dual_add_f32 v66, v221, v69
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v67, 1, v219
	v_lshl_add_u32 v69, v1, 2, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v2, s2
	v_cndmask_b32_e64 v46, v46, v3, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v4, s2
	v_cndmask_b32_e64 v44, v44, v5, s2
	v_cndmask_b32_e64 v43, v43, v6, s2
	v_cndmask_b32_e64 v42, v42, v7, s2
	v_cndmask_b32_e64 v41, v41, v8, s2
	v_cndmask_b32_e64 v39, v39, v9, s2
	v_cndmask_b32_e64 v38, v38, v10, s2
	v_cndmask_b32_e64 v37, v37, v11, s2
	v_cndmask_b32_e64 v12, v36, v12, s2
	v_cndmask_b32_e64 v13, v35, v13, s2
	v_cndmask_b32_e64 v34, v34, v47, s2
	v_cndmask_b32_e64 v33, v33, v48, s2
	v_cndmask_b32_e64 v35, v20, v61, s2
	v_cndmask_b32_e64 v36, v19, v62, s2
	v_cndmask_b32_e64 v47, v18, v63, s2
	v_cndmask_b32_e64 v48, v17, v64, s2
	v_cndmask_b32_e64 v32, v32, v49, s2
	v_cndmask_b32_e64 v31, v31, v50, s2
	v_cndmask_b32_e64 v28, v28, v53, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v49, s0, s26, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v52, s2
	v_cndmask_b32_e64 v22, v22, v59, s2
	v_cndmask_b32_e64 v30, v30, v51, s2
	v_cndmask_b32_e64 v27, v27, v54, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v52, v49, v72, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v55, s2
	v_cndmask_b32_e64 v25, v25, v56, s2
	v_cndmask_b32_e64 v24, v24, v57, s2
	v_cndmask_b32_e64 v23, v23, v58, s2
	v_cndmask_b32_e64 v21, v21, v60, s2
	v_cndmask_b32_e64 v16, v16, v65, s2
	v_cndmask_b32_e64 v51, v221, v66, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v74, 0x5410 :: v_dual_and_b32 v73, 16, v219
	s_mov_b32 s38, s30
	s_mov_b32 s33, 0x76543210
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, s31
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v68, 5, v219
	v_and_b32_e32 v1, 28, v67
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v2, 32, v68
	v_add3_u32 v1, v69, v2, v1
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v71
	ds_load_b128 v[4:7], v71 offset:16
	ds_load_b128 v[8:11], v71 offset:512
	ds_load_b128 v[17:20], v71 offset:528
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v53, v1, v14
	v_dual_mul_f32 v1, v1, v15 :: v_dual_add_nc_u32 v50, s27, v72
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v59, v7, v14
	v_mul_f32_e32 v54, v2, v14
	v_mul_f32_e32 v55, v3, v14
	v_dual_mul_f32 v56, v4, v14 :: v_dual_mul_f32 v3, v3, v15
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v49, v49, v50, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v50, v0, v14
	v_mul_f32_e32 v57, v5, v14
	v_dual_mul_f32 v58, v6, v14 :: v_dual_mul_f32 v5, v5, v15
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v60, v8, v14 :: v_dual_mul_f32 v7, v7, v15
	v_dual_mul_f32 v61, v9, v14 :: v_dual_mul_f32 v0, v0, v15
	v_dual_mul_f32 v62, v10, v14 :: v_dual_mul_f32 v9, v9, v15
	v_dual_mul_f32 v63, v11, v14 :: v_dual_mul_f32 v2, v2, v15
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v64, v17, v14 :: v_dual_mul_f32 v11, v11, v15
	v_dual_mul_f32 v65, v18, v14 :: v_dual_mul_f32 v4, v4, v15
	v_dual_mul_f32 v66, v19, v14 :: v_dual_mul_f32 v17, v17, v15
	v_dual_mul_f32 v14, v20, v14 :: v_dual_mul_f32 v19, v19, v15
	v_dual_mul_f32 v6, v6, v15 :: v_dual_mul_f32 v45, v45, v54
	v_dual_mul_f32 v8, v8, v15 :: v_dual_mul_f32 v43, v43, v56
	v_dual_mul_f32 v10, v10, v15 :: v_dual_mul_f32 v41, v41, v58
	v_dual_mul_f32 v18, v18, v15 :: v_dual_mul_f32 v37, v37, v61
	v_mul_f32_e32 v15, v20, v15
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v20, v40, v50 :: v_dual_mul_f32 v39, v39, v59
	v_mul_f32_e32 v40, v46, v53
	v_dual_mul_f32 v14, v31, v14 :: v_dual_mul_f32 v9, v21, v9
	v_mul_f32_e32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_bfe_u32 v19, v20, 16, 1
	v_bfe_u32 v21, v40, 16, 1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v44, v44, v55 :: v_dual_mul_f32 v33, v33, v65
	v_dual_mul_f32 v42, v42, v57 :: v_dual_mul_f32 v13, v13, v63
	v_dual_mul_f32 v38, v38, v60 :: v_dual_mul_f32 v1, v29, v1
	v_dual_mul_f32 v12, v12, v62 :: v_dual_mul_f32 v3, v27, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_cmp_o_f32_e64 s0, v40, v40
	v_add3_u32 v19, v20, v19, 0x7fff
	v_add3_u32 v20, v40, v21, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v34, v34, v64 :: v_dual_mul_f32 v5, v25, v5
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v7, v23, v7
	v_dual_mul_f32 v0, v30, v0 :: v_dual_mul_f32 v11, v36, v11
	v_dual_mul_f32 v2, v28, v2 :: v_dual_mul_f32 v17, v47, v17
	v_dual_mul_f32 v4, v26, v4 :: v_dual_mul_f32 v15, v51, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v23, v44, 16, 1
	v_bfe_u32 v25, v42, 16, 1
	v_bfe_u32 v26, v41, 16, 1
	v_bfe_u32 v27, v39, 16, 1
	v_bfe_u32 v28, v38, 16, 1
	v_bfe_u32 v29, v37, 16, 1
	v_bfe_u32 v30, v12, 16, 1
	v_bfe_u32 v31, v13, 16, 1
	v_bfe_u32 v36, v33, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v24, v6
	v_mul_f32_e32 v8, v22, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v22, v45, 16, 1
	v_bfe_u32 v24, v43, 16, 1
	v_cmp_o_f32_e64 s3, v43, v43
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v37, v37
	v_cmp_o_f32_e64 s9, v12, v12
	v_cmp_o_f32_e64 s10, v13, v13
	v_cmp_o_f32_e64 s12, v33, v33
	v_add3_u32 v21, v45, v22, 0x7fff
	v_add3_u32 v22, v44, v23, 0x7fff
	v_add3_u32 v23, v43, v24, 0x7fff
	v_add3_u32 v24, v42, v25, 0x7fff
	v_add3_u32 v25, v41, v26, 0x7fff
	v_add3_u32 v26, v39, v27, 0x7fff
	v_add3_u32 v27, v38, v28, 0x7fff
	v_add3_u32 v28, v37, v29, 0x7fff
	v_add3_u32 v12, v12, v30, 0x7fff
	v_add3_u32 v13, v13, v31, 0x7fff
	v_add3_u32 v30, v33, v36, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.l, 0x7fff, v27.h, s7
	v_cndmask_b16 v23.h, 0x7fff, v28.h, s8
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s9
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s10
	v_cndmask_b16 v13.h, 0x7fff, v30.h, s12
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v35, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s1, v45, v45
	v_cmp_o_f32_e64 s4, v42, v42
	v_bfe_u32 v50, v1, 16, 1
	v_add3_u32 v29, v34, v35, 0x7fff
	v_bfe_u32 v53, v3, 16, 1
	v_bfe_u32 v54, v4, 16, 1
	v_bfe_u32 v57, v7, 16, 1
	v_bfe_u32 v59, v9, 16, 1
	v_bfe_u32 v65, v15, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v29.h, s11
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v18, v48, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v48, v0, 16, 1
	v_bfe_u32 v51, v2, 16, 1
	v_cmp_o_f32_e64 s2, v44, v44
	v_cmp_o_f32_e64 s5, v41, v41
	v_cmp_o_f32_e64 s6, v39, v39
	v_cmp_o_f32_e64 s15, v0, v0
	v_cmp_o_f32_e64 s16, v1, v1
	v_cmp_o_f32_e64 s18, v3, v3
	v_cmp_o_f32_e64 s19, v4, v4
	v_bfe_u32 v55, v5, 16, 1
	v_cmp_o_f32_e64 s22, v7, v7
	v_cmp_o_f32_e64 s24, v9, v9
	v_bfe_u32 v61, v11, 16, 1
	v_cmp_o_f32_e64 s30, v15, v15
	v_add3_u32 v0, v0, v48, 0x7fff
	v_add3_u32 v1, v1, v50, 0x7fff
	v_add3_u32 v3, v3, v53, 0x7fff
	v_add3_u32 v4, v4, v54, 0x7fff
	v_add3_u32 v7, v7, v57, 0x7fff
	v_add3_u32 v9, v9, v59, 0x7fff
	v_add3_u32 v15, v15, v65, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s1
	v_cndmask_b16 v21.h, 0x7fff, v24.h, s4
	v_cmp_o_f32_e64 s17, v2, v2
	v_add3_u32 v2, v2, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v5, v5
	v_cmp_o_f32_e64 s26, v11, v11
	v_bfe_u32 v62, v17, 16, 1
	v_add3_u32 v5, v5, v55, 0x7fff
	v_add3_u32 v11, v11, v61, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s2
	v_cndmask_b16 v22.l, 0x7fff, v25.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v26.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s15
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s16
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s18
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s19
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s22
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s24
	v_cndmask_b16 v7.h, 0x7fff, v15.h, s30
	v_cndmask_b32_e32 v9, v19, v21, vcc_lo
	v_bfe_u32 v56, v6, 16, 1
	v_cndmask_b32_e32 v15, v13, v23, vcc_lo
	v_cndmask_b32_e32 v13, v23, v13, vcc_lo
	v_bfe_u32 v63, v18, 16, 1
	v_bfe_u32 v46, v32, 16, 1
	v_bfe_u32 v47, v14, 16, 1
	v_cmp_o_f32_e64 s21, v6, v6
	v_bfe_u32 v60, v10, 16, 1
	v_cmp_o_f32_e64 s27, v17, v17
	v_cmp_o_f32_e64 s28, v18, v18
	v_add3_u32 v6, v6, v56, 0x7fff
	v_add3_u32 v17, v17, v62, 0x7fff
	v_add3_u32 v18, v18, v63, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s17
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s20
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s26
	v_cndmask_b32_e32 v11, v20, v22, vcc_lo
	v_bfe_u32 v58, v8, 16, 1
	v_cmp_o_f32_e64 s13, v32, v32
	v_cmp_o_f32_e64 s14, v14, v14
	v_cmp_o_f32_e64 s23, v8, v8
	v_cmp_o_f32_e64 s25, v10, v10
	v_add3_u32 v31, v32, v46, 0x7fff
	v_add3_u32 v14, v14, v47, 0x7fff
	v_add3_u32 v8, v8, v58, 0x7fff
	v_add3_u32 v10, v10, v60, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s21
	v_cndmask_b16 v6.l, 0x7fff, v17.h, s27
	v_cndmask_b16 v6.h, 0x7fff, v18.h, s28
	v_cndmask_b32_e32 v17, 0x1054, v74, vcc_lo
	v_bfe_u32 v64, v16, 16, 1
	v_cndmask_b32_e32 v18, 0x3276, v75, vcc_lo
	v_cmp_o_f32_e64 s29, v16, v16
	v_cndmask_b16 v14.l, 0x7fff, v31.h, s13
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s14
	v_add3_u32 v16, v16, v64, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s23
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s25
	v_dual_cndmask_b32 v8, v21, v19 :: v_dual_cndmask_b32 v19, v3, v1
	v_dual_cndmask_b32 v10, v22, v20 :: v_dual_cndmask_b32 v1, v1, v3
	v_lshl_or_b32 v3, v18, 8, v18
	v_cndmask_b16 v7.l, 0x7fff, v16.h, s29
	v_cndmask_b32_e32 v16, v14, v12, vcc_lo
	v_cndmask_b32_e32 v12, v12, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v14, v2, v0 :: v_dual_and_b32 v3, 0x760076, v3
	v_dual_cndmask_b32 v18, v7, v5 :: v_dual_cndmask_b32 v5, v5, v7
	v_permlanex16_b32 v7, v11, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e32 v0, v0, v2, vcc_lo
	v_lshl_or_b32 v2, v17, 8, v17
	v_dual_cndmask_b32 v17, v6, v4 :: v_dual_cndmask_b32 v4, v4, v6
	v_permlanex16_b32 v6, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x7060706, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v2, 0x540054, v2
	v_permlanex16_b32 v9, v13, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v0, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v1, s33, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v22, v4, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v5, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v6, v8, v21
	v_perm_b32 v3, v7, v10, v21
	v_and_b32_e32 v20, 0x5040504, v2
	v_perm_b32 v5, v9, v15, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v0, v6, v8, v20
	v_perm_b32 v2, v7, v10, v20
	v_perm_b32 v4, v9, v15, v20
	v_perm_b32 v6, v11, v16, v20
	v_perm_b32 v7, v11, v16, v21
	v_perm_b32 v8, v12, v14, v20
	v_perm_b32 v9, v12, v14, v21
	v_perm_b32 v10, v13, v19, v20
	v_perm_b32 v11, v13, v19, v21
	v_perm_b32 v12, v22, v17, v20
	v_perm_b32 v13, v22, v17, v21
	v_perm_b32 v14, v23, v18, v20
	v_perm_b32 v15, v23, v18, v21
	s_clause 0x3
	buffer_store_b128 v[0:3], v52, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v52, s[36:39], 0 offen offset:256
	buffer_store_b128 v[8:11], v49, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v49, s[36:39], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 56
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18928
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 56
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 56
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
