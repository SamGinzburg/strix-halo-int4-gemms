	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v3, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 0xc0, v2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v6, 2, v12
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
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
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s23, s19
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v4, s10, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[9:10], null, s10, v2, v[1:2]
	v_mad_u64_u32 v[10:11], null, s10, v5, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v37, s10, 6, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v38, s10, 7, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b32 s26, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 0x7f
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s28, s26, s10
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s24, s2, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s24, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v39, v4, v6, s2
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s28, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s4, v9
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s31, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s31, 0x80
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v6, s4, v10
	v_add_nc_u32_e32 v4, s4, v37
	v_add_nc_u32_e32 v5, s4, v38
	s_addk_i32 s4, 0x80
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s31, v39
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v2, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, 0x80, v2
	v_add_nc_u32_e32 v8, s4, v37
	v_add_nc_u32_e32 v11, s4, v38
	v_add_nc_u32_e32 v25, 0x80, v6
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v17, 0x80000000, v5, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v26, 0x80000000, v7, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v14, 0x80000000, v4, s3
	v_cndmask_b32_e64 v21, 0x80000000, v6, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v40, 0x80000000, v25, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v1, v1, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[4:7], v13, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v14, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v47, v26, s[16:19], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v2, s[20:23], 0 offen
	buffer_load_b128 v[29:32], v8, s[20:23], 0 offen
	buffer_load_b128 v[33:36], v11, s[20:23], 0 offen
	buffer_load_b128 v[43:46], v40, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v8, 2, v0
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x17f
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 48, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v40, 48, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v41, v8, v2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v42, v3, v40
	v_lshlrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v40, 5, v0
	v_lshlrev_b32_e32 v2, 6, v12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v8, 0, v41
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v48, 0, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v8, v1 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v48, v[4:7]
	s_waitcnt vmcnt(7)
	ds_store_b128 v48, v[13:16] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v48, v[17:20] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v48, v[21:24] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v8, v47 offset:33792
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v48, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[43:46] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v4, 48, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v5, 0x1c00, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v29, v2, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v33, v4, v5, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v32, 16, v29
	v_xor_b32_e32 v31, 32, v29
	v_xor_b32_e32 v30, 48, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v34, 16, v33
	v_xor_b32_e32 v35, 32, v33
	v_xor_b32_e32 v36, 48, v33
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s27, 0, 0x8400
	s_add_i32 s29, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s33, s5, 7
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 48, v3
	v_and_b32_e32 v3, 0x1c00, v40
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v29, v2, v1
	v_or3_b32 v33, v1, v3, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v2, s5
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v32, 16, v29
	v_xor_b32_e32 v31, 32, v29
	v_xor_b32_e32 v30, 48, v29
	v_xor_b32_e32 v34, 16, v33
	v_xor_b32_e32 v35, 32, v33
	v_xor_b32_e32 v36, 48, v33
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v15, 0
	s_addk_i32 s31, 0x80
	s_add_i32 s30, 0, 0x8000
	s_add_i32 s27, 0, 0x8400
	s_add_i32 s29, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s34, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s5, 7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s8, s34, 1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s31, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s7, s6, s28
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v43, s6, v39
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v44, s7, v9
	v_add_nc_u32_e32 v45, s7, v37
	v_add_nc_u32_e32 v46, s7, v38
	v_add_nc_u32_e32 v47, s7, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v119, v43, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[59:62], v44, s[20:23], 0 offen
	buffer_load_b128 v[63:66], v45, s[20:23], 0 offen
	buffer_load_b128 v[67:70], v46, s[20:23], 0 offen
	buffer_load_b128 v[71:74], v47, s[20:23], 0 offen
	s_mov_b32 s6, s30
	s_mov_b32 s7, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v43, s6, v29
	v_add_nc_u32_e32 v44, s6, v32
	v_add_nc_u32_e32 v45, s6, v31
	v_add_nc_u32_e32 v46, s6, v30
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v47, s7, v33
	v_add_nc_u32_e32 v48, s7, v34
	v_add_nc_u32_e32 v49, s7, v35
	v_add_nc_u32_e32 v50, s7, v36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[75:78], v43
	ds_load_b128 v[79:82], v44
	ds_load_b128 v[83:86], v45
	ds_load_b128 v[87:90], v46
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[51:54], v47
	ds_load_b128 v[91:94], v47 offset:8192
	ds_load_b128 v[95:98], v48
	ds_load_b128 v[99:102], v48 offset:8192
	ds_load_b128 v[103:106], v49
	ds_load_b128 v[107:110], v49 offset:8192
	ds_load_b128 v[111:114], v50
	ds_load_b128 v[115:118], v50 offset:8192
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s8, 2
	s_mov_b32 s4, s29
	s_cselect_b32 s34, s8, 0
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s7, s34, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s8, s34, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s7, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s29, s8, 0
	s_mov_b32 s30, s27
	v_add_nc_u32_e32 v121, s29, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s27, s7, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[51:54], v[75:78], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[91:94], v[75:78], v[1:8] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[95:98], v[79:82], v[43:50] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[51:58], v[99:102], v[79:82], v[51:58] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[43:50], v[103:106], v[83:86], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[83:86], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[111:114], v[87:90], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[87:90], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v17, v55 :: v_dual_add_nc_u32 v120, s7, v41
	v_dual_add_f32 v13, v13, v43 :: v_dual_add_f32 v28, v28, v44
	v_dual_add_f32 v27, v27, v45 :: v_dual_add_f32 v26, v26, v46
	v_dual_add_f32 v25, v25, v47 :: v_dual_add_f32 v24, v24, v48
	v_dual_add_f32 v23, v23, v49 :: v_dual_add_f32 v22, v22, v50
	v_dual_add_f32 v21, v21, v51 :: v_dual_add_f32 v20, v20, v52
	v_dual_add_f32 v19, v19, v53 :: v_dual_add_f32 v18, v18, v54
	v_dual_add_f32 v16, v16, v56 :: v_dual_add_f32 v15, v15, v57
	v_add_f32_e32 v14, v14, v58
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v120, v119 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v121, v[59:62]
	s_waitcnt vmcnt(2)
	ds_store_b128 v121, v[63:66] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v121, v[67:70] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v121, v[71:74] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v40
.LBB0_7:                                ; %Flow112
	v_and_b32_e32 v2, 0xf0, v0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v3, s4, v35
	v_add_nc_u32_e32 v37, s4, v36
	v_add_nc_u32_e32 v4, s4, v34
	v_add_nc_u32_e32 v5, s4, v33
	s_mov_b32 s4, 0
	ds_load_b128 v[45:48], v3 offset:8192
	ds_load_b128 v[49:52], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s30, v32
	v_add_nc_u32_e32 v6, s30, v29
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[53:56], v5 offset:8192
	ds_load_b128 v[57:60], v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[61:64], v3
	ds_load_b128 v[65:68], v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[69:72], v4 offset:8192
	ds_load_b128 v[73:76], v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v5, s30, v31
	v_add_nc_u32_e32 v3, s30, v30
	ds_load_b128 v[77:80], v5
	ds_load_b128 v[81:84], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s4 :: v_dual_mov_b32 v4, s5
	v_dual_mov_b32 v5, s6 :: v_dual_mov_b32 v6, s7
	v_dual_mov_b32 v7, s8 :: v_dual_mov_b32 v8, s9
	v_dual_mov_b32 v9, s10 :: v_dual_mov_b32 v10, s11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[85:88], v37
	ds_load_b128 v[89:92], v37 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[65:68], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[73:76], v[61:64], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[49:52], v[77:80], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[85:88], v[81:84], v[37:44] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v24, v24, v42
	v_add_f32_e32 v22, v22, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[3:10], v[53:56], v[65:68], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[3:10], v[69:72], v[61:64], v[3:10] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[3:10], v[45:48], v[77:80], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[89:92], v[81:84], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v27, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v25, v25, v41 :: v_dual_add_f32 v20, v20, v4
	v_dual_add_f32 v19, v19, v5 :: v_dual_add_f32 v18, v18, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v21, v21, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v7, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v23, v23, v43 :: v_dual_add_f32 v16, v16, v4
	v_add_f32_e32 v15, v15, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v17, v17, v3 :: v_dual_add_f32 v14, v14, v6
	v_add_f32_e32 v13, v13, v7
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
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
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v3, s29, v35
	v_add_nc_u32_e32 v6, s29, v33
	ds_load_b128 v[37:40], v3 offset:8192
	ds_load_b128 v[41:44], v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s27, v32
	v_add_nc_u32_e32 v7, s27, v29
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v5, s29, v34
	ds_load_b128 v[45:48], v6 offset:8192
	ds_load_b128 v[49:52], v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[53:56], v3
	ds_load_b128 v[57:60], v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[61:64], v5 offset:8192
	ds_load_b128 v[65:68], v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, s27, v31
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v4, s29, v36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s27, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v36, s11 :: v_dual_mov_b32 v31, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[69:72], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v35, s10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[73:76], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v34, s9 :: v_dual_mov_b32 v33, s8
	v_mov_b32_e32 v32, s7
	v_dual_mov_b32 v30, s5 :: v_dual_mov_b32 v29, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[77:80], v4
	ds_load_b128 v[81:84], v4 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[49:52], v[57:60], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[45:48], v[57:60], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[65:68], v[53:56], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[61:64], v[53:56], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[41:44], v[69:72], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[37:40], v[69:72], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[77:80], v[73:76], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[81:84], v[73:76], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v37, v29
	v_cvt_f32_i32_e32 v38, v30
	v_cvt_f32_i32_e32 v39, v31
	v_cvt_f32_i32_e32 v40, v32
	v_cvt_f32_i32_e32 v41, v33
	v_cvt_f32_i32_e32 v42, v34
	v_cvt_f32_i32_e32 v43, v35
	v_cvt_f32_i32_e32 v44, v36
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v29, s24, v12
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v28, v4 :: v_dual_lshlrev_b32 v29, 1, v29
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v12, s26, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v3, v13, v3
	v_dual_add_f32 v5, v27, v5 :: v_dual_add_f32 v6, v26, v6
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v30, 1, v12
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v31, v21, v37 :: v_dual_add_f32 v32, v20, v38
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v33, v19, v39 :: v_dual_add_f32 v34, v18, v40
	v_dual_add_f32 v35, v17, v41 :: v_dual_add_f32 v36, v16, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v4, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v1, 32, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v37, v15, v43 :: v_dual_add_f32 v38, v14, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v13, v3, s2
	v_cndmask_b32_e64 v20, v20, v32, s2
	v_cndmask_b32_e64 v32, v17, v35, s2
	v_cndmask_b32_e64 v21, v21, v31, s2
	v_cndmask_b32_e64 v31, v18, v34, s2
	v_cndmask_b32_e64 v34, v15, v37, s2
	v_cndmask_b32_e64 v27, v27, v5, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v25, v7 :: v_dual_add_f32 v8, v24, v8
	v_dual_add_f32 v9, v23, v9 :: v_dual_add_f32 v10, v22, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v33, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v25, v25, v7, s2
	v_cndmask_b32_e64 v24, v24, v8, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v23, v23, v9, s2
	v_cndmask_b32_e64 v22, v22, v10, s2
	v_cndmask_b32_e64 v33, v16, v36, s2
	v_cndmask_b32_e64 v36, v14, v38, s2
	s_mov_b32 s2, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v39, 2, v2
	v_and_b32_e32 v11, 28, v11
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v40, 7, v0
	v_bfe_i32 v0, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_or3_b32 v35, v39, v1, v11
	v_add_nc_u32_e32 v15, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v4, v40, 2, v2
	v_and_b32_e32 v3, 0x2040, v0
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s24, s25, v[12:13]
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_add_nc_u32_e32 v37, 0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v2, v4, v3
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v30
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v37, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v15
	ds_load_b128 v[7:10], v15 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v6, v6, v29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v6, v26, v6 :: v_dual_mul_f32 v5, v5, v29
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v16, v40, 10, v2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v10, v10, v29
	ds_load_b128 v[11:14], v15 offset:512
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v3, v3, v29 :: v_dual_add_nc_u32 v30, 0, v16
	v_mul_f32_e32 v7, v7, v29
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v38, v16, 4, 0
	v_xad_u32 v39, v16, 8, 0
	v_xad_u32 v40, v16, 12, 0
	v_xad_u32 v42, v16, 16, 0
	v_xad_u32 v43, v16, 20, 0
	v_xad_u32 v44, v16, 24, 0
	v_xad_u32 v45, v16, 28, 0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[15:18], v15 offset:528
	v_mul_f32_e32 v4, v4, v29
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v1, vcc_lo, s0, v1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v41, v3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v8, v8, v29
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v11, v11, v29 :: v_dual_mul_f32 v10, v22, v10
	v_mul_f32_e32 v12, v12, v29
	v_mul_f32_e32 v13, v13, v29
	v_mul_f32_e32 v14, v14, v29
	v_dual_mul_f32 v9, v9, v29 :: v_dual_mul_f32 v8, v24, v8
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v11, v21, v11 :: v_dual_mul_f32 v4, v28, v4
	v_dual_mul_f32 v12, v20, v12 :: v_dual_mul_f32 v7, v25, v7
	v_mul_f32_e32 v13, v19, v13
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v16, v16, v29
	v_mul_f32_e32 v15, v15, v29
	v_dual_mul_f32 v17, v17, v29 :: v_dual_mul_f32 v14, v31, v14
	v_mul_f32_e32 v18, v18, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v5, v27, v5 :: v_dual_mul_f32 v16, v33, v16
	v_mul_f32_e32 v15, v32, v15
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v9, v23, v9
	v_dual_mul_f32 v17, v34, v17 :: v_dual_mul_f32 v18, v36, v18
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b32 v30, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v38, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v39, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v40, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v42, v7, v15 offset1:2
	ds_store_2addr_stride64_b32 v43, v8, v16 offset1:2
	ds_store_2addr_stride64_b32 v44, v9, v17 offset1:2
	ds_store_2addr_stride64_b32 v45, v10, v18 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v4, v[1:2], off
	v_xad_u32 v3, 0x404, v35, 0
	v_xad_u32 v5, 0x808, v35, 0
	v_xad_u32 v6, 0xc0c, v35, 0
	v_xad_u32 v7, 0x1010, v35, 0
	v_xad_u32 v8, 0x1414, v35, 0
	v_xad_u32 v9, 0x1818, v35, 0
	v_xad_u32 v10, 0x1c1c, v35, 0
	ds_load_b32 v20, v37
	ds_load_b32 v19, v3
	ds_load_b32 v18, v5
	ds_load_b32 v17, v6
	ds_load_b32 v16, v7
	ds_load_b32 v15, v8
	ds_load_b32 v14, v9
	ds_load_b32 v13, v10
	v_xad_u32 v3, 0x2040, v35, 0
	v_xad_u32 v5, 0x2444, v35, 0
	v_xad_u32 v6, 0x2848, v35, 0
	v_xad_u32 v7, 0x2c4c, v35, 0
	v_xad_u32 v8, 0x3050, v35, 0
	v_xad_u32 v21, 0x3454, v35, 0
	v_xad_u32 v22, 0x3858, v35, 0
	v_xad_u32 v23, 0x3c5c, v35, 0
	ds_load_b32 v12, v3
	ds_load_b32 v11, v5
	ds_load_b32 v10, v6
	ds_load_b32 v9, v7
	ds_load_b32 v8, v8
	ds_load_b32 v7, v21
	ds_load_b32 v6, v22
	ds_load_b32 v5, v23
.LBB0_12:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v3, v4, v20
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_ashr_i32 s3, s25, 31
	s_mov_b32 s2, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 2
	v_add_co_u32 v1, vcc_lo, v1, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s3, v2, vcc_lo
	s_mov_b32 s2, 0
	global_load_b32 v4, v[1:2], off
.LBB0_14:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v3, v4, v19
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s25, 1, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s0, v1
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_16:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v3, v4, v18
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 3, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_18:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v3, v4, v17
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s25, 2, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s0, v1
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_20:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v3, v4, v16
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 5, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_22:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v3, v4, v15
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 6, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_24:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v3, v4, v14
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 7, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_26:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v3, v4, v13
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s25, 3, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s0, v1
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_28:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v3, v4, v12
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 9, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_30:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v3, v4, v11
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 10, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_32:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v3, v4, v10
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 11, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_34:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v3, v4, v9
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 12, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_36:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v8
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 13, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_38:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v3, v4, v7
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s25, 14, v[0:1]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_40:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v3, v4, v6
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 15, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v3, v[0:1], off
.LBB0_42:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 122
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5592
; TotalNumSgprs: 37
; NumVgprs: 122
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 241
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     122
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
