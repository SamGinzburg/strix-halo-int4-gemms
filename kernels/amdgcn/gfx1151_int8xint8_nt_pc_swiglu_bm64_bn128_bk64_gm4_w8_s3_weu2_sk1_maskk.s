	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v10, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v97, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v98, 0x60, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s26, s22
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s10, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s10
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s11, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s7, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[3:4], null, s33, v2, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v6, s33, 6, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s4
	s_mul_hi_u32 s4, s5, s7
	s_xor_b32 s7, s2, s11
	s_mul_i32 s8, s4, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s4, 1
	s_sub_i32 s9, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s9, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s8, s4, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s6, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s8, s7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s9, s33, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s4, s3, s11
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s4
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v4
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s10
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s3, s14, s15
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s9, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[4:5], null, s28, s33, v[3:4]
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s14, s33
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s5, s3, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s31, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, s6
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	s_add_i32 s5, s5, s6
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v8, s6, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s31
	s_cmpk_gt_i32 s9, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s4, v3
	v_add_nc_u32_e32 v7, s4, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s4, s6, 64
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v3, s5, v3
	v_add_nc_u32_e32 v6, s5, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v14, s4, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v18, 0x80000000, v7 :: v_dual_add_nc_u32 v11, 64, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v26, 0x80000000, v6 :: v_dual_add_nc_u32 v13, 64, v3
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v30, 64, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v14
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s4, v4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[14:17], v5, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v3, s[24:27], 0 offen
	buffer_load_b128 v[26:29], v26, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_add_nc_u32 v12, 64, v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v4, 0x80000000, v11 :: v_dual_cndmask_b32 v11, 0x80000000, v13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[6:9], v8, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v5, 0x80000000, v12 :: v_dual_cndmask_b32 v12, 0x80000000, v30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[30:33], v3, s[20:23], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[34:37], v4, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v5, s[24:27], 0 offen
	buffer_load_b128 v[42:45], v11, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v12, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v4, 5, v98
	s_mov_b32 s5, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v13, v10, v3
	v_lshlrev_b32_e32 v3, 6, v97
	v_add_nc_u32_e32 v10, 0, v13
	s_waitcnt vmcnt(5)
	ds_store_b128 v10, v[6:9] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[18:21] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v10, v[22:25] offset:16384
	ds_store_b128 v10, v[26:29] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v10, v[30:33] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v10, v[34:37] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v10, v[38:41] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v10, v[42:45] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v10, v[46:49] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v6, 48, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v107, 0x430, v5, v3
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v99, v4, v6, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v108, 16, v107
	v_xor_b32_e32 v109, 32, v107
	v_xor_b32_e32 v110, 48, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v100, 16, v99
	v_xor_b32_e32 v102, 32, v99
	v_xor_b32_e32 v105, 48, v99
	v_or_b32_e32 v101, 0x1000, v99
	v_or_b32_e32 v103, 0x1000, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v104, 0x1000, v102
	v_or_b32_e32 v106, 0x1000, v105
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr106
.LBB0_3:                                ; %Flow322
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v6, 48, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s8, 7
	v_and_or_b32 v107, 0x430, v5, v3
	s_lshl_b32 s5, s7, 7
	s_delay_alu instid0(VALU_DEP_2)
	v_or3_b32 v99, v4, v6, v3
	v_add3_u32 v3, s15, s1, v2
	v_or_b32_e32 v4, s1, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s9, 6
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v15, s6, v1, 0x80
	s_mov_b32 s6, s4
	v_subrev_nc_u32_e32 v3, s5, v3
	v_subrev_nc_u32_e32 v4, s5, v4
	s_mov_b32 s5, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_or_b32_e32 v6, 64, v4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v5, 64, v3
	v_add_nc_u32_e32 v1, s28, v2
	v_xor_b32_e32 v100, 16, v99
	v_xor_b32_e32 v102, 32, v99
	v_xor_b32_e32 v105, 48, v99
	v_mul_lo_u32 v14, s33, v5
	v_mul_lo_u32 v16, s33, v3
	v_mul_lo_u32 v17, s33, v6
	v_mul_lo_u32 v18, s33, v4
	v_mul_lo_u32 v19, s33, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_xor_b32_e32 v108, 16, v107
	v_xor_b32_e32 v109, 32, v107
	v_xor_b32_e32 v110, 48, v107
	v_or_b32_e32 v101, 0x1000, v99
	v_or_b32_e32 v103, 0x1000, v100
	v_or_b32_e32 v104, 0x1000, v102
	v_or_b32_e32 v106, 0x1000, v105
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	s_add_i32 s0, s0, -2
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s29, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, v19, v15
	v_add_nc_u32_e32 v32, s35, v107
	v_add_nc_u32_e32 v111, s35, v108
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v127, s4, v99
	v_add_nc_u32_e32 v128, s4, v100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v143, s34, v100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[167:170], v32 offset:2048
	ds_load_b128 v[171:174], v111 offset:2048
	ds_load_b128 v[28:31], v32
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[119:122], v127
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[151:154], v111
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[123:126], v128
	ds_load_b128 v[135:138], v127 offset:4096
	ds_load_b128 v[139:142], v128 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v32, s34, v99
	ds_load_b128 v[159:162], v32
	ds_load_b128 v[163:166], v143
	ds_load_b128 v[175:178], v32 offset:4096
	ds_load_b128 v[179:182], v143 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v32, s35, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[119:122], v[28:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[119:122], v[167:170], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[135:138], v[167:170], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[123:126], v[151:154], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[123:126], v[171:174], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[135:138], v[28:31], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[139:142], v[171:174], v[127:134] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[175:178], v[28:31], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[119:126], v[139:142], v[151:154], v[119:126] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[28:31], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[179:182], v[151:154], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[151:154], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[159:162], v[167:170], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[163:166], v[171:174], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[175:178], v[167:170], v[1:8] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v175, s4, v102
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[28:31], v32
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v175
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[159:166], v[179:182], v[171:174], v[159:166] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v32 offset:2048
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v32, s34, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[167:170], v[28:31], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[167:170], v[171:174], v[111:118] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v175 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[175:178], v32 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[28:31], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[167:170], v[171:174], v[127:134] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[167:170], v32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v32, s35, v110
	s_mov_b32 s35, s30
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[175:178], v[28:31], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[175:178], v[171:174], v[159:166] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v175, s4, v105
	s_mov_b32 s4, s29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[28:31], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[171:174], v[151:158] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[28:31], v32
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v175
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v32 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[167:170], v[28:31], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[167:170], v[171:174], v[111:118] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v175 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v87, v87, v20 :: v_dual_add_f32 v88, v88, v21
	v_dual_add_f32 v83, v83, v22 :: v_dual_add_f32 v84, v84, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v73, v73, v24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[28:31], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[167:170], v[171:174], v[127:134] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v74, v74, v25
	v_dual_add_f32 v66, v66, v27 :: v_dual_add_f32 v65, v65, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v32, s34, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v96, v96, v112 :: v_dual_add_f32 v95, v95, v111
	v_dual_add_f32 v92, v92, v114 :: v_dual_add_f32 v91, v91, v113
	v_add_f32_e32 v41, v41, v123
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[167:170], v32
	ds_load_b128 v[175:178], v32 offset:4096
	s_mov_b32 s34, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s5, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s5, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[28:31], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[175:178], v[28:31], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[167:170], v[171:174], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[175:178], v[171:174], v[159:166] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v29, v136
	v_cvt_f32_i32_e32 v136, v141
	v_cvt_f32_i32_e32 v141, v146
	v_cvt_f32_i32_e32 v146, v151
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v20, v18, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v28, v135
	v_cvt_f32_i32_e32 v135, v140
	v_cvt_f32_i32_e32 v140, v145
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v93, v93, v146
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_add_nc_u32 v21, v17, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v145, v150
	v_cvt_f32_i32_e32 v150, v155
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v22, v16, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v32, v139
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v24, 0x80000000, v21 :: v_dual_add_nc_u32 v23, v14, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v30, v137
	v_cvt_f32_i32_e32 v31, v138
	v_cvt_f32_i32_e32 v137, v142
	v_cvt_f32_i32_e32 v142, v147
	v_cvt_f32_i32_e32 v147, v152
	v_cvt_f32_i32_e32 v152, v157
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v86, v86, v29 :: v_dual_add_f32 v85, v85, v28
	v_add_f32_e32 v79, v79, v150
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v28, 0x80000000, v22 :: v_dual_add_f32 v71, v71, v152
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v139, v144
	v_cvt_f32_i32_e32 v144, v149
	v_cvt_f32_i32_e32 v149, v154
	v_cvt_f32_i32_e32 v154, v159
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v78, v78, v135 :: v_dual_add_f32 v77, v77, v32
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e32 v32, 0x80000000, v23, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[20:23], v20, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v24, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v82, v82, v31 :: v_dual_add_f32 v81, v81, v30
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	buffer_load_b128 v[28:31], v28, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v63, v63, v154
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	buffer_load_b128 v[111:114], v32, s[24:27], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v138, v143
	v_cvt_f32_i32_e32 v143, v148
	v_cvt_f32_i32_e32 v148, v153
	v_cvt_f32_i32_e32 v151, v156
	v_cvt_f32_i32_e32 v153, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v155, v160
	v_cvt_f32_i32_e32 v156, v161
	v_cvt_f32_i32_e32 v157, v162
	v_cvt_f32_i32_e32 v158, v163
	v_cvt_f32_i32_e32 v159, v164
	v_cvt_f32_i32_e32 v160, v165
	v_cvt_f32_i32_e32 v161, v166
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s5, 12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v58, v58, v120
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s6, s1, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v57, v57, v119
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s29, s6, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v50, v50, v122 :: v_dual_add_f32 v49, v49, v121
	v_add_f32_e32 v42, v42, v124
	v_dual_add_f32 v34, v34, v126 :: v_dual_add_f32 v33, v33, v125
	v_dual_add_f32 v76, v76, v116 :: v_dual_add_f32 v75, v75, v115
	v_dual_add_f32 v68, v68, v118 :: v_dual_add_f32 v67, v67, v117
	v_dual_add_f32 v60, v60, v128 :: v_dual_add_f32 v59, v59, v127
	v_dual_add_f32 v52, v52, v130 :: v_dual_add_f32 v51, v51, v129
	v_dual_add_f32 v44, v44, v132 :: v_dual_add_f32 v43, v43, v131
	v_dual_add_f32 v36, v36, v134 :: v_dual_add_f32 v35, v35, v133
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v70, v70, v137 :: v_dual_add_f32 v69, v69, v136
	v_dual_add_f32 v62, v62, v139 :: v_dual_add_f32 v61, v61, v138
	v_dual_add_f32 v54, v54, v141 :: v_dual_add_f32 v53, v53, v140
	v_dual_add_f32 v46, v46, v143 :: v_dual_add_f32 v45, v45, v142
	v_dual_add_f32 v38, v38, v145 :: v_dual_add_f32 v37, v37, v144
	v_dual_add_f32 v94, v94, v147 :: v_dual_add_f32 v89, v89, v148
	v_dual_add_f32 v90, v90, v149 :: v_dual_add_f32 v55, v55, v156
	v_dual_add_f32 v80, v80, v151 :: v_dual_add_f32 v47, v47, v158
	v_dual_add_f32 v72, v72, v153 :: v_dual_add_nc_u32 v15, 64, v15
	v_dual_add_f32 v64, v64, v155 :: v_dual_add_f32 v39, v39, v160
	v_add_f32_e32 v56, v56, v157
	v_dual_add_f32 v48, v48, v159 :: v_dual_add_nc_u32 v115, s29, v13
	v_add_f32_e32 v40, v40, v161
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v32, s6, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s0, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s30, s6, 0x8000
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s1, s29, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s0, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v32, v[9:12] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v115, v[20:23]
	s_waitcnt vmcnt(2)
	ds_store_b128 v115, v[24:27] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v115, v[28:31] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v115, v[111:114] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s5, s4
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v85, 0
	s_add_i32 s35, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s29, 0, 0x2000
	s_add_i32 s34, 0, 0x4000
	v_mov_b32_e32 v86, v85
	v_mov_b32_e32 v77, v85
	v_mov_b32_e32 v73, v85
	v_mov_b32_e32 v81, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v83, v85 :: v_dual_mov_b32 v84, v86
	v_dual_mov_b32 v88, v86 :: v_dual_mov_b32 v87, v85
	v_mov_b32_e32 v78, v86
	v_mov_b32_e32 v74, v86
	v_dual_mov_b32 v82, v86 :: v_dual_mov_b32 v69, v85
	v_dual_mov_b32 v70, v86 :: v_dual_mov_b32 v65, v85
	v_dual_mov_b32 v66, v86 :: v_dual_mov_b32 v61, v85
	v_dual_mov_b32 v62, v86 :: v_dual_mov_b32 v57, v85
	v_dual_mov_b32 v58, v86 :: v_dual_mov_b32 v45, v85
	v_dual_mov_b32 v46, v86 :: v_dual_mov_b32 v41, v85
	v_dual_mov_b32 v42, v86 :: v_dual_mov_b32 v53, v85
	v_dual_mov_b32 v54, v86 :: v_dual_mov_b32 v49, v85
	v_dual_mov_b32 v50, v86 :: v_dual_mov_b32 v37, v85
	v_dual_mov_b32 v38, v86 :: v_dual_mov_b32 v33, v85
	v_mov_b32_e32 v34, v86
	v_dual_mov_b32 v94, v86 :: v_dual_mov_b32 v93, v85
	v_dual_mov_b32 v96, v86 :: v_dual_mov_b32 v95, v85
	v_dual_mov_b32 v79, v85 :: v_dual_mov_b32 v80, v86
	v_dual_mov_b32 v75, v85 :: v_dual_mov_b32 v76, v86
	v_dual_mov_b32 v90, v86 :: v_dual_mov_b32 v89, v85
	v_dual_mov_b32 v92, v86 :: v_dual_mov_b32 v91, v85
	v_dual_mov_b32 v71, v85 :: v_dual_mov_b32 v72, v86
	v_dual_mov_b32 v67, v85 :: v_dual_mov_b32 v68, v86
	v_dual_mov_b32 v63, v85 :: v_dual_mov_b32 v64, v86
	v_dual_mov_b32 v59, v85 :: v_dual_mov_b32 v60, v86
	v_dual_mov_b32 v47, v85 :: v_dual_mov_b32 v48, v86
	v_dual_mov_b32 v43, v85 :: v_dual_mov_b32 v44, v86
	v_dual_mov_b32 v55, v85 :: v_dual_mov_b32 v56, v86
	v_dual_mov_b32 v51, v85 :: v_dual_mov_b32 v52, v86
	v_dual_mov_b32 v39, v85 :: v_dual_mov_b32 v40, v86
	v_dual_mov_b32 v35, v85 :: v_dual_mov_b32 v36, v86
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s35, v107
	v_add_nc_u32_e32 v2, s35, v108
	v_add_nc_u32_e32 v3, s35, v109
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[17:20], v1 offset:2048
	v_add_nc_u32_e32 v1, s35, v110
	ds_load_b128 v[25:28], v2
	ds_load_b128 v[21:24], v2 offset:2048
	ds_load_b128 v[13:16], v3
	ds_load_b128 v[9:12], v3 offset:2048
	ds_load_b128 v[5:8], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v1 offset:2048
	v_cndmask_b32_e64 v111, 0, 1, s31
	s_and_not1_b32 vcc_lo, exec_lo, s31
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v111
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v111, s5, v101
	v_add_nc_u32_e32 v112, s5, v99
	v_add_nc_u32_e32 v115, s5, v103
	ds_load_b128 v[143:146], v111
	ds_load_b128 v[147:150], v112
	v_add_nc_u32_e32 v111, s5, v100
	v_add_nc_u32_e32 v113, s5, v104
	ds_load_b128 v[159:162], v115
	ds_load_b128 v[163:166], v111
	v_add_nc_u32_e32 v114, s5, v102
	ds_load_b128 v[151:154], v113
	ds_load_b128 v[155:158], v114
	v_add_nc_u32_e32 v120, s5, v105
	v_add_nc_u32_e32 v119, s5, v106
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	v_dual_mov_b32 v118, s11 :: v_dual_mov_b32 v117, s10
	v_dual_mov_b32 v116, s9 :: v_dual_mov_b32 v115, s8
	v_dual_mov_b32 v114, s7 :: v_dual_mov_b32 v113, s6
	v_dual_mov_b32 v112, s5 :: v_dual_mov_b32 v111, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v120
	ds_load_b128 v[171:174], v119
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[147:150], v[29:32], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[25:28], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[155:158], v[13:16], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[5:8], v[119:126] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v124, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v121, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v74, v74, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[127:134], v[143:146], v[29:32], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[147:150], v[17:20], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[143:146], v[17:20], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[159:162], v[25:28], v[127:134] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v84, v84, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[21:24], v[135:142] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v83, v83, v121 :: v_dual_add_f32 v66, v66, v126
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[13:16], v[127:134] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v121, v125
	v_wmma_i32_16x16x16_iu8 v[111:118], v[159:162], v[21:24], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[155:158], v[9:12], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[171:174], v[5:8], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[9:12], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[1:4], v[135:142] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v122, v128
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v73, v73, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v129
	v_cvt_f32_i32_e32 v124, v132
	v_wmma_i32_16x16x16_iu8 v[111:118], v[171:174], v[1:4], v[111:118] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v58, v58, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v130
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v65, v65, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v127
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v42, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v124, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v57, v57, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v49, v49, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v136
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v138
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v41, v41, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v133
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v96, v96, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v139
	v_cvt_f32_i32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v92, v92, v122 :: v_dual_add_f32 v33, v33, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v137
	v_cvt_f32_i32_e32 v122, v140
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v95, v95, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v124, v142
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v75, v75, v123 :: v_dual_add_f32 v60, v60, v112
	v_add_f32_e32 v91, v91, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v141
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v112, v116
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v67, v67, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v59, v59, v111 :: v_dual_add_f32 v52, v52, v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v111, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v44, v44, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v112, v118
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v113
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v114, v120
	v_cvt_f32_i32_e32 v115, v119
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v76, v76, v122
	v_dual_add_f32 v68, v68, v124 :: v_dual_add_f32 v43, v43, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v88, v88, v114
	v_dual_add_f32 v36, v36, v112 :: v_dual_add_f32 v35, v35, v113
	v_add_f32_e32 v87, v87, v115
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v111, s34, v101
	v_add_nc_u32_e32 v112, s34, v99
	v_add_nc_u32_e32 v115, s34, v103
	ds_load_b128 v[143:146], v111
	ds_load_b128 v[147:150], v112
	v_add_nc_u32_e32 v111, s34, v100
	v_add_nc_u32_e32 v113, s34, v104
	ds_load_b128 v[159:162], v115
	ds_load_b128 v[163:166], v111
	v_add_nc_u32_e32 v114, s34, v102
	ds_load_b128 v[151:154], v113
	ds_load_b128 v[155:158], v114
	v_add_nc_u32_e32 v120, s34, v105
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v118, s11 :: v_dual_add_nc_u32 v119, s34, v106
	v_dual_mov_b32 v117, s10 :: v_dual_mov_b32 v116, s9
	v_dual_mov_b32 v115, s8 :: v_dual_mov_b32 v114, s7
	v_dual_mov_b32 v113, s6 :: v_dual_mov_b32 v112, s5
	v_mov_b32_e32 v111, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[167:170], v120
	ds_load_b128 v[171:174], v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[147:150], v[29:32], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[143:146], v[29:32], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[147:150], v[17:20], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[143:146], v[17:20], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[25:28], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[159:162], v[25:28], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[21:24], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[159:162], v[21:24], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[155:158], v[13:16], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[151:154], v[13:16], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[155:158], v[9:12], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[151:154], v[9:12], v[111:118] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[167:170], v[5:8], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[171:174], v[5:8], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[167:170], v[1:4], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[171:174], v[1:4], v[111:118] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v122
	v_cvt_f32_i32_e32 v2, v121
	v_cvt_f32_i32_e32 v3, v123
	v_cvt_f32_i32_e32 v5, v126
	v_cvt_f32_i32_e32 v4, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v82, v82, v1 :: v_dual_add_f32 v81, v81, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v125
	v_cvt_f32_i32_e32 v2, v128
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v77, v77, v3 :: v_dual_add_f32 v78, v78, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v129
	v_cvt_f32_i32_e32 v4, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v62, v62, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v130
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v69, v69, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v127
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v46, v46, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v54, v54, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v61, v61, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v131
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v53, v53, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v136
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v38, v38, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v138
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v45, v45, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v133
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v94, v94, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v139
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v90, v90, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v140
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v37, v37, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v137
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v93, v93, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v142
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v80, v80, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v112
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v89, v89, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v141
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v79, v79, v3 :: v_dual_add_f32 v72, v72, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v114
	v_cvt_f32_i32_e32 v4, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v71, v71, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v64, v64, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v116
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v70, v70, v5
	v_dual_add_f32 v56, v56, v3 :: v_dual_add_f32 v63, v63, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v115
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v48, v48, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v118
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v55, v55, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v117
	v_cvt_f32_i32_e32 v4, v120
	v_cvt_f32_i32_e32 v5, v119
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v47, v47, v1 :: v_dual_add_f32 v40, v40, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v39, v39, v3 :: v_dual_add_f32 v86, v86, v4
	v_add_f32_e32 v85, v85, v5
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v1, s30, v107
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s30, v109
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v2, s30, v108
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v4, s30, v110
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[21:24], v1 offset:2048
	ds_load_b128 v[17:20], v2
	ds_load_b128 v[5:8], v2 offset:2048
	v_mov_b32_e32 v108, 0
	ds_load_b128 v[25:28], v3
	ds_load_b128 v[13:16], v3 offset:2048
	ds_load_b128 v[9:12], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4 offset:2048
	v_cndmask_b32_e64 v107, 0, 1, s2
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v112, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v107
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v147, 0
	v_mov_b32_e32 v149, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
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
	v_add_nc_u32_e32 v118, s29, v104
	v_add_nc_u32_e32 v120, s29, v103
	v_add_nc_u32_e32 v107, s29, v101
	v_add_nc_u32_e32 v119, s29, v102
	v_add_nc_u32_e32 v121, s29, v100
	v_add_nc_u32_e32 v112, s29, v99
	v_add_nc_u32_e32 v117, s29, v105
	ds_load_b128 v[151:154], v118
	ds_load_b128 v[155:158], v119
	ds_load_b128 v[159:162], v120
	ds_load_b128 v[163:166], v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v126, s11
	v_dual_mov_b32 v124, s9 :: v_dual_mov_b32 v123, s8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[107:110], v107
	ds_load_b128 v[112:115], v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v125, s10 :: v_dual_add_nc_u32 v116, s29, v106
	v_dual_mov_b32 v122, s7 :: v_dual_mov_b32 v121, s6
	v_dual_mov_b32 v120, s5 :: v_dual_mov_b32 v119, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[167:170], v117
	ds_load_b128 v[171:174], v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[107:110], v[29:32], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[112:115], v[29:32], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[112:115], v[21:24], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[107:110], v[21:24], v[119:126] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[163:166], v[17:20], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[17:20], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[163:166], v[5:8], v[143:150] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[159:162], v[5:8], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[155:158], v[25:28], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[151:154], v[25:28], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[155:158], v[13:16], v[143:150] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[151:154], v[13:16], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[167:170], v[9:12], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[171:174], v[9:12], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[1:4], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[171:174], v[1:4], v[119:126] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v108, v129
	v_cvt_f32_i32_e32 v112, v130
	v_cvt_f32_i32_e32 v107, v131
	v_cvt_f32_i32_e32 v109, v132
	v_cvt_f32_i32_e32 v110, v133
	v_cvt_f32_i32_e32 v114, v134
	v_cvt_f32_i32_e32 v113, v135
	v_cvt_f32_i32_e32 v118, v136
	v_cvt_f32_i32_e32 v129, v137
	v_cvt_f32_i32_e32 v132, v138
	v_cvt_f32_i32_e32 v117, v139
	v_cvt_f32_i32_e32 v130, v140
	v_cvt_f32_i32_e32 v131, v141
	v_cvt_f32_i32_e32 v134, v142
	v_cvt_f32_i32_e32 v133, v143
	v_cvt_f32_i32_e32 v136, v144
	v_cvt_f32_i32_e32 v137, v145
	v_cvt_f32_i32_e32 v140, v146
	v_cvt_f32_i32_e32 v135, v147
	v_cvt_f32_i32_e32 v138, v148
	v_cvt_f32_i32_e32 v139, v149
	v_cvt_f32_i32_e32 v142, v150
	v_cvt_f32_i32_e32 v141, v119
	v_cvt_f32_i32_e32 v144, v120
	v_cvt_f32_i32_e32 v145, v121
	v_cvt_f32_i32_e32 v148, v122
	v_cvt_f32_i32_e32 v143, v123
	v_cvt_f32_i32_e32 v146, v124
	v_cvt_f32_i32_e32 v147, v125
	v_cvt_f32_i32_e32 v149, v126
	v_cvt_f32_i32_e32 v115, v127
	v_cvt_f32_i32_e32 v116, v128
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_mov_b32_e32 v180, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s4, 0
	.loc	1 356 31 is_stmt 1              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v103, s1, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v101, s1, v101
	v_add_nc_u32_e32 v99, s1, v99
	ds_load_b128 v[150:153], v101
	ds_load_b128 v[154:157], v99
	v_add_nc_u32_e32 v99, s1, v100
	v_add_nc_u32_e32 v104, s1, v104
	ds_load_b128 v[184:187], v103
	ds_load_b128 v[188:191], v99
	v_add_nc_u32_e32 v102, s1, v102
	v_add_nc_u32_e32 v119, s1, v105
	ds_load_b128 v[176:179], v104
	ds_load_b128 v[180:183], v102
	v_add_nc_u32_e32 v111, s1, v106
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v106, s11 :: v_dual_mov_b32 v105, s10
	v_dual_mov_b32 v104, s9 :: v_dual_mov_b32 v103, s8
	v_dual_mov_b32 v102, s7 :: v_dual_mov_b32 v101, s6
	v_dual_mov_b32 v100, s5 :: v_dual_mov_b32 v99, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[192:195], v119
	ds_load_b128 v[196:199], v111
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[154:157], v[29:32], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[150:153], v[29:32], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[154:157], v[21:24], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[150:153], v[21:24], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[188:191], v[17:20], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[184:187], v[17:20], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[188:191], v[5:8], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[184:187], v[5:8], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[180:183], v[25:28], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[176:179], v[25:28], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[180:183], v[13:16], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[176:179], v[13:16], v[99:106] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[192:195], v[9:12], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[196:199], v[9:12], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[168:175], v[192:195], v[1:4], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[196:199], v[1:4], v[99:106] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v151, v120
	v_cvt_f32_i32_e32 v152, v121
	v_cvt_f32_i32_e32 v155, v122
	v_cvt_f32_i32_e32 v150, v123
	v_cvt_f32_i32_e32 v153, v124
	v_cvt_f32_i32_e32 v154, v125
	v_cvt_f32_i32_e32 v157, v126
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v159, v161
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v158, v164
	v_cvt_f32_i32_e32 v161, v165
	v_cvt_f32_i32_e32 v162, v166
	v_cvt_f32_i32_e32 v165, v167
	v_cvt_f32_i32_e32 v164, v168
	v_cvt_f32_i32_e32 v167, v169
	v_cvt_f32_i32_e32 v168, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v166, v172
	v_cvt_f32_i32_e32 v169, v173
	v_cvt_f32_i32_e32 v170, v174
	v_cvt_f32_i32_e32 v173, v175
	v_cvt_f32_i32_e32 v172, v99
	v_cvt_f32_i32_e32 v175, v100
	v_cvt_f32_i32_e32 v176, v101
	v_cvt_f32_i32_e32 v179, v102
	v_cvt_f32_i32_e32 v174, v103
	v_cvt_f32_i32_e32 v177, v104
	v_cvt_f32_i32_e32 v178, v105
	v_cvt_f32_i32_e32 v180, v106
.LBB0_16:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v0
	v_lshrrev_b32_e32 v3, 1, v98
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v14, v2, 16, v97
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v15, v1, 1, v3
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v42, v130 :: v_dual_add_f32 v11, v41, v117
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v17, 32, v14
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s28, v14
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 2, v15
	v_or_b32_e32 v1, 6, v15
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v6, s14, v15
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v3, s28, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v181, v87, v115 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 4, v15
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v7, s14, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v28, v88, v116 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v9, s14, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v24, v2, s[8:11], 0 offen
	buffer_load_u16 v32, v3, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v183, v83, v108 :: v_dual_lshlrev_b32 v2, 1, v6
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v8, s14, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v182, v84, v112 :: v_dual_lshlrev_b32 v3, 1, v7
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v6, s3, v15, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v25, 10, v15
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v4, s3, v4, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v26, 8, v15
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x1
	buffer_load_u16 v119, v2, s[8:11], 0 offen
	buffer_load_u16 v120, v3, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v116, v73, v107 :: v_dual_lshlrev_b32 v3, 1, v9
	v_dual_add_f32 v115, v74, v109 :: v_dual_lshlrev_b32 v2, 1, v8
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v1, s3, v1, 1
	s_clause 0x1
	buffer_load_u16 v121, v6, s[8:11], 0 offen
	buffer_load_u16 v122, v4, s[8:11], 0 offen
	v_add_lshl_u32 v4, s3, v5, 1
	v_add_lshl_u32 v6, s3, v25, 1
	v_add_lshl_u32 v5, s3, v26, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x5
	buffer_load_u16 v124, v3, s[8:11], 0 offen
	buffer_load_u16 v123, v2, s[8:11], 0 offen
	buffer_load_u16 v126, v1, s[8:11], 0 offen
	buffer_load_u16 v125, v4, s[8:11], 0 offen
	buffer_load_u16 v128, v6, s[8:11], 0 offen
	buffer_load_u16 v127, v5, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v34, v134 :: v_dual_add_f32 v130, v95, v133
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v133, v86, v151
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v16, 1, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v99, v58, v118 :: v_dual_add_f32 v2, v33, v131
	v_dual_add_f32 v22, v50, v132 :: v_dual_add_f32 v23, v49, v129
	v_dual_add_f32 v131, v92, v140 :: v_dual_add_f32 v132, v91, v137
	v_dual_add_f32 v117, v76, v138 :: v_dual_add_f32 v118, v75, v135
	v_add_f32_e32 v13, v43, v143
	v_dual_add_f32 v3, v36, v149 :: v_dual_add_f32 v134, v85, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v135, v82, v155 :: v_dual_add_f32 v30, v53, v160
	v_dual_add_f32 v137, v78, v153 :: v_dual_add_f32 v18, v45, v158
	v_dual_add_f32 v138, v77, v150 :: v_dual_add_f32 v143, v80, v169
	v_dual_add_f32 v20, v47, v174 :: v_dual_add_f32 v27, v52, v148
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v4, v35, v147
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v147, v87, v181, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v87, 12, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v109, v68, v142
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v19, v46, v161 :: v_dual_add_f32 v142, v89, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v133, v86, v133, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v86, 14, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v108, v65, v110 :: v_dual_add_f32 v129, v96, v136
	v_dual_add_f32 v110, v67, v139 :: v_dual_add_f32 v101, v60, v144
	v_add_f32_e32 v102, v59, v141
	v_dual_add_f32 v29, v51, v145 :: v_dual_add_f32 v12, v44, v146
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v31, v54, v163 :: v_dual_add_f32 v140, v93, v164
	v_dual_add_f32 v139, v94, v167 :: v_dual_add_f32 v144, v79, v166
	v_add_f32_e32 v141, v90, v171
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v145, 56, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v148, v88, v28, s2
	v_cndmask_b32_e64 v134, v85, v134, s2
	v_cndmask_b32_e64 v149, v83, v183, s2
	v_cndmask_b32_e64 v150, v84, v182, s2
	v_cndmask_b32_e64 v135, v82, v135, s2
	v_cndmask_b32_e64 v143, v80, v143, s2
	v_cndmask_b32_e64 v138, v77, v138, s2
	v_cndmask_b32_e64 v137, v78, v137, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v28, 0x4e, v15
	v_or_b32_e32 v77, 0x4c, v15
	v_or_b32_e32 v78, 0x4a, v15
	v_or_b32_e32 v80, 0x48, v15
	v_or_b32_e32 v82, 0x46, v15
	v_or_b32_e32 v83, 0x44, v15
	v_or_b32_e32 v84, 0x42, v15
	v_or_b32_e32 v85, 64, v15
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s28, s15
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v26, s14, v26
	v_or_b32_e32 v25, s14, v25
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s14
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v88, s14, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v142, v89, v142, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v89, s14, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v107, v66, v114 :: v_dual_add_f32 v100, v57, v113
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v114, v72, v173
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v130, v95, v130, s2
	v_cndmask_b32_e64 v140, v93, v140, s2
	v_cndmask_b32_e64 v139, v94, v139, s2
	v_cndmask_b32_e64 v132, v91, v132, s2
	v_cndmask_b32_e64 v131, v92, v131, s2
	v_cndmask_b32_e64 v141, v90, v141, s2
	v_cndmask_b32_e64 v79, v79, v144, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v16, s15, v14
	v_or_b32_e32 v15, s0, v145
	v_add3_u32 v14, s0, v145, 64
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v90, s14, v85
	v_or_b32_e32 v91, s14, v84
	v_or_b32_e32 v92, s14, v83
	v_or_b32_e32 v93, s14, v82
	v_or_b32_e32 v94, s14, v80
	v_or_b32_e32 v95, s14, v78
	v_or_b32_e32 v144, s14, v77
	v_or_b32_e32 v145, s14, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v97, v55, v176 :: v_dual_lshlrev_b32 v26, 1, v26
	v_dual_add_f32 v104, v62, v159 :: v_dual_lshlrev_b32 v25, 1, v25
	v_add_f32_e32 v103, v61, v156
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v156, s3, v28, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v28, 1, v88
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v9, v40, v180
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v155, s3, v82, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v82, 1, v89
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v136, v81, v152
	v_dual_add_f32 v112, v70, v157 :: v_dual_add_f32 v111, v69, v154
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v152, s3, v87, 1
	v_add_lshl_u32 v153, s3, v86, 1
	v_add_lshl_u32 v85, s3, v85, 1
	v_add_lshl_u32 v84, s3, v84, 1
	v_add_lshl_u32 v154, s3, v83, 1
	v_add_lshl_u32 v80, s3, v80, 1
	v_add_lshl_u32 v77, s3, v77, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v83, 1, v90
	v_lshlrev_b32_e32 v86, 1, v91
	v_lshlrev_b32_e32 v87, 1, v92
	v_lshlrev_b32_e32 v88, 1, v93
	v_lshlrev_b32_e32 v89, 1, v94
	v_lshlrev_b32_e32 v92, 1, v95
	v_lshlrev_b32_e32 v93, 1, v144
	v_lshlrev_b32_e32 v144, 1, v145
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v78, s3, v78, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_clause 0x15
	buffer_load_u16 v145, v26, s[8:11], 0 offen
	buffer_load_u16 v157, v25, s[8:11], 0 offen
	buffer_load_u16 v94, v28, s[8:11], 0 offen
	buffer_load_u16 v95, v82, s[8:11], 0 offen
	buffer_load_u16 v90, v83, s[8:11], 0 offen
	buffer_load_u16 v91, v86, s[8:11], 0 offen
	buffer_load_u16 v86, v87, s[8:11], 0 offen
	buffer_load_u16 v87, v88, s[8:11], 0 offen
	buffer_load_u16 v82, v89, s[8:11], 0 offen
	buffer_load_u16 v83, v92, s[8:11], 0 offen
	buffer_load_u16 v26, v93, s[8:11], 0 offen
	buffer_load_u16 v28, v144, s[8:11], 0 offen
	buffer_load_u16 v144, v152, s[8:11], 0 offen
	buffer_load_u16 v152, v153, s[8:11], 0 offen
	buffer_load_u16 v92, v85, s[8:11], 0 offen
	buffer_load_u16 v93, v84, s[8:11], 0 offen
	buffer_load_u16 v88, v154, s[8:11], 0 offen
	buffer_load_u16 v89, v155, s[8:11], 0 offen
	buffer_load_u16 v84, v80, s[8:11], 0 offen
	buffer_load_u16 v85, v78, s[8:11], 0 offen
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	buffer_load_u16 v80, v156, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v81, v136, s2
	v_cndmask_b32_e64 v146, v96, v129, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v21, v48, v177 :: v_dual_add_f32 v8, v39, v178
	v_dual_add_f32 v6, v38, v165 :: v_dual_add_f32 v5, v37, v162
	v_dual_add_f32 v113, v71, v170 :: v_dual_add_f32 v106, v64, v175
	v_dual_add_f32 v105, v63, v172 :: v_dual_add_f32 v98, v56, v179
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v118, s2
	v_cndmask_b32_e64 v76, v76, v117, s2
	v_cndmask_b32_e64 v74, v74, v115, s2
	v_cndmask_b32_e64 v73, v73, v116, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v129.h, v7.h
	v_mov_b16_e64 v136.h, v7.h
	v_mov_b16_e32 v96.h, v7.h
	v_mov_b16_e64 v151.h, v7.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v114, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v114.h, v7.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v112, s2
	v_cndmask_b32_e64 v71, v71, v113, s2
	v_cndmask_b32_e64 v69, v69, v111, s2
	v_cndmask_b32_e64 v65, v65, v108, s2
	v_cndmask_b32_e64 v66, v66, v107, s2
	v_cndmask_b32_e64 v67, v67, v110, s2
	v_cndmask_b32_e64 v68, v68, v109, s2
	v_cndmask_b32_e64 v63, v63, v105, s2
	v_cndmask_b32_e64 v61, v61, v103, s2
	v_cndmask_b32_e64 v62, v62, v104, s2
	v_cndmask_b32_e64 v64, v64, v106, s2
	v_cndmask_b32_e64 v57, v57, v100, s2
	v_cndmask_b32_e64 v59, v59, v102, s2
	v_cndmask_b32_e64 v31, v54, v31, s2
	v_cndmask_b32_e64 v60, v60, v101, s2
	v_cndmask_b32_e64 v58, v58, v99, s2
	v_cndmask_b32_e64 v56, v56, v98, s2
	v_cndmask_b32_e64 v30, v53, v30, s2
	v_cndmask_b32_e64 v27, v52, v27, s2
	v_cndmask_b32_e64 v29, v51, v29, s2
	v_cndmask_b32_e64 v21, v48, v21, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v7.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v49, v23, s2
	v_cndmask_b32_e64 v22, v50, v22, s2
	v_cndmask_b32_e64 v20, v47, v20, s2
	v_cndmask_b32_e64 v19, v46, v19, s2
	v_cndmask_b32_e64 v18, v45, v18, s2
	v_cndmask_b32_e64 v13, v43, v13, s2
	v_cndmask_b32_e64 v12, v44, v12, s2
	v_cndmask_b32_e64 v10, v42, v10, s2
	v_cndmask_b32_e64 v11, v41, v11, s2
	v_cndmask_b32_e64 v9, v40, v9, s2
	v_cndmask_b32_e64 v8, v39, v8, s2
	v_cndmask_b32_e64 v6, v38, v6, s2
	v_cndmask_b32_e64 v5, v37, v5, s2
	v_cndmask_b32_e64 v2, v33, v2, s2
	v_cndmask_b32_e64 v4, v35, v4, s2
	v_cndmask_b32_e64 v3, v36, v3, s2
	v_cndmask_b32_e64 v1, v34, v1, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v17, s15, v17
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	v_and_b32_e32 v0, 16, v0
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v78, 16, v119
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v119, 16, v122
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v122, 16, v123
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v123, 16, v126
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v126, 16, v127
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v25, 16, v24
	v_lshlrev_b32_e32 v24, 16, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v160, v24, v126
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v32, 16, v120
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v120, 16, v121
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v121, 16, v124
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v124, 16, v125
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v126, v25, v126 :: v_dual_lshlrev_b32 v125, 16, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v156, v24, v121
	v_dual_mul_f32 v121, v25, v121 :: v_dual_mul_f32 v158, v24, v124
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v154, v24, v119
	v_mul_f32_e32 v119, v25, v119
	v_mul_f32_e32 v161, v24, v125
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v127, v24, v78
	v_mul_f32_e32 v78, v25, v78
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v125, v25, v125
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v119, v133, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v124, v25, v124 :: v_dual_mul_f32 v127, v130, v127
	v_mul_f32_e32 v153, v24, v120
	v_dual_mul_f32 v120, v25, v120 :: v_dual_mul_f32 v155, v24, v122
	v_dual_mul_f32 v159, v24, v123 :: v_dual_mul_f32 v122, v25, v122
	v_dual_mul_f32 v123, v25, v123 :: v_dual_mul_f32 v128, v24, v32
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v25, v32
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v130, v139, v154 :: v_dual_mul_f32 v121, v150, v121
	v_dual_mul_f32 v139, v140, v153 :: v_dual_mul_f32 v78, v147, v78
	v_mul_f32_e32 v81, v81, v124
	v_mul_f32_e32 v120, v134, v120
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v128, v146, v128 :: v_dual_mul_f32 v133, v141, v159
	v_dual_mul_f32 v32, v148, v32 :: v_dual_mul_f32 v123, v135, v123
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v134, v142, v158 :: v_dual_mul_f32 v135, v79, v160
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v79, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v122, v149, v122
	v_dual_mul_f32 v141, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v140, 0xbfb8aa3b, v130
	v_mul_f32_e32 v147, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v124, v143, v161 :: v_dual_mul_f32 v143, 0xbfb8aa3b, v134
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v147
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v79
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v143
	v_cndmask_b32_e64 v141, 0, 0x42800000, s3
	v_cndmask_b32_e64 v140, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v147, 0, 0x42800000, s7
	v_mul_f32_e32 v142, 0xbfb8aa3b, v119
	v_cndmask_b32_e64 v79, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v141, 0xbfb8aa3b, v120 :: v_dual_fmac_f32 v140, 0xbfb8aa3b, v130
	v_dual_fmac_f32 v147, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v150, 0xbfb8aa3b, v124
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v139
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v142
	v_cndmask_b32_e64 v143, 0, 0x42800000, s5
	v_mul_f32_e32 v148, 0xbfb8aa3b, v123
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v141, v141
	v_exp_f32_e32 v147, v147
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v131, v131, v156 :: v_dual_mul_f32 v132, v132, v155
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v146, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v149, 0xbfb8aa3b, v135
	v_cndmask_b32_e64 v142, 0, 0x42800000, s1
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v134
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v148
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s7
	v_exp_f32_e32 v79, v79
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v146
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v148, 0, 0x42800000, s6
	v_ldexp_f32 v140, v140, v153
	v_ldexp_f32 v141, v141, v156
	v_fmac_f32_e32 v142, 0xbfb8aa3b, v119
	v_ldexp_f32 v147, v147, v161
	v_cndmask_b32_e64 v146, 0, 0x42800000, s4
	v_fmac_f32_e32 v148, 0xbfb8aa3b, v123
	v_ldexp_f32 v79, v79, v154
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v140, 1.0, v140 :: v_dual_add_f32 v147, 1.0, v147
	v_add_f32_e32 v141, 1.0, v141
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v142, v142
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v146, 0xbfb8aa3b, v133 :: v_dual_add_f32 v79, 1.0, v79
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v148, v148
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v169, null, v147, v147, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v150
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s6
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v142, v142, v155
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v155, null, v79, v79, v139
	v_rcp_f32_e32 v177, v169
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v150, 0, 0x42800000, s8
	v_ldexp_f32 v143, v143, v159
	v_ldexp_f32 v148, v148, v160
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v171, v155
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v146, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v150, 0xbfb8aa3b, v124 :: v_dual_add_f32 v143, 1.0, v143
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v153, null, v140, v140, v130
	v_fma_f32 v186, -v169, v177, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v148, 1.0, v148
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v165, null, v143, v143, v134
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v180, -v155, v171, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v142, 1.0, v142 :: v_dual_fmac_f32 v177, v186, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v167, null, v148, v148, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v146, v146, v158
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v170, v153
	v_rcp_f32_e32 v175, v165
	v_rcp_f32_e32 v176, v167
	v_fmac_f32_e32 v171, v180, v171
	v_div_scale_f32 v158, null, v142, v142, v119
	v_div_scale_f32 v160, null, v141, v141, v120
	v_div_scale_f32 v154, vcc_lo, v130, v140, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v172, v158
	v_rcp_f32_e32 v173, v160
	v_fma_f32 v179, -v153, v170, 1.0
	v_fma_f32 v184, -v165, v175, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v146, 1.0, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v185, -v167, v176, 1.0
	v_div_scale_f32 v168, s6, v123, v148, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v175, v184, v175
	v_div_scale_f32 v164, s4, v133, v146, v133
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v181, -v158, v172, 1.0
	v_fmac_f32_e32 v176, v185, v176
	v_fmac_f32_e32 v170, v179, v170
	v_div_scale_f32 v156, s0, v139, v79, v139
	v_div_scale_f32 v163, null, v146, v146, v133
	v_fma_f32 v182, -v160, v173, 1.0
	v_mul_f32_e32 v185, v168, v176
	v_dual_fmac_f32 v172, v181, v172 :: v_dual_mul_f32 v179, v154, v170
	v_div_scale_f32 v159, s1, v119, v142, v119
	v_rcp_f32_e32 v174, v163
	v_mul_f32_e32 v180, v156, v171
	v_div_scale_f32 v161, s3, v120, v141, v120
	v_fmac_f32_e32 v173, v182, v173
	v_fma_f32 v187, -v153, v179, v154
	v_mul_f32_e32 v181, v159, v172
	v_fma_f32 v188, -v155, v180, v156
	v_div_scale_f32 v166, s5, v134, v143, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v182, v161, v173 :: v_dual_fmac_f32 v179, v187, v170
	v_fma_f32 v183, -v163, v174, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v180, v188, v171
	v_fma_f32 v189, -v158, v181, v159
	v_fma_f32 v190, -v160, v182, v161
	v_fma_f32 v153, -v153, v179, v154
	v_fmac_f32_e32 v174, v183, v174
	v_fma_f32 v154, -v155, v180, v156
	v_fmac_f32_e32 v181, v189, v172
	v_div_scale_f32 v178, s7, v81, v147, v81
	v_div_fmas_f32 v153, v153, v170, v179
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v183, v164, v174
	v_div_fmas_f32 v154, v154, v171, v180
	v_fma_f32 v155, -v158, v181, v159
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v193, -v167, v185, v168
	v_fma_f32 v191, -v163, v183, v164
	v_mul_f32_e32 v184, v166, v175
	v_div_fixup_f32 v79, v154, v79, v139
	v_fmac_f32_e32 v182, v190, v173
	v_div_fmas_f32 v155, v155, v172, v181
	v_fmac_f32_e32 v183, v191, v174
	v_fma_f32 v192, -v165, v184, v166
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v79, v127, v79
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v156, -v160, v182, v161
	v_div_fixup_f32 v119, v155, v142, v119
	v_fma_f32 v158, -v163, v183, v164
	s_mov_b32 vcc_lo, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v129.l, v79.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v184, v192, v175
	v_dual_mul_f32 v186, v178, v177 :: v_dual_fmac_f32 v185, v193, v176
	v_div_fixup_f32 v130, v153, v140, v130
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v32, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v159, -v165, v184, v166
	v_div_fmas_f32 v140, v156, v173, v182
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v194, -v169, v186, v178
	v_div_fmas_f32 v139, v158, v174, v183
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v32.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v128, v128, v130
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v130, v159, v175, v184
	v_fma_f32 v160, -v167, v185, v168
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v120, v140, v141, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v149
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v130, v130, v143, v134
	v_fmac_f32_e32 v186, v194, v177
	v_div_fmas_f32 v127, v160, v176, v185
	s_mov_b32 vcc_lo, s7
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v78, v78, v120
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v79, v79
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v161, -v169, v186, v178
	v_div_fixup_f32 v120, v127, v148, v123
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v127, 1, v129
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v149, 0, 0x42800000, s9
	v_exp_f32_e32 v150, v150
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v119, v161, v177, v186
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v120, v121, v120 :: v_dual_and_b32 v121, 1, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v7.l, v128.h
	v_add3_u32 v79, v79, v127, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v81, v119, v147, v81
	v_div_fixup_f32 v133, v139, v146, v133
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v119, v132, v130
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v149, 0xbfb8aa3b, v135
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v122, v81
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v32, v32
	v_add3_u32 v32, v32, v121, 0x7fff
	v_and_b32_e32 v121, 1, v7
	v_mov_b16_e32 v7.l, v120.h
	v_mov_b16_e64 v136.l, v81.h
	v_mov_b16_e32 v96.l, v78.h
	v_cndmask_b16 v32.l, 0x7fff, v79.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v123, v131, v133
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v79, 1, v7
	v_and_b32_e32 v127, 1, v136
	v_and_b32_e32 v96, 1, v96
	v_cmp_o_f32_e64 s4, v120, v120
	v_cmp_o_f32_e64 s5, v81, v81
	v_add3_u32 v79, v120, v79, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v120, v137, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v81, v81, v127, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_cmp_o_f32_e64 s3, v78, v78
	v_mov_b16_e64 v151.l, v119.h
	v_add3_u32 v96, v78, v96, 0x7fff
	v_add3_u32 v121, v128, v121, 0x7fff
	v_mov_b16_e32 v7.l, v123.h
	v_cndmask_b16 v79.l, 0x7fff, v81.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v81, v150, v162
	v_exp_f32_e32 v125, v149
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v122, 1, v151
	v_cndmask_b16 v78.h, 0x7fff, v32.h, s1
	v_cndmask_b16 v78.l, 0x7fff, v96.h, s3
	v_cndmask_b16 v32.h, 0x7fff, v121.h, vcc_lo
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v121, v138, v126 :: v_dual_and_b32 v96, 1, v7
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v126, 1.0, v81 :: v_dual_mul_f32 v81, 0xbfb8aa3b, v120
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v96, v123, v96, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_add3_u32 v122, v119, v122, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_ldexp_f32 v123, v125, v127
	v_mul_f32_e32 v128, 0xbfb8aa3b, v121
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s4
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v128
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v120
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v129, null, v126, v126, v124
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v128, 0, 0x42800000, s0
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v127, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v125, v129
	v_div_scale_f32 v136, s0, v135, v123, v135
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v121
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.h, 0x7fff, v96.h, s1
	v_cndmask_b16 v81.l, 0x7fff, v122.h, vcc_lo
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v96, v128
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v128, null, v123, v123, v135
	v_fma_f32 v119, -v129, v125, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v127, v127, v130
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v86, 16, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v132, v128
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v125, v119, v125 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v118, 1.0, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v96, v96, v131
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v119, vcc_lo, v124, v126, v124
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v131, 16, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v127, null, v118, v118, v120
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v96, 1.0, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v128, v132, 1.0
	v_mul_f32_e32 v133, v119, v125
	v_rcp_f32_e32 v134, v127
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v138, v24, v131 :: v_dual_lshlrev_b32 v117, 16, v157
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v130, null, v96, v96, v121
	v_fmac_f32_e32 v132, v122, v132
	v_fma_f32 v137, -v129, v133, v119
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v115, v25, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v122, v130
	v_dual_mul_f32 v139, v136, v132 :: v_dual_lshlrev_b32 v26, 16, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v140, -v127, v134, 1.0
	v_fmac_f32_e32 v133, v137, v125
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v73, v73, v115
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v33, v25, v26
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v142, -v128, v139, v136
	v_fmac_f32_e32 v134, v140, v134
	v_div_scale_f32 v140, s1, v120, v118, v120
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v137, -v130, v122, 1.0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v141, v24, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v119, -v129, v133, v119
	v_fmac_f32_e32 v139, v142, v132
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v2, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v122, v137, v122
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v76, v76, v141
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v117, v25, v117
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v129, v140, v134
	v_div_fmas_f32 v119, v119, v125, v133
	v_fma_f32 v125, -v128, v139, v136
	s_mov_b32 vcc_lo, s0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v74, v74, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v128, -v127, v129, v140
	v_div_scale_f32 v137, s3, v121, v96, v121
	v_div_fmas_f32 v125, v125, v132, v139
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v129, v128, v134
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v117, 16, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v116, -v127, v129, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v112, v25, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v116, v116, v134, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v70, v70, v112
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v115, v116, v118, v120
	v_mul_f32_e32 v141, v137, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v112, 0xbfb8aa3b, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v116, v119, v126, v124
	v_div_fixup_f32 v118, v125, v123, v135
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v74, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v133, -v130, v141, v137
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v76, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v74.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v141, v133, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v115, 1, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v130, v141, v137
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v76.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v115, v74, v115, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v122, v127, v122, v141
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v96, v122, v96, v121
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v73, v73, v96 :: v_dual_mul_f32 v96, v24, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v72, v72, v96 :: v_dual_mul_f32 v75, v75, v138
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v96, 16, v144
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v116, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v113, v24, v96
	v_mul_f32_e32 v96, v25, v96
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v96, v69, v96
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s0
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v75, v75, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v112
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v112.h, v7.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v112.l, v75.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s0
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v112, 1, v112
	v_add3_u32 v112, v75, v112, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v69, v74, v111
	v_cndmask_b32_e64 v74, 0, 0x42800000, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v76, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v114.l, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v74, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v114, 1, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v114, v73, v114, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v74, v74, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v74, 1.0, v74 :: v_dual_mul_f32 v113, v71, v113
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.h, 0x7fff, v115.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v69
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v113
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.l, 0x7fff, v114.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v111, 0xbfb8aa3b, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v118, null, v73, v73, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v111, null, v115, v115, v72
	v_rcp_f32_e32 v120, v118
	v_div_scale_f32 v125, s1, v113, v73, v113
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v114, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v121, vcc_lo, v72, v115, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v69, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v119, -v111, v114, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v114, v119, v114
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v69, v69, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v116, null, v74, v74, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v119, 1.0, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v118, v120, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v117, 1, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v122, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v120, v69, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v117, v76, v117, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v76, v121, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v69.h, 0x7fff, v117.h, s0
	v_cmp_o_f32_e64 s0, v75, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v111, v76, v121
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v126, -v116, v122, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v69.l, 0x7fff, v112.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v75, v114
	v_div_scale_f32 v123, null, v119, v119, v96
	v_fmac_f32_e32 v122, v126, v122
	v_div_scale_f32 v126, s3, v70, v74, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v124, v123
	v_mul_f32_e32 v117, v125, v120
	v_fma_f32 v111, -v111, v76, v121
	v_mul_f32_e32 v128, v126, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v118, v117, v125
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v76, v111, v114, v76
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v127, -v123, v124, 1.0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v117, v75, v120
	v_fma_f32 v75, -v116, v128, v126
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v108, v25, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v124, v127, v124
	v_div_scale_f32 v127, s4, v96, v119, v96
	v_fma_f32 v111, -v118, v117, v125
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v94, v24, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v72, v76, v115, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v121, v127, v124
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v67, v67, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v114, -v123, v121, v127
	v_fmac_f32_e32 v128, v75, v122
	v_div_fmas_f32 v75, v111, v120, v117
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v121, v114, v124
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v107, -v116, v128, v126
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v114, v25, v95
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v65, v65, v108
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v73, v75, v73, v113
	v_fma_f32 v111, -v123, v121, v127
	v_div_fmas_f32 v107, v107, v122, v128
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v66, v66, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v111, v111, v124, v121
	v_div_fixup_f32 v70, v107, v74, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v96, v111, v119, v96
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v70
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v24, v95
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v65, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v66.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v68, v68, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v74, 16, v93
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v65.h
	v_and_b32_e32 v75, 1, v7
	v_cmp_o_f32_e64 s0, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v75, v66, v75, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v68, v72
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v68, 16, v92
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v72, v24, v68
	v_mul_f32_e32 v68, v25, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v63, v63, v72
	v_mul_f32_e32 v68, v61, v68
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v72, v25, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v68
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v62, v62, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v76
	v_mul_f32_e32 v61, 0xbfb8aa3b, v62
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v73, v24, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v65, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v65, v64, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v64.h, 0x7fff, v75.h, vcc_lo
	v_mov_b16_e32 v73.l, v67.h
	v_mov_b16_e32 v73.h, v7.h
	v_cndmask_b16 v64.l, 0x7fff, v70.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v73, 1, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v73, v67, v73, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v70, v70
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v70, v70, v75
	v_cndmask_b32_e64 v75, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v70, 1.0, v70 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v70, v70, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v75, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v103, s1, v65, v70, v65
	v_rcp_f32_e32 v93, v92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v74
	v_ldexp_f32 v75, v75, v94
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v74, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0x42800000, s0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	v_add3_u32 v74, v66, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v75, v75, v68
	v_rcp_f32_e32 v105, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v106, -v67, v105, 1.0
	v_fmac_f32_e32 v105, v106, v105
	v_div_scale_f32 v106, s4, v68, v75, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v109, v106, v105
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v72, v72, v76
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v61, v61, v76
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v61, v93
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.l, 0x7fff, v73.h, s0
	v_cndmask_b16 v61.h, 0x7fff, v74.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v73, v103, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v92, v73, v103
	v_fmac_f32_e32 v73, v102, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v92, v73, v103
	v_fma_f32 v103, -v67, v109, v106
	v_div_fmas_f32 v73, v92, v93, v73
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v93, v25, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v72, v72, v63
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v92, v25, v90
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, s0, v63, v72, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v94, v76
	s_mov_b32 vcc_lo, s0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v57, v57, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v95, null, v66, v66, v62
	v_fmac_f32_e32 v109, v103, v105
	v_div_fixup_f32 v65, v73, v70, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v95
	v_fma_f32 v104, -v76, v94, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v67, v109, v106
	v_fmac_f32_e32 v94, v104, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v95, v96, 1.0
	v_dual_mul_f32 v107, v74, v94 :: v_dual_fmac_f32 v96, v104, v96
	v_div_scale_f32 v104, s3, v62, v66, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v76, v107, v74
	v_fmac_f32_e32 v107, v102, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v76, v107, v74
	v_div_fmas_f32 v74, v74, v94, v107
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v63, v74, v72, v63
	v_mul_f32_e32 v108, v104, v96
	v_fma_f32 v102, -v95, v108, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v102, v96
	v_fma_f32 v76, -v95, v108, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v76, v96, v108
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v67, v67, v105, v109
	v_div_fixup_f32 v62, v76, v66, v62
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v66, 16, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v67, v67, v75, v68
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v68, v24, v91
	v_mul_f32_e32 v75, v24, v90
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v54, v25, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v57, v57, v67 :: v_dual_mul_f32 v60, v60, v68
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v59, v59, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v31, v31, v54 :: v_dual_mul_f32 v58, v58, v93
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v67, v24, v66
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v60, v60, v65 :: v_dual_lshlrev_b32 v65, 16, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v59, v59, v63 :: v_dual_mul_f32 v58, v58, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v57.h
	v_mov_b16_e32 v62.h, v7.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v53, v25, v65 :: v_dual_mul_f32 v56, v56, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v58.h
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v53, v30, v53 :: v_dual_and_b32 v62, 1, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v55, v97, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v68, v24, v65 :: v_dual_and_b32 v63, 1, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v57, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v57, v62, 0x7fff
	v_add3_u32 v63, v58, v63, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v59.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v55.l, 0x7fff, v62.h, s0
	v_cndmask_b16 v55.h, 0x7fff, v63.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.h, v7.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v56 :: v_dual_and_b32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v59, v62, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v30, v57, v54
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v58, v67, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v31
	v_mul_f32_e32 v63, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v57, v57
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v63, 0, 0x42800000, s0
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	v_ldexp_f32 v57, v57, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v58
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v60.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v63
	v_mul_f32_e32 v63, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v67, v67, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v54, v54, v65
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v65, v63
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v59, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v53
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v57, v57, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v66, v60, v66, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v63, v65, 1.0
	v_rcp_f32_e32 v74, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v65, v60, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, s1, v56, v67, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v59, v74, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.h, 0x7fff, v66.h, vcc_lo
	v_cndmask_b16 v30.l, 0x7fff, v62.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, s3, v31, v57, v31
	v_div_scale_f32 v75, null, v60, v60, v53
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v89, v76, v74
	v_mul_f32_e32 v62, v68, v65
	v_rcp_f32_e32 v66, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v63, v62, v68
	v_fmac_f32_e32 v62, v51, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v75, v66, 1.0
	v_fma_f32 v63, -v63, v62, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v88, v66
	v_div_scale_f32 v88, s4, v53, v60, v53
	v_div_fmas_f32 v62, v63, v65, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v88, v66
	v_fma_f32 v65, -v75, v68, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v68, v65, v66 :: v_dual_mul_f32 v65, v24, v87
	v_div_scale_f32 v70, null, v54, v54, v58
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v27, v27, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v72, v70
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v50, v25, v86
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v23, v23, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v70, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, s0, v58, v54, v58
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v52, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v70, v52, v73
	v_fmac_f32_e32 v52, v51, v72
	v_fma_f32 v51, -v59, v89, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v70, v52, v73
	v_fmac_f32_e32 v89, v51, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v63, v72, v52
	v_fma_f32 v49, -v59, v89, v76
	s_mov_b32 vcc_lo, s3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v59, v25, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v75, v68, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v49, v49, v74, v89
	s_mov_b32 vcc_lo, s4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v22, v22, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v49, v57, v31
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v22, v22, v31 :: v_dual_lshlrev_b32 v49, 16, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v31, v24, v49
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v63, v24, v86 :: v_dual_mul_f32 v46, v25, v49
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v21, v21, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v52, v52, v66, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v29, v29, v63
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v19, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v50, v52, v60, v53
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v23, v23, v50 :: v_dual_lshlrev_b32 v60, 16, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v50, v51, v54, v58
	v_div_fixup_f32 v51, v62, v67, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v23.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v22.h
	v_cmp_o_f32_e64 s0, v22, v22
	v_cmp_o_f32_e64 s1, v23, v23
	v_and_b32_e32 v31, 1, v48
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v48, 16, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v52, 1, v7
	v_mov_b16_e32 v46.l, v29.h
	v_cmp_o_f32_e64 s3, v29, v29
	v_add3_u32 v31, v23, v31, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v47, v24, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v22, v52, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v27, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v20, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v31.h, s1
	v_cndmask_b16 v20.h, 0x7fff, v52.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v7.l, v23.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v27, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v21
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v45, v25, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v18, v18, v45 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v31, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v22
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v31, v31, v47
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v27, v27, v47
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v31, v31, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v45
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v27, v27, v22
	v_div_scale_f32 v59, s1, v22, v27, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v49, v47, 1.0
	v_rcp_f32_e32 v56, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v52
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v50, 1, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v47, v53, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v50, v23, v50, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v51, v56, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v53, null, v45, v45, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v52, v56
	v_rcp_f32_e32 v58, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v23, v48, v54
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v46, 1, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, s0, v21, v31, v21
	s_mov_b32 vcc_lo, s0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v29, v46, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v53, v58, 1.0
	v_div_scale_f32 v54, null, v23, v23, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v50.l, 0x7fff, v46.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v54
	v_mul_f32_e32 v57, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v49, v57, v48
	v_fmac_f32_e32 v57, v29, v47
	v_mul_f32_e32 v43, v59, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v54, v52, 1.0
	v_fma_f32 v48, -v49, v57, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v51, v43, v59
	v_fmac_f32_e32 v52, v29, v52
	v_div_scale_f32 v29, s5, v18, v23, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v58, v44, v58 :: v_dual_fmac_f32 v43, v62, v56
	v_div_scale_f32 v44, s4, v19, v45, v19
	v_dual_mul_f32 v62, v29, v52 :: v_dual_lshlrev_b32 v63, 16, v82
	v_div_fmas_f32 v47, v48, v47, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v51, v43, v59
	s_mov_b32 vcc_lo, s1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v41, v25, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v54, v62, v29
	v_mul_f32_e32 v49, v44, v58
	v_div_fmas_f32 v43, v48, v56, v43
	s_mov_b32 vcc_lo, s4
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v48, v24, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v57, v52
	v_fma_f32 v51, -v53, v49, v44
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v11, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v54, v62, v29
	v_fmac_f32_e32 v49, v51, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v53, v49, v44
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v44, v25, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v58, v49
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v10, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v52, v62
	v_div_fixup_f32 v19, v42, v45, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v29, v23, v18
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v24, v63
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v43, v27, v22
	.loc	1 382 23 is_stmt 1              ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v80
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v12, v12, v48 :: v_dual_mul_f32 v11, v11, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v47, v31, v21
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v13, v13, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v23, v24, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v10.h
	v_mov_b16_e32 v21.l, v11.h
	v_mov_b16_e32 v21.h, v7.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v12, v18 :: v_dual_mul_f32 v9, v9, v23
	v_mul_f32_e32 v13, v13, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v11, v11
	v_mov_b16_e32 v7.l, v12.h
	v_add3_u32 v18, v10, v19, 0x7fff
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v19, 16, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v11, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v11.h, 0x7fff, v18.h, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v21, v24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v8, v8, v21 :: v_dual_mul_f32 v21, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v8
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v6, v6, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v13.h
	v_mov_b16_e32 v18.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v8 :: v_dual_and_b32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v13, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v21, v21, v27
	v_ldexp_f32 v10, v10, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v10, 1.0, v10
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v19, v25, v19
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v25, v25, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v5, v5, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, s0, v9, v10, v9
	v_rcp_f32_e32 v31, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v19, v19, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v21, v21, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v22, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v29, v31, 1.0
	v_rcp_f32_e32 v38, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v19, v19, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v37, v31
	v_rcp_f32_e32 v37, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v27, v38, 1.0
	v_dual_mul_f32 v35, v40, v31 :: v_dual_fmac_f32 v38, v41, v38
	v_div_scale_f32 v41, s1, v8, v21, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v37, 1.0
	v_fma_f32 v36, -v29, v35, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v41, v38
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, s3, v6, v19, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v36, v31
	v_fma_f32 v36, -v27, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v46, v43, v37
	v_fma_f32 v29, -v29, v35, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v36, v38
	v_fma_f32 v36, -v39, v46, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v27, v45, v41
	v_fmac_f32_e32 v46, v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v12, v23, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v22, v22, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v12
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v29, v29, v31, v35
	v_fma_f32 v31, -v39, v46, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v35, v24, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v38, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v12, v42, 1.0
	v_div_fmas_f32 v31, v31, v37, v46
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s4, v5, v22, v5
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v6, v31, v19, v6
	v_mul_f32_e32 v47, v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v12, v47, v44
	v_fmac_f32_e32 v47, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v47, v44
	v_div_fmas_f32 v12, v12, v42, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v12, v22, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v18.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v12, v24, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v7.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v27, v21, v8
	v_div_fixup_f32 v8, v29, v10, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v10, 0x7632 :: v_dual_mul_f32 v3, v3, v35
	v_mov_b16_e32 v7.l, v1.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v4, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v3, v8 :: v_dual_and_b32 v8, 1, v7
	v_dual_mul_f32 v4, v4, v5 :: v_dual_and_b32 v5, 1, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v7.l, v3.h
	v_add3_u32 v8, v1, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v5, v2, v5, 0x7fff
	v_mov_b32_e32 v9, 0x5410
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v6.l, v4.h
	v_cmp_o_f32_e64 s2, v4, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v2, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v8.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v6, 1, v6
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v10, vcc_lo
	v_add3_u32 v1, v4, v6, 0x7fff
	v_cndmask_b32_e32 v2, v78, v71, vcc_lo
	v_cndmask_b32_e32 v8, v3, v20, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v5, v79, v64, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v3, v20, v3, vcc_lo
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v12, v32, v69, vcc_lo
	v_cndmask_b32_e32 v18, v81, v61, vcc_lo
	v_cndmask_b32_e32 v20, v30, v23, vcc_lo
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v7, v55, v11, vcc_lo
	v_dual_cndmask_b32 v21, v0, v50 :: v_dual_cndmask_b32 v0, v50, v0
	v_dual_cndmask_b32 v1, v71, v78 :: v_dual_cndmask_b32 v4, v64, v79
	v_dual_cndmask_b32 v6, v11, v55 :: v_dual_cndmask_b32 v11, v69, v32
	v_cndmask_b32_e32 v19, v23, v30, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x5040504, v9
	v_and_b32_e32 v24, 0x7060706, v10
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v13, v61, v81, vcc_lo
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v23
	v_perm_b32 v1, v2, v1, v24
	v_perm_b32 v2, v5, v4, v23
	v_perm_b32 v3, v5, v4, v24
	v_perm_b32 v4, v7, v6, v23
	v_perm_b32 v5, v7, v6, v24
	v_perm_b32 v6, v22, v8, v23
	v_perm_b32 v7, v22, v8, v24
	v_perm_b32 v8, v12, v11, v23
	v_perm_b32 v9, v12, v11, v24
	v_add_lshl_u32 v12, v15, v16, 1
	v_perm_b32 v10, v18, v13, v23
	v_perm_b32 v11, v18, v13, v24
	v_add_lshl_u32 v13, v14, v16, 1
	v_add_lshl_u32 v15, v15, v17, 1
	v_perm_b32 v18, v20, v19, v23
	v_perm_b32 v19, v20, v19, v24
	v_perm_b32 v20, v25, v21, v23
	v_perm_b32 v21, v25, v21, v24
	v_add_lshl_u32 v14, v14, v17, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v12, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v13, s[12:15], 0 offen
	buffer_store_b128 v[8:11], v15, s[12:15], 0 offen
	buffer_store_b128 v[18:21], v14, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 200
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15324
; TotalNumSgprs: 38
; NumVgprs: 200
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     200
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
