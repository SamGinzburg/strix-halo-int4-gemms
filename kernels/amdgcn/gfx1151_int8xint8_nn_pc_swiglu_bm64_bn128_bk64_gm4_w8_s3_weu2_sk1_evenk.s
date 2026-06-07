	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v55, 4, v0
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v42, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v44, 15, v0
	s_mov_b32 s34, 0
	v_and_b32_e32 v3, 48, v55
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:152
	scratch_store_b32 off, v42, off offset:148
	scratch_store_b32 off, v0, off offset:164
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v45, 48, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, 0, v55
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
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
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
	v_mul_lo_u32 v2, s10, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v55
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s31, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[53:54], null, s31, v4, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s9
	v_or_b32_e32 v54, v45, v44
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s28, s10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v57, s15, 6, v53
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v56, v2, v3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s31, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s14, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s6, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s7, s15, 7
	v_add_nc_u32_e32 v2, s4, v53
	v_add_nc_u32_e32 v3, s4, v57
	s_add_i32 s4, s4, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v16, s4, v53
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, 64, v1
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v14, s15, v2
	v_add_nc_u32_e32 v15, s15, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v17, s4, v57
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v23, s15, v16
	v_add3_u32 v22, s4, s15, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v3, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v18, 0x80000000, v15, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v26, 0x80000000, v16, s2
	v_cndmask_b32_e64 v30, 0x80000000, v17, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v34, 0x80000000, v23, s2
	v_cndmask_b32_e64 v38, 0x80000000, v22, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[2:5], v4, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[6:9], v6, s[24:27], 0 offen
	buffer_load_b128 v[10:13], v10, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v14, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v18, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[22:25], v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v26, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v30, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v34, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v38, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v1
	v_xor_b32_e32 v58, v55, v1
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v42, 0, v58
	s_waitcnt vmcnt(9)
	ds_store_b128 v42, v[2:5] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v43, v[6:9]
	s_waitcnt vmcnt(7)
	ds_store_b128 v43, v[10:13] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v43, v[14:17] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v43, v[18:21] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v42, v[22:25] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v43, v[26:29] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v43, v[30:33] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v43, v[34:37] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[38:41] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_store_b32 off, v45, off offset:156 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 0x430, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v129, v45, v44
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v125, v44, 6, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v2, 0x1100, v129
	v_or_b32_e32 v181, 0x80, v129
	v_or_b32_e32 v164, 0x100, v129
	v_or_b32_e32 v165, 0x180, v129
	v_or_b32_e32 v160, 0x200, v129
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1180, v129
	v_or_b32_e32 v182, 0x280, v129
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v126, 16, v125
	v_xor_b32_e32 v127, 32, v125
	v_xor_b32_e32 v128, 48, v125
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_store_b32 off, v2, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1300, v129
	v_or_b32_e32 v183, 0x300, v129
	v_or_b32_e32 v240, 0x380, v129
	v_or_b32_e32 v242, 0x400, v129
	v_or_b32_e32 v244, 0x480, v129
	scratch_store_b32 off, v2, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1380, v129
	v_or_b32_e32 v245, 0x500, v129
	v_or_b32_e32 v175, 0x580, v129
	v_or_b32_e32 v176, 0x600, v129
	v_or_b32_e32 v177, 0x680, v129
	scratch_store_b32 off, v2, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1500, v129
	v_or_b32_e32 v253, 0x700, v129
	v_or_b32_e32 v251, 0x780, v129
	v_or_b32_e32 v179, 0x800, v129
	v_or_b32_e32 v180, 0x880, v129
	scratch_store_b32 off, v2, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1580, v129
	v_or_b32_e32 v161, 0x900, v129
	v_or_b32_e32 v0, 0x980, v129
	v_or_b32_e32 v158, 0xa00, v129
	v_or_b32_e32 v159, 0xa80, v129
	scratch_store_b32 off, v2, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1700, v129
	v_or_b32_e32 v241, 0xb00, v129
	v_or_b32_e32 v243, 0xb80, v129
	v_or_b32_e32 v255, 0xc00, v129
	v_or_b32_e32 v174, 0xc80, v129
	scratch_store_b32 off, v2, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1780, v129
	v_or_b32_e32 v162, 0xd00, v129
	v_or_b32_e32 v163, 0xd80, v129
	v_or_b32_e32 v246, 0xe00, v129
	v_or_b32_e32 v201, 0xe80, v129
	scratch_store_b32 off, v2, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1800, v129
	v_or_b32_e32 v200, 0xf00, v129
	v_or_b32_e32 v254, 0xf80, v129
	v_or_b32_e32 v252, 0x1000, v129
	v_or_b32_e32 v249, 0x1080, v129
	scratch_store_b32 off, v2, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1880, v129
	v_or_b32_e32 v250, 0x1200, v129
	v_or_b32_e32 v248, 0x1280, v129
	v_or_b32_e32 v247, 0x1400, v129
	v_or_b32_e32 v230, 0x1480, v129
	scratch_store_b32 off, v2, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1900, v129
	v_or_b32_e32 v231, 0x1600, v129
	v_or_b32_e32 v226, 0x1680, v129
	v_or_b32_e32 v178, 64, v129
	v_or_b32_e32 v227, 0xc0, v129
	scratch_store_b32 off, v2, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1980, v129
	v_or_b32_e32 v186, 0x240, v129
	v_or_b32_e32 v188, 0x2c0, v129
	v_or_b32_e32 v195, 0x440, v129
	v_or_b32_e32 v197, 0x4c0, v129
	scratch_store_b32 off, v2, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1a00, v129
	v_or_b32_e32 v184, 0x640, v129
	v_or_b32_e32 v204, 0x6c0, v129
	v_or_b32_e32 v213, 0xac0, v129
	v_or_b32_e32 v214, 0xb40, v129
	scratch_store_b32 off, v2, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1a80, v129
	v_or_b32_e32 v215, 0xbc0, v129
	v_or_b32_e32 v216, 0xc40, v129
	v_or_b32_e32 v217, 0xcc0, v129
	v_or_b32_e32 v218, 0xd40, v129
	scratch_store_b32 off, v2, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1b00, v129
	v_or_b32_e32 v219, 0xdc0, v129
	v_or_b32_e32 v220, 0xe40, v129
	v_or_b32_e32 v221, 0xec0, v129
	v_or_b32_e32 v222, 0xf40, v129
	scratch_store_b32 off, v2, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1b80, v129
	v_or_b32_e32 v223, 0xfc0, v129
	v_or_b32_e32 v224, 0x1040, v129
	v_or_b32_e32 v225, 0x10c0, v129
	v_or_b32_e32 v211, 0x1140, v129
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1c00, v129
	v_or_b32_e32 v212, 0x11c0, v129
	v_or_b32_e32 v228, 0x1240, v129
	v_or_b32_e32 v229, 0x12c0, v129
	v_or_b32_e32 v202, 0x1340, v129
	scratch_store_b32 off, v2, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1c80, v129
	v_or_b32_e32 v203, 0x13c0, v129
	v_or_b32_e32 v232, 0x1440, v129
	v_or_b32_e32 v233, 0x14c0, v129
	v_or_b32_e32 v234, 0x1540, v129
	scratch_store_b32 off, v2, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1d00, v129
	v_or_b32_e32 v235, 0x15c0, v129
	v_or_b32_e32 v236, 0x1640, v129
	v_or_b32_e32 v237, 0x16c0, v129
	v_or_b32_e32 v238, 0x1740, v129
	scratch_store_b32 off, v2, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1d80, v129
	v_or_b32_e32 v239, 0x17c0, v129
	v_or_b32_e32 v206, 0x1840, v129
	v_or_b32_e32 v207, 0x18c0, v129
	v_or_b32_e32 v208, 0x1940, v129
	scratch_store_b32 off, v2, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1e00, v129
	v_or_b32_e32 v209, 0x19c0, v129
	v_or_b32_e32 v210, 0x1a40, v129
	v_or_b32_e32 v185, 0x1ac0, v129
	v_or_b32_e32 v187, 0x1b40, v129
	scratch_store_b32 off, v2, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1e80, v129
	v_or_b32_e32 v189, 0x1bc0, v129
	v_or_b32_e32 v198, 0x1c40, v129
	v_or_b32_e32 v199, 0x1cc0, v129
	v_or_b32_e32 v190, 0x1d40, v129
	scratch_store_b32 off, v2, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1f00, v129
	v_or_b32_e32 v191, 0x1dc0, v129
	v_or_b32_e32 v193, 0x1e40, v129
	v_or_b32_e32 v194, 0x1ec0, v129
	v_or_b32_e32 v196, 0x1f40, v129
	scratch_store_b32 off, v2, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1f80, v129
	v_or_b32_e32 v192, 0x1fc0, v129
	scratch_store_b32 off, v2, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x140, v129
	scratch_store_b32 off, v2, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x1c0, v129
	scratch_store_b32 off, v2, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x340, v129
	scratch_store_b32 off, v2, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x3c0, v129
	scratch_store_b32 off, v2, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x540, v129
	scratch_store_b32 off, v2, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x5c0, v129
	scratch_store_b32 off, v2, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x740, v129
	scratch_store_b32 off, v2, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x7c0, v129
	scratch_store_b32 off, v2, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x840, v129
	scratch_store_b32 off, v2, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x8c0, v129
	scratch_store_b32 off, v2, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x940, v129
	scratch_store_b32 off, v2, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0x9c0, v129
	scratch_store_b32 off, v2, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0xa40, v129
	scratch_store_b32 off, v2, off offset:144 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr181
                                        ; implicit-def: $vgpr164
                                        ; implicit-def: $vgpr165
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr182
                                        ; implicit-def: $vgpr183
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr175
                                        ; implicit-def: $vgpr176
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr179
                                        ; implicit-def: $vgpr180
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr174
                                        ; implicit-def: $vgpr162
                                        ; implicit-def: $vgpr163
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr201
                                        ; implicit-def: $vgpr200
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr178
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr186
                                        ; implicit-def: $vgpr188
                                        ; implicit-def: $vgpr195
                                        ; implicit-def: $vgpr197
                                        ; implicit-def: $vgpr184
                                        ; implicit-def: $vgpr204
                                        ; implicit-def: $vgpr213
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr211
                                        ; implicit-def: $vgpr212
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr202
                                        ; implicit-def: $vgpr203
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr206
                                        ; implicit-def: $vgpr207
                                        ; implicit-def: $vgpr208
                                        ; implicit-def: $vgpr209
                                        ; implicit-def: $vgpr210
                                        ; implicit-def: $vgpr185
                                        ; implicit-def: $vgpr187
                                        ; implicit-def: $vgpr189
                                        ; implicit-def: $vgpr198
                                        ; implicit-def: $vgpr199
                                        ; implicit-def: $vgpr190
                                        ; implicit-def: $vgpr191
                                        ; implicit-def: $vgpr193
                                        ; implicit-def: $vgpr194
                                        ; implicit-def: $vgpr196
                                        ; implicit-def: $vgpr192
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
                                        ; implicit-def: $vgpr2
                                        ; kill: killed $vgpr2
.LBB0_3:                                ; %Flow320
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	scratch_store_b32 off, v44, off offset:160 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v1, 0x430, v1
	v_or_b32_e32 v181, 0x80, v54
	v_or_b32_e32 v164, 0x100, v54
	v_or_b32_e32 v165, 0x180, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v125, v44, 6, v1
	v_or_b32_e32 v1, 0x1100, v54
	v_or_b32_e32 v160, 0x200, v54
	v_or_b32_e32 v182, 0x280, v54
	v_or_b32_e32 v183, 0x300, v54
	v_xor_b32_e32 v126, 16, v125
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1180, v54
	v_xor_b32_e32 v127, 32, v125
	v_xor_b32_e32 v128, 48, v125
	v_or_b32_e32 v240, 0x380, v54
	v_or_b32_e32 v242, 0x400, v54
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1300, v54
	v_or_b32_e32 v244, 0x480, v54
	v_or_b32_e32 v245, 0x500, v54
	v_or_b32_e32 v175, 0x580, v54
	v_or_b32_e32 v176, 0x600, v54
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1380, v54
	v_or_b32_e32 v177, 0x680, v54
	v_or_b32_e32 v253, 0x700, v54
	v_or_b32_e32 v251, 0x780, v54
	v_or_b32_e32 v179, 0x800, v54
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1500, v54
	v_or_b32_e32 v180, 0x880, v54
	v_or_b32_e32 v161, 0x900, v54
	v_or_b32_e32 v0, 0x980, v54
	v_or_b32_e32 v158, 0xa00, v54
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1580, v54
	v_or_b32_e32 v159, 0xa80, v54
	v_or_b32_e32 v241, 0xb00, v54
	v_or_b32_e32 v243, 0xb80, v54
	v_or_b32_e32 v255, 0xc00, v54
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1700, v54
	v_or_b32_e32 v174, 0xc80, v54
	v_or_b32_e32 v162, 0xd00, v54
	v_or_b32_e32 v163, 0xd80, v54
	v_or_b32_e32 v246, 0xe00, v54
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1780, v54
	v_or_b32_e32 v201, 0xe80, v54
	v_or_b32_e32 v200, 0xf00, v54
	v_or_b32_e32 v254, 0xf80, v54
	v_or_b32_e32 v252, 0x1000, v54
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v54
	v_or_b32_e32 v249, 0x1080, v54
	v_or_b32_e32 v250, 0x1200, v54
	v_or_b32_e32 v248, 0x1280, v54
	v_or_b32_e32 v247, 0x1400, v54
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1880, v54
	v_or_b32_e32 v230, 0x1480, v54
	v_or_b32_e32 v231, 0x1600, v54
	v_or_b32_e32 v226, 0x1680, v54
	v_or_b32_e32 v178, 64, v54
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1900, v54
	v_or_b32_e32 v227, 0xc0, v54
	v_or_b32_e32 v186, 0x240, v54
	v_or_b32_e32 v188, 0x2c0, v54
	v_or_b32_e32 v195, 0x440, v54
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1980, v54
	v_or_b32_e32 v197, 0x4c0, v54
	v_or_b32_e32 v184, 0x640, v54
	v_or_b32_e32 v204, 0x6c0, v54
	v_or_b32_e32 v213, 0xac0, v54
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a00, v54
	v_or_b32_e32 v214, 0xb40, v54
	v_or_b32_e32 v215, 0xbc0, v54
	v_or_b32_e32 v216, 0xc40, v54
	v_or_b32_e32 v217, 0xcc0, v54
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a80, v54
	v_or_b32_e32 v218, 0xd40, v54
	v_or_b32_e32 v219, 0xdc0, v54
	v_or_b32_e32 v220, 0xe40, v54
	v_or_b32_e32 v221, 0xec0, v54
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b00, v54
	v_or_b32_e32 v222, 0xf40, v54
	v_or_b32_e32 v223, 0xfc0, v54
	v_or_b32_e32 v224, 0x1040, v54
	v_or_b32_e32 v225, 0x10c0, v54
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b80, v54
	v_or_b32_e32 v211, 0x1140, v54
	v_or_b32_e32 v212, 0x11c0, v54
	v_or_b32_e32 v228, 0x1240, v54
	v_or_b32_e32 v229, 0x12c0, v54
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v54
	v_or_b32_e32 v202, 0x1340, v54
	v_or_b32_e32 v203, 0x13c0, v54
	v_or_b32_e32 v232, 0x1440, v54
	v_or_b32_e32 v233, 0x14c0, v54
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c80, v54
	v_or_b32_e32 v234, 0x1540, v54
	v_or_b32_e32 v235, 0x15c0, v54
	v_or_b32_e32 v236, 0x1640, v54
	v_or_b32_e32 v237, 0x16c0, v54
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d00, v54
	v_or_b32_e32 v238, 0x1740, v54
	v_or_b32_e32 v239, 0x17c0, v54
	v_or_b32_e32 v206, 0x1840, v54
	v_or_b32_e32 v207, 0x18c0, v54
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d80, v54
	v_or_b32_e32 v208, 0x1940, v54
	v_or_b32_e32 v209, 0x19c0, v54
	v_or_b32_e32 v210, 0x1a40, v54
	v_or_b32_e32 v185, 0x1ac0, v54
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e00, v54
	v_or_b32_e32 v187, 0x1b40, v54
	v_or_b32_e32 v189, 0x1bc0, v54
	v_or_b32_e32 v198, 0x1c40, v54
	v_or_b32_e32 v199, 0x1cc0, v54
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v54
	v_or_b32_e32 v190, 0x1d40, v54
	v_or_b32_e32 v191, 0x1dc0, v54
	v_or_b32_e32 v193, 0x1e40, v54
	v_or_b32_e32 v194, 0x1ec0, v54
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f00, v54
	v_or_b32_e32 v196, 0x1f40, v54
	v_or_b32_e32 v192, 0x1fc0, v54
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v54
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x140, v54
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c0, v54
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x340, v54
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v86, 0
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x3c0, v54
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x540, v54
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x5c0, v54
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x740, v54
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x7c0, v54
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x840, v54
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x8c0, v54
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x940, v54
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x9c0, v54
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa40, v54
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v63, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s35, s5, 6
	s_add_i32 s0, s6, 0x80
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s29, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s1, 0, 0x6000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s34, s4
	s_mov_b32 s37, s4
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s40, s37, 6
	s_mov_b32 s39, s34
	s_mov_b32 s34, s33
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s33, s0, s40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v59, s39, v54
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, s33, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v136, s11 :: v_dual_add_nc_u32 v1, s38, v125
	v_dual_mov_b32 v134, s9 :: v_dual_mov_b32 v133, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[49:52], v2, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v59 offset:1664
	ds_load_u8 v3, v59 offset:1536
	ds_load_u8 v4, v59 offset:1920
	ds_load_u8 v5, v59 offset:1792
	ds_load_u8 v6, v59 offset:1152
	ds_load_u8 v7, v59 offset:1024
	ds_load_u8 v8, v59 offset:1408
	ds_load_u8 v9, v59 offset:1280
	ds_load_u8 v10, v59 offset:640
	ds_load_u8 v11, v59 offset:512
	ds_load_u8 v12, v59 offset:896
	ds_load_u8 v13, v59 offset:768
	ds_load_u8 v14, v59 offset:128
	ds_load_u8 v15, v59
	ds_load_u8 v16, v59 offset:384
	ds_load_u8 v17, v59 offset:256
	ds_load_u8 v18, v59 offset:1728
	ds_load_u8 v19, v59 offset:1600
	ds_load_u8 v20, v59 offset:1984
	ds_load_u8 v21, v59 offset:1856
	ds_load_u8 v22, v59 offset:1216
	ds_load_u8 v23, v59 offset:1088
	ds_load_u8 v24, v59 offset:1472
	ds_load_u8 v25, v59 offset:1344
	ds_load_u8 v26, v59 offset:704
	ds_load_u8 v27, v59 offset:576
	ds_load_u8 v28, v59 offset:960
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	v_dual_mov_b32 v135, s10 :: v_dual_add_nc_u32 v60, s34, v54
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v4, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	v_lshl_or_b32 v5, v3, 16, v2
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v3, v13, v12, 0xc0c0004
	ds_load_u8 v29, v59 offset:832
	ds_load_u8 v30, v59 offset:192
	ds_load_u8 v8, v59 offset:320
	v_lshl_or_b32 v4, v6, 16, v4
	ds_load_u8 v6, v59 offset:64
	ds_load_u8 v7, v59 offset:448
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v60 offset:1664
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v3, 16, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v60 offset:1536
	ds_load_u8 v11, v60 offset:1920
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v2, v15, v14, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v12, v60 offset:1792
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v13, v17, v16, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v14, v60 offset:1152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v15, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v21, v20, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v60 offset:1408
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v23, v22, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v60 offset:1280
	ds_load_u8 v16, v60 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v19, v25, v24, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v60 offset:640
	ds_load_u8 v24, v60 offset:768
	ds_load_u8 v25, v60 offset:128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v13, 16, v2
	v_lshl_or_b32 v20, v17, 16, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v60 offset:512
	ds_load_u8 v15, v60 offset:896
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v60 offset:1728
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v60 offset:1600
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v60 offset:1984
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v19, v19, 16, v18
	v_perm_b32 v17, v27, v26, 0xc0c0004
	v_perm_b32 v18, v29, v28, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v60 offset:256
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[137:140], v1
	ds_load_b128 v[166:169], v1 offset:2048
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v60 offset:1856
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v60 offset:1216
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v18, v18, 16, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v60
	ds_load_u8 v26, v60 offset:384
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v6, v6, v30, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v148, v11, 16, v9
	v_lshl_or_b32 v147, v21, 16, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v132, s7 :: v_dual_mov_b32 v131, s6
	v_dual_mov_b32 v130, s5 :: v_dual_mov_b32 v129, s4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s33, s33, s31
	s_mov_b32 s34, s29
	s_add_i32 s33, s33, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s29, s36, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v28, v60 offset:320
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[2:5], v[137:140], v[129:136] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v16, v12, 0xc0c0004
	ds_load_u8 v16, v60 offset:960
	v_perm_b32 v15, v24, v15, 0xc0c0004
	ds_load_u8 v24, v60 offset:1472
	v_perm_b32 v8, v10, v8, 0xc0c0004
	ds_load_u8 v10, v60 offset:576
	v_perm_b32 v13, v13, v23, 0xc0c0004
	ds_load_u8 v23, v60 offset:1088
	v_lshl_or_b32 v156, v12, 16, v8
	v_lshl_or_b32 v146, v15, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	ds_load_u8 v23, v60 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v23, v16, 0xc0c0004
	ds_load_u8 v23, v60 offset:448
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v60 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v27, 0xc0c0004
	ds_load_u8 v27, v60 offset:64
	v_perm_b32 v25, v17, v25, 0xc0c0004
	ds_load_u8 v17, v60 offset:1344
	v_lshl_or_b32 v154, v16, 16, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[2:5], v[166:169], v[129:136] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v26, 16, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[145:148], v[137:140], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v17, v24, 0xc0c0004
	ds_load_u8 v17, v60 offset:192
	v_lshl_or_b32 v155, v24, 16, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v17, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v17, v7, 16, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v6, v28, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v153, v6, 16, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[137:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[166:169], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[153:156], v[137:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[145:148], v[166:169], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[153:156], v[166:169], v[129:136] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v129, v59 offset:3712
	ds_load_u8 v130, v59 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v153, s38, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:3968
	ds_load_u8 v131, v59 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v59 offset:3200
	ds_load_u8 v132, v59 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v59 offset:3456
	ds_load_u8 v133, v59 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v59 offset:2688
	ds_load_u8 v130, v59 offset:2560
	v_lshl_or_b32 v131, v133, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:2944
	ds_load_u8 v133, v59 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v133, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v59 offset:2176
	ds_load_u8 v133, v59 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v133, v129, 0xc0c0004
	ds_load_u8 v133, v59 offset:2432
	ds_load_u8 v134, v59 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v133, 16, v129
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[133:136], v153
	ds_load_b128 v[153:156], v153 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[129:132], v[133:136], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[129:132], v[153:156], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v129, v59 offset:3776
	ds_load_u8 v130, v59 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:4032
	ds_load_u8 v131, v59 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v59 offset:3264
	ds_load_u8 v132, v59 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v59 offset:3520
	ds_load_u8 v157, v59 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v59 offset:2752
	ds_load_u8 v130, v59 offset:2624
	v_lshl_or_b32 v131, v157, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:3008
	ds_load_u8 v157, v59 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v157, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v59 offset:2240
	ds_load_u8 v157, v59 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v157, v129, 0xc0c0004
	ds_load_u8 v157, v59 offset:2496
	ds_load_u8 v166, v59 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v157, 16, v129
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[133:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[129:132], v[153:156], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v129, v60 offset:3712
	ds_load_u8 v130, v60 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v60 offset:3968
	ds_load_u8 v131, v60 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v60 offset:3200
	ds_load_u8 v132, v60 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v60 offset:3456
	ds_load_u8 v157, v60 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v60 offset:2688
	ds_load_u8 v130, v60 offset:2560
	v_lshl_or_b32 v131, v157, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v60 offset:2944
	ds_load_u8 v157, v60 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v157, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v60 offset:2176
	ds_load_u8 v157, v60 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v157, v129, 0xc0c0004
	ds_load_u8 v157, v60 offset:2432
	ds_load_u8 v166, v60 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v157, 16, v129
	ds_load_u8 v157, v60 offset:3776
	ds_load_u8 v166, v60 offset:3648
	v_wmma_i32_16x16x16_iu8 v[33:40], v[129:132], v[133:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[129:132], v[153:156], v[137:144] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v129, v59 offset:5760
	ds_load_u8 v130, v59 offset:5632
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	ds_load_u8 v166, v60 offset:4032
	ds_load_u8 v167, v60 offset:3904
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:6016
	ds_load_u8 v131, v59 offset:5888
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v60 offset:3264
	ds_load_u8 v168, v60 offset:3136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v59 offset:5248
	ds_load_u8 v132, v59 offset:5120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v60 offset:3520
	ds_load_u8 v169, v60 offset:3392
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_lshl_or_b32 v169, v166, 16, v157
	ds_load_u8 v157, v60 offset:2752
	ds_load_u8 v166, v60 offset:2624
	v_lshl_or_b32 v168, v168, 16, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	ds_load_u8 v166, v60 offset:3008
	ds_load_u8 v167, v60 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v166, 16, v157
	ds_load_u8 v157, v60 offset:2240
	ds_load_u8 v166, v60 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	ds_load_u8 v166, v60 offset:2496
	ds_load_u8 v170, v60 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v170, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v157
	v_wmma_i32_16x16x16_iu8 v[17:24], v[166:169], v[133:136], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v132, v59 offset:5504
	ds_load_u8 v133, v59 offset:5376
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[145:152], v[166:169], v[153:156], v[145:152] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v153, s38, v127
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v59 offset:4736
	ds_load_u8 v130, v59 offset:4608
	v_lshl_or_b32 v131, v133, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:4992
	ds_load_u8 v133, v59 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v133, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v59 offset:4224
	ds_load_u8 v133, v59 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v133, v129, 0xc0c0004
	ds_load_u8 v133, v59 offset:4480
	ds_load_u8 v134, v59 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v133, 16, v129
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[133:136], v153
	ds_load_b128 v[153:156], v153 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[129:132], v[133:136], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[129:132], v[153:156], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v129, v59 offset:5824
	ds_load_u8 v130, v59 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:6080
	ds_load_u8 v131, v59 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v59 offset:5312
	ds_load_u8 v132, v59 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v59 offset:5568
	ds_load_u8 v157, v59 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v59 offset:4800
	ds_load_u8 v130, v59 offset:4672
	v_lshl_or_b32 v131, v157, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:5056
	ds_load_u8 v157, v59 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v157, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v59 offset:4288
	ds_load_u8 v157, v59 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v157, v129, 0xc0c0004
	ds_load_u8 v157, v59 offset:4544
	ds_load_u8 v166, v59 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v157, 16, v129
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[133:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[129:132], v[153:156], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v129, v60 offset:5760
	ds_load_u8 v130, v60 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v60 offset:6016
	ds_load_u8 v131, v60 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v60 offset:5248
	ds_load_u8 v132, v60 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v60 offset:5504
	ds_load_u8 v157, v60 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v60 offset:4736
	ds_load_u8 v130, v60 offset:4608
	v_lshl_or_b32 v131, v157, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v60 offset:4992
	ds_load_u8 v157, v60 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v157, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v60 offset:4224
	ds_load_u8 v157, v60 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v157, v129, 0xc0c0004
	ds_load_u8 v157, v60 offset:4480
	ds_load_u8 v166, v60 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v157, 16, v129
	ds_load_u8 v157, v60 offset:5824
	ds_load_u8 v166, v60 offset:5696
	v_wmma_i32_16x16x16_iu8 v[33:40], v[129:132], v[133:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[129:132], v[153:156], v[137:144] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v129, v59 offset:7808
	ds_load_u8 v130, v59 offset:7680
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	ds_load_u8 v166, v60 offset:6080
	ds_load_u8 v167, v60 offset:5952
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:8064
	ds_load_u8 v131, v59 offset:7936
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v60 offset:5312
	ds_load_u8 v168, v60 offset:5184
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v59 offset:7296
	ds_load_u8 v132, v59 offset:7168
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v60 offset:5568
	ds_load_u8 v169, v60 offset:5440
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_lshl_or_b32 v169, v166, 16, v157
	ds_load_u8 v157, v60 offset:4800
	ds_load_u8 v166, v60 offset:4672
	v_lshl_or_b32 v168, v168, 16, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	ds_load_u8 v166, v60 offset:5056
	ds_load_u8 v167, v60 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v166, 16, v157
	ds_load_u8 v157, v60 offset:4288
	ds_load_u8 v166, v60 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	ds_load_u8 v166, v60 offset:4544
	ds_load_u8 v170, v60 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v170, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v157
	v_wmma_i32_16x16x16_iu8 v[17:24], v[166:169], v[133:136], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v132, v59 offset:7552
	ds_load_u8 v133, v59 offset:7424
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[145:152], v[166:169], v[153:156], v[145:152] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v153, s38, v128
	s_mov_b32 s38, s30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v59 offset:6784
	ds_load_u8 v130, v59 offset:6656
	v_lshl_or_b32 v131, v133, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:7040
	ds_load_u8 v133, v59 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v133, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v59 offset:6272
	ds_load_u8 v133, v59 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v133, v129, 0xc0c0004
	ds_load_u8 v133, v59 offset:6528
	ds_load_u8 v134, v59 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v133, 16, v129
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[133:136], v153
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[129:132], v[133:136], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v102, v102, v46
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[153:156], v153 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v116, v116, v42 :: v_dual_add_f32 v115, v115, v41
	v_add_f32_e32 v112, v112, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v94, v94, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[129:132], v[153:156], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v129, v59 offset:7872
	ds_load_u8 v130, v59 offset:7744
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v123, v123, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v124, v124, v10
	v_add_f32_e32 v120, v120, v12
	v_add_f32_e32 v96, v96, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v104, v104, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:8128
	ds_load_u8 v131, v59 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v59 offset:7360
	ds_load_u8 v132, v59 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v59 offset:7616
	ds_load_u8 v157, v59 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v59 offset:6848
	ds_load_u8 v130, v59 offset:6720
	v_lshl_or_b32 v131, v157, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v59 offset:7104
	ds_load_u8 v157, v59 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v157, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v59 offset:6336
	ds_load_u8 v157, v59 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v157, v129, 0xc0c0004
	ds_load_u8 v157, v59 offset:6592
	ds_load_u8 v59, v59 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v59, 16, v129
	v_wmma_i32_16x16x16_iu8 v[25:32], v[129:132], v[133:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[129:132], v[153:156], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v60 offset:7808
	ds_load_u8 v129, v60 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v87, v87, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v103, v103, v13 :: v_dual_add_f32 v80, v80, v4
	v_dual_add_f32 v119, v119, v11 :: v_dual_add_f32 v88, v88, v2
	v_dual_add_f32 v95, v95, v15 :: v_dual_add_f32 v72, v72, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v129, v59, 0xc0c0004
	ds_load_u8 v129, v60 offset:8064
	ds_load_u8 v130, v60 offset:7936
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v64, v64, v8 :: v_dual_add_f32 v77, v77, v27
	v_add_f32_e32 v69, v69, v29
	v_add_f32_e32 v61, v61, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v111, v111, v43 :: v_dual_add_f32 v86, v86, v26
	v_dual_add_f32 v101, v101, v45 :: v_dual_add_f32 v78, v78, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v93, v93, v47 :: v_dual_add_f32 v70, v70, v30
	v_dual_add_f32 v85, v85, v25 :: v_dual_add_f32 v62, v62, v32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v60 offset:7296
	ds_load_u8 v131, v60 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v60 offset:7552
	ds_load_u8 v132, v60 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_lshl_or_b32 v132, v129, 16, v59
	ds_load_u8 v59, v60 offset:6784
	ds_load_u8 v129, v60 offset:6656
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v129, v59, 0xc0c0004
	ds_load_u8 v129, v60 offset:7040
	ds_load_u8 v130, v60 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v129, 16, v59
	ds_load_u8 v59, v60 offset:6272
	ds_load_u8 v129, v60 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v129, v59, 0xc0c0004
	ds_load_u8 v129, v60 offset:6528
	ds_load_u8 v157, v60 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v157, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v129, v129, 16, v59
	ds_load_u8 v59, v60 offset:7872
	ds_load_u8 v157, v60 offset:7744
	v_wmma_i32_16x16x16_iu8 v[33:40], v[129:132], v[133:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[129:132], v[153:156], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v71, v71, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v130, v140
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v79, v79, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v63, v63, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v157, v59, 0xc0c0004
	ds_load_u8 v157, v60 offset:8128
	ds_load_u8 v166, v60 offset:8000
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v129, v139
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v118, v118, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v131, v141
	v_cvt_f32_i32_e32 v132, v142
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v114, v114, v34 :: v_dual_add_f32 v113, v113, v33
	v_add_f32_e32 v98, v98, v40
	v_add_f32_e32 v110, v110, v36
	v_dual_add_f32 v106, v106, v38 :: v_dual_add_f32 v97, v97, v39
	v_dual_add_f32 v108, v108, v132 :: v_dual_add_f32 v107, v107, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	ds_load_u8 v166, v60 offset:7360
	ds_load_u8 v167, v60 offset:7232
	v_lshl_or_b32 v169, v157, 16, v59
	ds_load_u8 v59, v60 offset:6848
	ds_load_u8 v157, v60 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v60 offset:7616
	ds_load_u8 v168, v60 offset:7488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v157, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v168, v167, 16, v166
	ds_load_u8 v157, v60 offset:7104
	ds_load_u8 v166, v60 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v166, v157, 0xc0c0004
	v_lshl_or_b32 v167, v157, 16, v59
	ds_load_u8 v59, v60 offset:6336
	ds_load_u8 v157, v60 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v157, v59, 0xc0c0004
	ds_load_u8 v157, v60 offset:6592
	ds_load_u8 v60, v60 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v60, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v166, v60, 16, v59
	v_cvt_f32_i32_e32 v59, v137
	v_cvt_f32_i32_e32 v60, v138
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v105, v105, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[166:169], v[133:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[166:169], v[153:156], v[145:152] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v133, v143
	v_cvt_f32_i32_e32 v134, v144
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v122, v122, v60
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s33, v53
	v_add_nc_u32_e32 v5, s33, v57
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s33, s33, s15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s33, v53
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v90, v90, v18 :: v_dual_add_nc_u32 v13, s33, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v74, v74, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v66, v66, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s29, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s36, s29, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v135, v145
	v_cvt_f32_i32_e32 v136, v146
	v_cvt_f32_i32_e32 v137, v147
	v_cvt_f32_i32_e32 v138, v148
	v_cvt_f32_i32_e32 v139, v149
	v_cvt_f32_i32_e32 v140, v150
	v_cvt_f32_i32_e32 v141, v151
	v_cvt_f32_i32_e32 v142, v152
	s_mov_b32 s33, s1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s36, 12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v89, v89, v17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s29, s1, 0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v109, v109, v35 :: v_dual_add_f32 v82, v82, v20
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s30, s29, 0x8000
	v_add_nc_u32_e32 v17, s29, v58
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s29, s29, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v81, v81, v19 :: v_dual_add_f32 v100, v100, v134
	v_dual_add_f32 v73, v73, v21 :: v_dual_add_f32 v92, v92, v136
	v_dual_add_f32 v65, v65, v23 :: v_dual_add_f32 v84, v84, v138
	v_dual_add_f32 v121, v121, v59 :: v_dual_add_f32 v76, v76, v140
	v_dual_add_f32 v117, v117, v129 :: v_dual_add_f32 v68, v68, v142
	v_add_f32_e32 v99, v99, v133
	v_add_f32_e32 v91, v91, v135
	v_add_f32_e32 v83, v83, v137
	v_add_f32_e32 v75, v75, v139
	v_add_f32_e32 v67, v67, v141
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s39, s37, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v18, s29, v55
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s1, s29, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s37, s35
	s_mov_b32 s37, s39
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v17, v[49:52] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v18, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v18, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v18, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v18, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v129, v54
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v113, 0
	s_add_i32 s38, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s29, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	v_mov_b32_e32 v114, v113
	v_mov_b32_e32 v105, v113
	v_mov_b32_e32 v101, v113
	v_mov_b32_e32 v109, v113
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v111, v113 :: v_dual_mov_b32 v112, v114
	v_dual_mov_b32 v116, v114 :: v_dual_mov_b32 v115, v113
	v_mov_b32_e32 v106, v114
	v_mov_b32_e32 v102, v114
	v_dual_mov_b32 v110, v114 :: v_dual_mov_b32 v97, v113
	v_dual_mov_b32 v98, v114 :: v_dual_mov_b32 v93, v113
	v_dual_mov_b32 v94, v114 :: v_dual_mov_b32 v89, v113
	v_dual_mov_b32 v90, v114 :: v_dual_mov_b32 v85, v113
	v_dual_mov_b32 v86, v114 :: v_dual_mov_b32 v73, v113
	v_dual_mov_b32 v74, v114 :: v_dual_mov_b32 v69, v113
	v_dual_mov_b32 v70, v114 :: v_dual_mov_b32 v81, v113
	v_dual_mov_b32 v82, v114 :: v_dual_mov_b32 v77, v113
	v_dual_mov_b32 v78, v114 :: v_dual_mov_b32 v65, v113
	v_dual_mov_b32 v66, v114 :: v_dual_mov_b32 v61, v113
	v_mov_b32_e32 v62, v114
	v_dual_mov_b32 v122, v114 :: v_dual_mov_b32 v121, v113
	v_dual_mov_b32 v124, v114 :: v_dual_mov_b32 v123, v113
	v_dual_mov_b32 v107, v113 :: v_dual_mov_b32 v108, v114
	v_dual_mov_b32 v103, v113 :: v_dual_mov_b32 v104, v114
	v_dual_mov_b32 v118, v114 :: v_dual_mov_b32 v117, v113
	v_dual_mov_b32 v120, v114 :: v_dual_mov_b32 v119, v113
	v_dual_mov_b32 v99, v113 :: v_dual_mov_b32 v100, v114
	v_dual_mov_b32 v95, v113 :: v_dual_mov_b32 v96, v114
	v_dual_mov_b32 v91, v113 :: v_dual_mov_b32 v92, v114
	v_dual_mov_b32 v87, v113 :: v_dual_mov_b32 v88, v114
	v_dual_mov_b32 v75, v113 :: v_dual_mov_b32 v76, v114
	v_dual_mov_b32 v71, v113 :: v_dual_mov_b32 v72, v114
	v_dual_mov_b32 v83, v113 :: v_dual_mov_b32 v84, v114
	v_dual_mov_b32 v79, v113 :: v_dual_mov_b32 v80, v114
	v_dual_mov_b32 v67, v113 :: v_dual_mov_b32 v68, v114
	v_dual_mov_b32 v63, v113 :: v_dual_mov_b32 v64, v114
	s_add_i32 s1, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s38, v125
	v_add_nc_u32_e32 v2, s38, v126
	v_add_nc_u32_e32 v3, s38, v127
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v1
	ds_load_b128 v[49:52], v1 offset:2048
	v_add_nc_u32_e32 v1, s38, v128
	ds_load_b128 v[45:48], v2
	ds_load_b128 v[41:44], v2 offset:2048
	ds_load_b128 v[37:40], v3
	ds_load_b128 v[33:36], v3 offset:2048
	ds_load_b128 v[29:32], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[25:28], v1 offset:2048
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s34, v216
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s34, v204
	v_add_nc_u32_e32 v2, s34, v184
	v_add_nc_u32_e32 v4, s34, v195
	v_add_nc_u32_e32 v9, s34, v218
	v_add_nc_u32_e32 v7, s34, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	ds_load_u8 v9, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v3, s34, v3
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v5, s34, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s34, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s34, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s34, v197
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s34, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s34, v188
	v_add_nc_u32_e32 v2, s34, v186
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v5, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v5, s34, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s34, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v178
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s34, v227
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s34, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v5, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v221
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v223
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v24, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v213
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, s34, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s34, v219
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s34, v234
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v23, v8, 16, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v214
	v_add_nc_u32_e32 v8, s34, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	ds_load_u8 v7, v7
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v7, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v22, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:128
	scratch_load_b32 v6, off, off offset:132
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v7, s34, v7
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v5, s34, v5
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, s34, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, s34, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v238
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v21, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v237
	v_add_nc_u32_e32 v6, s34, v236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v232
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v6, 16, v5
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v229
	v_add_nc_u32_e32 v6, s34, v228
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v7, v8, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s34, v235
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s34, v190
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v8, 16, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v202
	v_add_nc_u32_e32 v8, s34, v199
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	ds_load_u8 v7, v7
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v211
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v224
	v_add_nc_u32_e32 v6, s34, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v212
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v192
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v57, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v194
	v_add_nc_u32_e32 v6, s34, v193
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v196
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v6, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v198
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v133, v6, 16, v5
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v185
	v_add_nc_u32_e32 v6, s34, v210
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v7, v8, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s34, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v187
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v8, 16, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v189
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v6, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s34, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v131, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s34, v206
	v_add_nc_u32_e32 v6, s34, v207
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s34, v209
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v6, 16, v5
	v_dual_mov_b32 v12, s11 :: v_dual_mov_b32 v11, s10
	v_dual_mov_b32 v10, s9 :: v_dual_mov_b32 v9, s8
	v_dual_mov_b32 v8, s7 :: v_dual_mov_b32 v7, s6
	v_dual_mov_b32 v6, s5 :: v_dual_mov_b32 v5, s4
	v_wmma_i32_16x16x16_iu8 v[13:20], v[1:4], v[53:56], v[5:12] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[21:24], v[45:48], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[57:60], v[37:40], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[130:133], v[29:32], v[13:20] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v150, v14
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v151, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v177
	v_add_nc_u32_e32 v14, s34, v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v153, v15
	v_cvt_f32_i32_e32 v155, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v253
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v17, s34, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v152, v16
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s34, v242
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v154, v18
	ds_load_u8 v17, v17
	v_cvt_f32_i32_e32 v156, v20
	v_cvt_f32_i32_e32 v157, v19
	ds_load_u8 v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v86, v86, v150 :: v_dual_add_f32 v85, v85, v151
	v_dual_add_f32 v78, v78, v152 :: v_dual_add_f32 v77, v77, v153
	v_dual_add_f32 v70, v70, v154 :: v_dual_add_f32 v69, v69, v155
	v_dual_add_f32 v62, v62, v156 :: v_dual_add_f32 v61, v61, v157
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s34, v251
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v137, v14, 16, v13
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v182
	v_add_nc_u32_e32 v14, s34, v160
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s34, v175
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s34, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v17, s34, v162
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v136, v16, 16, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v183
	v_add_nc_u32_e32 v16, s34, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v17
	ds_load_u8 v15, v15
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v164
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v135, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v181
	v_add_nc_u32_e32 v14, s34, v129
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s34, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v200
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v134, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v201
	v_add_nc_u32_e32 v14, s34, v246
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s34, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v174
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v141, v14, 16, v13
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v159
	v_add_nc_u32_e32 v14, s34, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s34, v163
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s34, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v17, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v140, v16, 16, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v241
	v_add_nc_u32_e32 v16, s34, v247
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v161
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v139, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v180
	v_add_nc_u32_e32 v14, s34, v179
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s34, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v226
	v_add_nc_u32_e32 v14, s34, v231
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s34, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s34, v230
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v145, v14, 16, v13
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v248
	v_add_nc_u32_e32 v14, s34, v250
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:12 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v17, s34, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s34, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v17, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v144, v16, 16, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v14, s34, v14
	scratch_load_b32 v16, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v17, s34, v17
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s34, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s34, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off          ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v143, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s34, v249
	v_add_nc_u32_e32 v14, s34, v252
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s34, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v142, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:84
	scratch_load_b32 v14, off, off offset:80
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v15, s34, v15
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s34, v13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v149, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v13, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s34, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s34, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v16, 16, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:56
	scratch_load_b32 v14, off, off offset:48
	v_add_nc_u32_e32 v13, s34, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s34, v15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v147, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:36
	scratch_load_b32 v14, off, off offset:32
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v15, s34, v15
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s34, v13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s34, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v14, 16, v13
	v_wmma_i32_16x16x16_iu8 v[13:20], v[134:137], v[49:52], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[138:141], v[41:44], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[142:145], v[33:36], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[146:149], v[25:28], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v166, v14
	v_cvt_f32_i32_e32 v167, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v168, v16
	v_cvt_f32_i32_e32 v169, v15
	v_cvt_f32_i32_e32 v170, v18
	v_cvt_f32_i32_e32 v171, v17
	v_cvt_f32_i32_e32 v172, v20
	v_cvt_f32_i32_e32 v173, v19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[134:137], v[53:56], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[1:4], v[49:52], v[5:12] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v124, v124, v166 :: v_dual_add_f32 v123, v123, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[138:141], v[45:48], v[13:20] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v120, v120, v168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[5:12], v[21:24], v[41:44], v[5:12] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v119, v119, v169 :: v_dual_add_f32 v104, v104, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[142:145], v[37:40], v[13:20] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v103, v103, v171
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[5:12], v[57:60], v[33:36], v[5:12] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v96, v96, v172 :: v_dual_add_f32 v95, v95, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[146:149], v[29:32], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[130:133], v[25:28], v[5:12] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v3, v8
	v_cvt_f32_i32_e32 v4, v7
	v_cvt_f32_i32_e32 v5, v10
	v_cvt_f32_i32_e32 v6, v9
	v_cvt_f32_i32_e32 v7, v12
	v_cvt_f32_i32_e32 v8, v11
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v11, v18
	v_cvt_f32_i32_e32 v12, v17
	v_cvt_f32_i32_e32 v15, v20
	v_cvt_f32_i32_e32 v16, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v112, v112, v9 :: v_dual_add_f32 v111, v111, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v102, v102, v11 :: v_dual_add_f32 v101, v101, v12
	v_dual_add_f32 v94, v94, v15 :: v_dual_add_f32 v93, v93, v16
	v_dual_add_f32 v88, v88, v1 :: v_dual_add_f32 v87, v87, v2
	v_dual_add_f32 v80, v80, v3 :: v_dual_add_f32 v79, v79, v4
	v_dual_add_f32 v72, v72, v5 :: v_dual_add_f32 v71, v71, v6
	v_dual_add_f32 v64, v64, v7 :: v_dual_add_f32 v63, v63, v8
	v_dual_add_f32 v116, v116, v14 :: v_dual_add_f32 v115, v115, v13
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v201, off offset:168
	scratch_store_b32 off, v246, off offset:172
	scratch_store_b32 off, v253, off offset:176
	scratch_store_b32 off, v251, off offset:180
	scratch_store_b32 off, v254, off offset:184
	scratch_store_b32 off, v200, off offset:188
	scratch_store_b32 off, v163, off offset:192
	scratch_store_b32 off, v162, off offset:196
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s33, v177
	v_dual_mov_b32 v205, v204 :: v_dual_add_nc_u32 v2, s33, v176
	v_add_nc_u32_e32 v3, s33, v253
	v_add_nc_u32_e32 v5, s33, v245
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v4, s33, v242
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v5, v5
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	ds_load_u8 v4, v4
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v13, s8
	v_mov_b32_e32 v15, s10
	v_dual_mov_b32 v11, s6 :: v_dual_mov_b32 v14, s9
	v_mov_b32_e32 v10, s5
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v2, s33, v251
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v9, s4
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v3, s33, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v60, v2, 16, v1
	ds_load_u8 v3, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s33, v182
	v_add_nc_u32_e32 v2, s33, v160
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v4, s33, v175
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v2, s33, v240
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v5, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v59, v4, 16, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v3, s33, v183
	v_add_nc_u32_e32 v4, s33, v195
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v3, s33, v164
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v58, v2, 16, v1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s33, v181
	v_add_nc_u32_e32 v2, s33, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v2, s33, v165
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v57, v2, 16, v1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s33, v204
	v_add_nc_u32_e32 v2, s33, v184
	v_mov_b32_e32 v204, v184
	v_mov_b32_e32 v184, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[130:137], v[57:60], v[49:52], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s33, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s33, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v3, s33, v197
	v_mov_b32_e32 v197, v195
	v_mov_b32_e32 v195, v188
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v141, v2, 16, v1
	ds_load_u8 v3, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s33, v188
	v_add_nc_u32_e32 v2, s33, v186
	v_mov_b32_e32 v188, v186
	v_mov_b32_e32 v186, v227
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v4, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:108 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v5, s33, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v5
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v4, s33, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v4, 16, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s33, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s33, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v139, v2, 16, v1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s33, v227
	v_dual_mov_b32 v227, v226 :: v_dual_add_nc_u32 v2, s33, v178
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s33, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s33, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v2, 16, v1
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[53:56], v[9:16] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v57, s33, v218
	scratch_load_b32 v58, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[138:141], v[53:56], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[138:141], v[49:52], v[9:16] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v201
	v_add_nc_u32_e32 v50, s33, v246
	v_add_nc_u32_e32 v51, s33, v200
	v_add_nc_u32_e32 v53, s33, v162
	v_add_nc_u32_e32 v52, s33, v255
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v49, v49
	ds_load_u8 v50, v50
	ds_load_u8 v51, v51
	ds_load_u8 v53, v53
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v56, s33, v216
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v52, v52
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v55, s33, v222
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v57, v57
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v161
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v56, v56
	ds_load_u8 v55, v55
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v50, s33, v254
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v51, s33, v174
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v52, s33, v163
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v53, v52, 0xc0c0004
	v_lshl_or_b32 v52, v50, 16, v49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v159
	v_add_nc_u32_e32 v50, s33, v158
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v51, v53, 16, v51
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v53, s33, v241
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v49, v49
	ds_load_u8 v50, v50
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v50, s33, v243
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v53, v50, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v53, s33, v179
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v50, v50, 16, v49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v180
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v53, v53
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v53, s33, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v49, v53, 16, v49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v53, s33, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v54
	v_wmma_i32_16x16x16_iu8 v[130:137], v[49:52], v[41:44], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v53, v53
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[45:48], v[1:8] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v50, s33, v211
	v_add_nc_u32_e32 v49, s33, v234
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v50, v50
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v223
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v55, s33, v217
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v55, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v56, s33, v219
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v56, v56
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s33, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v57, v56, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v54, off, off offset:144 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v53, s33, v213
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v55, v57, 16, v55
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v57, s33, v214
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v53, v53
	ds_load_u8 v57, v57
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s33, v54
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v54, s33, v215
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v57, v54, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v57, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v54, v54, 16, v53
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v53, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v57, s33, v57
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s33, v53
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v57, v57
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v57, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v57, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, s33, v57
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v57, 16, v53
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[41:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v41, s33, v226
	v_add_nc_u32_e32 v42, s33, v231
	v_add_nc_u32_e32 v44, s33, v247
	scratch_load_b32 v43, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[45:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v44, v44
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v48, s33, v232
	v_dual_mov_b32 v226, v231 :: v_dual_add_nc_u32 v47, s33, v238
	v_mov_b32_e32 v231, v230
	scratch_load_b32 v45, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v48, v48
	ds_load_u8 v47, v47
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v46, off, off          ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v42, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s33, v43
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v43, v43
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s33, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s33, v46
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s33, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v43, s33, v230
	v_dual_mov_b32 v230, v247 :: v_dual_mov_b32 v247, v248
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v44, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s33, v44
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v41, s33, v248
	v_add_nc_u32_e32 v42, s33, v250
	v_mov_b32_e32 v248, v250
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v43, v45, 16, v43
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v45, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	v_mov_b32_e32 v250, v249
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v42, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s33, v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v45, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s33, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v45, s33, v252
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v42, v42, 16, v41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v41, s33, v249
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v45, v45
	v_mov_b32_e32 v249, v252
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v45, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s33, v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v46, s33, v236
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v41, v45, 16, v41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v45, s33, v237
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v46, v46
	v_wmma_i32_16x16x16_iu8 v[130:137], v[41:44], v[33:36], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v45, v45
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[37:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v41, s33, v208
	scratch_load_b32 v42, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v46, s33, v239
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v47, s33, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v48, s33, v235
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v49, v48, 0xc0c0004
	v_lshl_or_b32 v48, v46, 16, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v45, s33, v229
	v_add_nc_u32_e32 v46, s33, v228
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v47, v49, 16, v47
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v202
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v46, s33, v203
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v49, v46, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v224
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v45, s33, v225
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v49, v49
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v49, v45, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v49, s33, v212
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v49, 16, v45
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[33:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:84
	scratch_load_b32 v35, off, off offset:88
	scratch_load_b32 v34, off, off offset:80
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[37:40], v[17:24] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v40, s33, v190
	v_add_nc_u32_e32 v38, s33, v196
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:72
	scratch_load_b32 v36, off, off offset:64
	v_add_nc_u32_e32 v39, s33, v198
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v42, s33, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v42, v42
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v33, s33, v33
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v35, s33, v35
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v35, v35
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s33, v36
	v_add_nc_u32_e32 v37, s33, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v35, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, s33, v35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v36, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s33, v36
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v35, v37, 16, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:56
	scratch_load_b32 v34, off, off offset:48
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s33, v33
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s33, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v37, v37
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s33, v193
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s33, v194
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s33, v192
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s33, v199
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s33, v191
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s33, v185
	v_add_nc_u32_e32 v37, s33, v210
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v39, v39, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s33, v187
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s33, v189
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v37, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s33, v206
	v_add_nc_u32_e32 v37, s33, v207
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s33, v209
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v41, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v41, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v37, v37, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[25:28], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v90, v90, v18 :: v_dual_add_f32 v89, v89, v17
	v_dual_add_f32 v82, v82, v20 :: v_dual_add_f32 v81, v81, v19
	v_dual_add_f32 v74, v74, v22 :: v_dual_add_f32 v73, v73, v21
	v_dual_add_f32 v66, v66, v24 :: v_dual_add_f32 v65, v65, v23
	v_dual_add_f32 v92, v92, v10 :: v_dual_add_f32 v91, v91, v9
	v_dual_add_f32 v84, v84, v12 :: v_dual_add_f32 v83, v83, v11
	v_dual_add_f32 v76, v76, v14 :: v_dual_add_f32 v75, v75, v13
	v_dual_add_f32 v68, v68, v16 :: v_dual_add_f32 v67, v67, v15
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, s33, v41
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v41, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v41, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s33, v41
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v41, 16, v33
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[33:36], v[25:28], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v25, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v26, v130
	v_cvt_f32_i32_e32 v27, v133
	v_cvt_f32_i32_e32 v28, v132
	v_cvt_f32_i32_e32 v29, v135
	v_cvt_f32_i32_e32 v30, v134
	v_cvt_f32_i32_e32 v31, v137
	v_cvt_f32_i32_e32 v32, v136
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v110, v110, v4 :: v_dual_add_f32 v109, v109, v3
	v_dual_add_f32 v106, v106, v6 :: v_dual_add_f32 v105, v105, v5
	v_dual_add_f32 v98, v98, v8 :: v_dual_add_f32 v97, v97, v7
	v_dual_add_f32 v122, v122, v25 :: v_dual_add_f32 v121, v121, v26
	v_dual_add_f32 v118, v118, v27 :: v_dual_add_f32 v117, v117, v28
	v_dual_add_f32 v108, v108, v29 :: v_dual_add_f32 v107, v107, v30
	v_dual_add_f32 v100, v100, v31 :: v_dual_add_f32 v99, v99, v32
	v_dual_add_f32 v114, v114, v2 :: v_dual_add_f32 v113, v113, v1
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_mov_b32_e32 v205, v204
	v_mov_b32_e32 v204, v184
	v_dual_mov_b32 v184, v197 :: v_dual_mov_b32 v197, v195
	v_dual_mov_b32 v195, v188 :: v_dual_mov_b32 v188, v186
	v_dual_mov_b32 v186, v227 :: v_dual_mov_b32 v227, v226
	v_dual_mov_b32 v226, v231 :: v_dual_mov_b32 v231, v230
	v_dual_mov_b32 v230, v247 :: v_dual_mov_b32 v247, v248
	v_mov_b32_e32 v248, v250
	v_dual_mov_b32 v250, v249 :: v_dual_mov_b32 v249, v252
.LBB0_13:
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v1, s30, v125
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v3, s30, v127
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s30, v126
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v4, s30, v128
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(5)
	ds_load_b128 v[45:48], v1
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[33:36], v1 offset:2048
	ds_load_b128 v[41:44], v2
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[25:28], v2 offset:2048
	ds_load_b128 v[37:40], v3
	ds_load_b128 v[29:32], v3 offset:2048
	ds_load_b128 v[21:24], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[251:254], v4 offset:2048
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_dual_mov_b32 v19, v177 :: v_dual_mov_b32 v162, v175
	v_dual_mov_b32 v163, v176 :: v_dual_mov_b32 v246, v174
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_mov_b32_e32 v149, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v12, s29, v238
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s29, v205
	v_add_nc_u32_e32 v2, s29, v204
	v_add_nc_u32_e32 v4, s29, v197
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s29, v216
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s29, v218
	v_add_nc_u32_e32 v13, s29, v232
	v_add_nc_u32_e32 v7, s29, v222
	v_add_nc_u32_e32 v14, s29, v234
	v_add_nc_u32_e32 v15, s29, v211
	v_add_nc_u32_e32 v16, s29, v196
	v_add_nc_u32_e32 v49, s29, v198
	v_add_nc_u32_e32 v50, s29, v190
	scratch_load_b32 v3, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	ds_load_u8 v10, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v17, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:136
	scratch_load_b32 v6, off, off offset:96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v49, v49
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v3, s29, v3
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v5, s29, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v11, s29, v11
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s29, v6
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s29, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v11
	ds_load_u8 v6, v6
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s29, v184
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s29, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s29, v195
	v_add_nc_u32_e32 v2, s29, v188
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v5, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v5, s29, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s29, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s29, v178
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s29, v186
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s29, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s29, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v5, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s29, v221
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s29, v223
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s29, v217
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v8, s29, v219
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:144 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v5, s29, v213
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v7, v10, 16, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s29, v214
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v10, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, s29, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s29, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v10, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v6, v6, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s29, v10
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s29, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v10, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s29, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v11, s29, v236
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v5, v10, 16, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s29, v237
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v11
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v11, s29, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v12, s29, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s29, v235
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v14, v13, 0xc0c0004
	v_lshl_or_b32 v13, v11, 16, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s29, v229
	v_add_nc_u32_e32 v11, s29, v228
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v12, v14, 16, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v202
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v11, v11
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v11, s29, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v224
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s29, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v212
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v193
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v10, v14, 16, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v194
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v199
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v15, 16, v14
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v185
	v_add_nc_u32_e32 v15, s29, v210
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v49, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v49, s29, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v189
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v49, 16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v187
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v56, s11 :: v_dual_mov_b32 v55, s10
	v_dual_mov_b32 v54, s9 :: v_dual_mov_b32 v53, s8
	ds_load_u8 v16, v16
	v_dual_mov_b32 v52, s7 :: v_dual_mov_b32 v51, s6
	v_dual_mov_b32 v50, s5 :: v_dual_mov_b32 v49, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[1:4], v[45:48], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[5:8], v[41:44], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[10:13], v[37:40], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v208
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v207
	v_add_nc_u32_e32 v15, s29, v206
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v209
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v57, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v19
	v_add_nc_u32_e32 v15, s29, v163
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[130:137], v[57:60], v[21:24], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	v_cvt_f32_i32_e32 v126, v134
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v134, s29, v242
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v125, v130
	v_cvt_f32_i32_e32 v130, v135
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v135, s29, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v128, v132
	ds_load_u8 v134, v134
	v_cvt_f32_i32_e32 v132, v133
	v_cvt_f32_i32_e32 v133, v137
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v131, v136
	ds_load_u8 v135, v135
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s29, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v148, v15, 16, v14
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v182
	v_add_nc_u32_e32 v15, s29, v160
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v134, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v134, s29, v162
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v134, v134
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v134, 16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v183
	v_add_nc_u32_e32 v134, s29, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v134, v134
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v164
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v146, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v181
	v_add_nc_u32_e32 v15, s29, v129
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v145, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:168
	scratch_load_b32 v15, off, off offset:172
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[137:144], v[145:148], v[33:36], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[145:148], v[45:48], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[33:36], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[5:8], v[25:28], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[10:13], v[29:32], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[251:254], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v145, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v148, v52
	v_cvt_f32_i32_e32 v146, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v147, v55
	v_cvt_f32_i32_e32 v149, v56
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s29, v16
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s29, v14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v153, v15, 16, v14
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v159
	v_add_nc_u32_e32 v15, s29, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v134, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v134, s29, v17
	scratch_load_b32 v17, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v134, v134
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, s29, v17
	scratch_load_b32 v17, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v135, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v134, 16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v241
	v_add_nc_u32_e32 v134, s29, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v134, v134
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v161
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v151, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v180
	v_add_nc_u32_e32 v15, s29, v179
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s29, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v227
	v_add_nc_u32_e32 v15, s29, v226
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[137:144], v[150:153], v[25:28], v[137:144] neg_lo:[1,1,0]
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	v_wmma_i32_16x16x16_iu8 v[166:173], v[150:153], v[41:44], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s29, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s29, v231
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v157, v15, 16, v14
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v247
	v_add_nc_u32_e32 v15, s29, v248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v134, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v134, s29, v17
	scratch_load_b32 v17, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v134, v134
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v135, s29, v17
	scratch_load_b32 v17, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v135, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v134, 16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v134, s29, v17
	scratch_load_b32 v17, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v134, v134
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s29, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off          ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v155, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s29, v250
	v_add_nc_u32_e32 v15, s29, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s29, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v154, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:84
	scratch_load_b32 v15, off, off offset:80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[137:144], v[154:157], v[29:32], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[154:157], v[37:40], v[166:173] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s29, v16
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s29, v14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v177, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s29, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v134, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v134, s29, v17
	scratch_load_b32 v17, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v134, v134
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, s29, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v135, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v134, 16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:56
	scratch_load_b32 v15, off, off offset:48
	v_add_nc_u32_e32 v14, s29, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s29, v16
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v175, v15, 16, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:36
	scratch_load_b32 v15, off, off offset:32
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v16, s29, v16
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s29, v14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s29, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v15, 16, v14
	v_wmma_i32_16x16x16_iu8 v[137:144], v[174:177], v[251:254], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[174:177], v[21:24], v[166:173] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v134, v137
	v_cvt_f32_i32_e32 v136, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v135, v141
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v141, v144
	v_cvt_f32_i32_e32 v142, v49
	v_cvt_f32_i32_e32 v144, v50
	v_cvt_f32_i32_e32 v143, v53
	v_cvt_f32_i32_e32 v151, v168
	v_cvt_f32_i32_e32 v154, v169
	v_cvt_f32_i32_e32 v150, v170
	v_cvt_f32_i32_e32 v152, v171
	v_cvt_f32_i32_e32 v153, v172
	v_cvt_f32_i32_e32 v156, v173
	v_cvt_f32_i32_e32 v155, v166
	v_cvt_f32_i32_e32 v157, v167
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v6, v245 :: v_dual_mov_b32 v7, v244
	v_mov_b32_e32 v8, v242
	v_dual_mov_b32 v242, v159 :: v_dual_mov_b32 v245, v161
	v_dual_mov_b32 v159, v183 :: v_dual_mov_b32 v244, v158
	v_dual_mov_b32 v161, v181 :: v_dual_mov_b32 v158, v182
	v_dual_mov_b32 v17, v179 :: v_dual_mov_b32 v18, v180
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, v178
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s4, 0
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v200, s1, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s1, v192
	v_add_nc_u32_e32 v197, s1, v195
	v_add_nc_u32_e32 v201, s1, v184
	v_add_nc_u32_e32 v3, s1, v19
	v_add_nc_u32_e32 v52, s1, v160
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v196
	v_add_nc_u32_e32 v196, s1, v188
	v_add_nc_u32_e32 v160, s1, v161
	v_add_nc_u32_e32 v5, s1, v162
	v_add_nc_u32_e32 v4, s1, v163
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v194
	v_add_nc_u32_e32 v50, s1, v159
	v_add_nc_u32_e32 v159, s1, v164
	v_add_nc_u32_e32 v51, s1, v158
	v_add_nc_u32_e32 v158, s1, v165
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v193
	v_add_nc_u32_e32 v193, s1, v186
	v_add_nc_u32_e32 v7, s1, v7
	v_add_nc_u32_e32 v6, s1, v6
	v_add_nc_u32_e32 v8, s1, v8
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v191
	v_add_nc_u32_e32 v49, s1, v240
	v_add_nc_u32_e32 v129, s1, v129
	v_add_nc_u32_e32 v167, s1, v246
	v_add_nc_u32_e32 v59, s1, v250
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v190
	v_add_nc_u32_e32 v60, s1, v249
	v_add_nc_u32_e32 v168, s1, v255
	v_add_nc_u32_e32 v169, s1, v243
	v_add_nc_u32_e32 v170, s1, v241
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v199
	v_add_nc_u32_e32 v171, s1, v242
	v_add_nc_u32_e32 v172, s1, v244
	v_add_nc_u32_e32 v173, s1, v0
	v_add_nc_u32_e32 v174, s1, v245
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v198
	v_add_nc_u32_e32 v175, s1, v18
	v_add_nc_u32_e32 v176, s1, v17
	v_add_nc_u32_e32 v11, s1, v227
	v_add_nc_u32_e32 v12, s1, v226
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v189
	v_add_nc_u32_e32 v15, s1, v231
	v_add_nc_u32_e32 v16, s1, v230
	v_add_nc_u32_e32 v55, s1, v247
	v_add_nc_u32_e32 v56, s1, v248
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v187
	v_add_nc_u32_e32 v205, s1, v205
	v_add_nc_u32_e32 v204, s1, v204
	v_add_nc_u32_e32 v213, s1, v213
	v_add_nc_u32_e32 v215, s1, v215
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v185
	v_add_nc_u32_e32 v214, s1, v214
	v_add_nc_u32_e32 v225, s1, v225
	v_add_nc_u32_e32 v224, s1, v224
	v_add_nc_u32_e32 v221, s1, v221
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v210
	v_add_nc_u32_e32 v220, s1, v220
	v_add_nc_u32_e32 v223, s1, v223
	v_add_nc_u32_e32 v217, s1, v217
	v_add_nc_u32_e32 v216, s1, v216
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v209
	v_add_nc_u32_e32 v222, s1, v222
	v_add_nc_u32_e32 v219, s1, v219
	v_add_nc_u32_e32 v218, s1, v218
	v_add_nc_u32_e32 v237, s1, v237
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v208
	v_add_nc_u32_e32 v236, s1, v236
	v_add_nc_u32_e32 v239, s1, v239
	v_add_nc_u32_e32 v233, s1, v233
	v_add_nc_u32_e32 v238, s1, v238
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v207
	v_add_nc_u32_e32 v232, s1, v232
	v_add_nc_u32_e32 v235, s1, v235
	v_add_nc_u32_e32 v234, s1, v234
	v_add_nc_u32_e32 v229, s1, v229
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v206
	v_add_nc_u32_e32 v228, s1, v228
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:184
	scratch_load_b32 v2, off, off offset:176
	scratch_store_b32 off, v1, off offset:220 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v203
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v202
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v212
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s1, v211
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v161, s1, v19
	scratch_load_b32 v19, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v212, s1, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v162, s1, v19
	scratch_load_b32 v19, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v211, s1, v1
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v163, s1, v19
	scratch_load_b32 v19, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v210, s1, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v164, s1, v19
	scratch_load_b32 v19, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v209, s1, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v165, s1, v19
	scratch_load_b32 v19, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v208, s1, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v166, s1, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_load_b32 v19, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v207, s1, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v206, s1, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v203, s1, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v202, s1, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s1, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s1, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v195, s1, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v194, s1, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v192, s1, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v191, s1, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v190, s1, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s1, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s1, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s1, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s1, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v185, s1, v1
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v184, s1, v1
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v183, s1, v1
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v182, s1, v1
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s1, v1
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v180, s1, v1
	scratch_load_b32 v1, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s1, v1
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v178, s1, v1
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v177, s1, v1
	scratch_load_b32 v1, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v1
	scratch_load_b32 v1, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s1, v1
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s1, v1
	scratch_load_b32 v1, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s1, v1
	scratch_load_b32 v1, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s1, v1
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s1, v1
	scratch_load_b32 v1, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, s1, v1
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s1, v1
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	ds_load_u8 v1, v1
	ds_load_u8 v7, v7
	ds_load_u8 v8, v8
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	ds_load_u8 v2, v2
	ds_load_u8 v51, v51
	ds_load_u8 v52, v52
	ds_load_u8 v49, v49
	ds_load_u8 v160, v160
	ds_load_u8 v129, v129
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v52, v1, 16, v3
	v_lshl_or_b32 v51, v4, 16, v2
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v129, v160, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v159, v158, 0xc0c0004
	ds_load_u8 v129, v163
	ds_load_u8 v158, v164
	ds_load_u8 v159, v161
	ds_load_u8 v160, v167
	ds_load_u8 v161, v168
	ds_load_u8 v163, v165
	ds_load_u8 v164, v166
	ds_load_u8 v162, v162
	ds_load_u8 v165, v171
	ds_load_u8 v166, v172
	ds_load_u8 v167, v169
	ds_load_u8 v168, v175
	ds_load_u8 v169, v176
	ds_load_u8 v171, v173
	ds_load_u8 v172, v174
	ds_load_u8 v170, v170
	ds_load_u8 v173, v11
	ds_load_u8 v174, v12
	ds_load_u8 v175, v9
	ds_load_u8 v176, v15
	ds_load_u8 v17, v16
	ds_load_u8 v0, v13
	ds_load_u8 v240, v14
	ds_load_u8 v241, v10
	ds_load_u8 v242, v55
	ds_load_u8 v243, v56
	ds_load_u8 v244, v53
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v57, v57
	ds_load_u8 v58, v58
	ds_load_u8 v18, v54
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v53, v158, v129, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v54, v162, v159, 0xc0c0004
	v_perm_b32 v55, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v160, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v161, v172, v171, 0xc0c0004
	v_perm_b32 v129, v164, v163, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	v_perm_b32 v158, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v159, v170, v167, 0xc0c0004
	v_lshl_or_b32 v53, v161, 16, v160
	v_lshl_or_b32 v55, v129, 16, v55
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v129, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v17, v17, v176, 0xc0c0004
	v_lshl_or_b32 v54, v159, 16, v158
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v158, v241, v175, 0xc0c0004
	v_perm_b32 v0, v240, v0, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v159, v243, v242, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v161, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v18, v244, 0xc0c0004
	scratch_load_b32 v18, off, off offset:268 ; 4-byte Folded Reload
	v_lshl_or_b32 v60, v158, 16, v129
	v_lshl_or_b32 v59, v0, 16, v17
	v_lshl_or_b32 v57, v57, 16, v161
	v_lshl_or_b32 v58, v160, 16, v159
	ds_load_u8 v0, v190
	ds_load_u8 v17, v189
	ds_load_u8 v129, v192
	ds_load_u8 v158, v186
	ds_load_u8 v159, v185
	ds_load_u8 v160, v188
	ds_load_u8 v161, v187
	ds_load_u8 v162, v191
	ds_load_u8 v163, v182
	ds_load_u8 v164, v181
	ds_load_u8 v165, v184
	ds_load_u8 v166, v178
	ds_load_u8 v167, v177
	ds_load_u8 v168, v180
	ds_load_u8 v170, v179
	ds_load_u8 v171, v183
	ds_load_u8 v172, v205
	ds_load_u8 v173, v204
	ds_load_u8 v174, v207
	ds_load_u8 v175, v201
	ds_load_u8 v176, v200
	ds_load_u8 v177, v203
	ds_load_u8 v178, v202
	ds_load_u8 v179, v206
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v169, s1, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	v_perm_b32 v6, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v162, v129, 0xc0c0004
	ds_load_u8 v129, v197
	ds_load_u8 v162, v196
	ds_load_u8 v180, v199
	ds_load_u8 v181, v193
	ds_load_u8 v182, v169
	ds_load_u8 v183, v195
	ds_load_u8 v184, v194
	ds_load_u8 v185, v198
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v186, v164, v163, 0xc0c0004
	v_lshl_or_b32 v49, v2, 16, v1
	v_lshl_or_b32 v50, v6, 16, v5
	v_lshl_or_b32 v169, v17, 16, v0
	v_perm_b32 v0, v159, v158, 0xc0c0004
	v_perm_b32 v17, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v187, v171, v165, 0xc0c0004
	v_perm_b32 v166, v167, v166, 0xc0c0004
	v_mov_b32_e32 v1, s4
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v160, v176, v175, 0xc0c0004
	v_mov_b32_e32 v7, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v171, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v159, v179, v174, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v129, v162, v129, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v177, v182, v181, 0xc0c0004
	ds_load_u8 v161, v221
	ds_load_u8 v163, v220
	ds_load_u8 v164, v223
	ds_load_u8 v165, v217
	ds_load_u8 v167, v216
	ds_load_u8 v174, v219
	ds_load_u8 v175, v218
	ds_load_u8 v176, v222
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v162, v185, v180, 0xc0c0004
	ds_load_u8 v178, v213
	ds_load_u8 v179, v212
	ds_load_u8 v180, v215
	ds_load_u8 v181, v209
	ds_load_u8 v182, v208
	ds_load_u8 v185, v211
	ds_load_u8 v188, v210
	ds_load_u8 v189, v214
	v_perm_b32 v184, v170, v168, 0xc0c0004
	v_perm_b32 v158, v173, v172, 0xc0c0004
	v_lshl_or_b32 v170, v183, 16, v177
	v_mov_b32_e32 v2, s5
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	v_lshl_or_b32 v173, v159, 16, v158
	v_lshl_or_b32 v172, v171, 16, v160
	v_lshl_or_b32 v171, v162, 16, v129
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v129, v163, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[45:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_perm_b32 v167, v167, v165, 0xc0c0004
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v168, v176, v164, 0xc0c0004
	ds_load_u8 v175, v237
	ds_load_u8 v176, v236
	ds_load_u8 v177, v239
	ds_load_u8 v183, v233
	ds_load_u8 v190, v232
	ds_load_u8 v191, v235
	ds_load_u8 v192, v234
	ds_load_u8 v193, v238
	v_wmma_i32_16x16x16_iu8 v[158:165], v[170:173], v[45:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v179, v189, v180, 0xc0c0004
	v_perm_b32 v180, v182, v181, 0xc0c0004
	v_perm_b32 v181, v188, v185, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v188, v18
	ds_load_u8 v189, v225
	ds_load_u8 v194, v224
	scratch_load_b32 v18, off, off offset:272 ; 4-byte Folded Reload
	v_lshl_or_b32 v48, v168, 16, v129
	v_lshl_or_b32 v46, v179, 16, v178
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v129, v176, v175, 0xc0c0004
	scratch_load_b32 v176, off, off offset:212 ; 4-byte Folded Reload
	v_lshl_or_b32 v45, v181, 16, v180
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v168, v190, v183, 0xc0c0004
	ds_load_u8 v182, v229
	ds_load_u8 v185, v228
	v_lshl_or_b32 v47, v174, 16, v167
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v167, v193, v177, 0xc0c0004
	v_perm_b32 v174, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v166, v184, 16, v166
	v_wmma_i32_16x16x16_iu8 v[158:165], v[45:48], v[41:44], v[158:165] neg_lo:[1,1,0]
	v_lshl_or_b32 v177, v167, 16, v129
	v_lshl_or_b32 v167, v187, 16, v186
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[37:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v179, v19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:256
	scratch_load_b32 v20, off, off offset:224
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v175, v185, v182, 0xc0c0004
	v_perm_b32 v182, v194, v189, 0xc0c0004
	s_waitcnt vmcnt(3)
	ds_load_u8 v195, v18
	scratch_load_b32 v18, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	ds_load_u8 v180, v19
	s_waitcnt vmcnt(0)
	ds_load_u8 v196, v18
	scratch_load_b32 v18, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v197, v18
	scratch_load_b32 v18, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v197, v188, 0xc0c0004
	ds_load_u8 v188, v176
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:260
	scratch_load_b32 v176, off, off offset:216
	v_lshl_or_b32 v175, v181, 16, v175
	s_waitcnt vmcnt(1)
	ds_load_u8 v183, v19
	scratch_load_b32 v19, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v189, v176
	scratch_load_b32 v176, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v190, v19
	scratch_load_b32 v19, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v191, v176
	scratch_load_b32 v176, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v193, v19
	scratch_load_b32 v19, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v192, v176
	scratch_load_b32 v176, off, off offset:208 ; 4-byte Folded Reload
	ds_load_u8 v178, v18
	s_waitcnt vmcnt(1)
	ds_load_u8 v19, v19
	s_waitcnt vmcnt(0)
	ds_load_u8 v194, v176
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:252
	scratch_load_b32 v176, off, off offset:200
	ds_load_u8 v185, v20
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v19, v179, 0xc0c0004
	s_waitcnt vmcnt(1)
	ds_load_u8 v18, v18
	s_waitcnt vmcnt(0)
	ds_load_u8 v197, v176
	scratch_load_b32 v20, off, off offset:228 ; 4-byte Folded Reload
	v_lshl_or_b32 v176, v174, 16, v168
	v_lshl_or_b32 v174, v195, 16, v182
	v_lshl_or_b32 v168, v17, 16, v0
	v_perm_b32 v0, v183, v180, 0xc0c0004
	v_perm_b32 v17, v193, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[174:177], v[37:40], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[49:52], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[170:173], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v194, v192, 0xc0c0004
	v_lshl_or_b32 v180, v17, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[166:169], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[45:48], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v49, v11
	v_cvt_f32_i32_e32 v51, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v50, v15
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[174:177], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v57, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v18, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[37:44], v[166:169], v[251:254], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v181, v19, 16, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v197, v188, 0xc0c0004
	v_cvt_f32_i32_e32 v170, v37
	v_cvt_f32_i32_e32 v173, v38
	v_cvt_f32_i32_e32 v174, v39
	v_cvt_f32_i32_e32 v177, v40
	v_cvt_f32_i32_e32 v172, v41
	v_cvt_f32_i32_e32 v175, v42
	v_cvt_f32_i32_e32 v176, v43
	s_waitcnt vmcnt(0)
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v185, 0xc0c0004
	v_perm_b32 v20, v191, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v19, 16, v18
	v_lshl_or_b32 v178, v33, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[178:181], v[21:24], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[178:181], v[251:254], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v179, v44
	v_cvt_f32_i32_e32 v52, v158
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v159
	v_cvt_f32_i32_e32 v166, v160
	v_cvt_f32_i32_e32 v169, v161
	v_cvt_f32_i32_e32 v58, v162
	v_cvt_f32_i32_e32 v167, v163
	v_cvt_f32_i32_e32 v168, v164
	v_cvt_f32_i32_e32 v171, v165
	v_cvt_f32_i32_e32 v178, v1
	v_cvt_f32_i32_e32 v180, v2
	v_cvt_f32_i32_e32 v181, v3
	v_cvt_f32_i32_e32 v182, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v183, v8
.LBB0_17:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v1, off, off offset:160
	scratch_load_b32 v195, off, off offset:164
	scratch_load_b32 v2, off, off offset:156
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s0, s14, s15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(5)
	v_add_f32_e32 v41, v85, v125
	s_waitcnt lgkmcnt(1)
	v_add_f32_e32 v23, v77, v128
	v_add_f32_e32 v128, v124, v136
	v_dual_add_f32 v44, v116, v157 :: v_dual_add_f32 v129, v102, v152
	v_dual_add_f32 v55, v96, v141 :: v_dual_add_f32 v56, v95, v139
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v49, v109, v49
	v_dual_add_f32 v60, v98, v57 :: v_dual_add_f32 v57, v97, v50
	v_dual_add_f32 v47, v90, v59 :: v_dual_add_f32 v30, v81, v166
	v_dual_add_f32 v19, v74, v167 :: v_dual_add_f32 v18, v73, v58
	v_add_f32_e32 v50, v122, v173
	v_dual_add_f32 v58, v121, v170 :: v_dual_add_f32 v59, v118, v177
	v_add_f32_e32 v139, v107, v172
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s28, s15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v38, v105, v11 :: v_dual_add_f32 v31, v82, v169
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v39, v84, v182 :: v_dual_add_f32 v20, v75, v3
	v_add_f32_e32 v11, v67, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v121, v121, v58, s2
	v_cndmask_b32_e64 v116, v116, v44, s2
	v_cndmask_b32_e64 v118, v118, v59, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v27, v79, v145
	v_dual_add_f32 v43, v87, v142 :: v_dual_add_f32 v26, v80, v148
	v_dual_add_f32 v53, v94, v156 :: v_dual_add_f32 v54, v93, v153
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v125, v100, v179 :: v_dual_add_f32 v48, v99, v176
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v105, v38, s2
	v_cndmask_b32_e64 v57, v97, v57, s2
	v_cndmask_b32_e64 v102, v102, v129, s2
	v_cndmask_b32_e64 v41, v85, v41, s2
	v_cndmask_b32_e64 v48, v99, v48, s2
	v_cndmask_b32_e64 v53, v94, v53, s2
	v_cndmask_b32_e64 v56, v95, v56, s2
	v_cndmask_b32_e64 v100, v100, v125, s2
	v_cndmask_b32_e64 v55, v96, v55, s2
	v_cndmask_b32_e64 v60, v98, v60, s2
	v_cndmask_b32_e64 v47, v90, v47, s2
	v_cndmask_b32_e64 v43, v87, v43, s2
	v_cndmask_b32_e64 v54, v93, v54, s2
	v_cndmask_b32_e64 v39, v84, v39, s2
	v_cndmask_b32_e64 v31, v82, v31, s2
	v_cndmask_b32_e64 v30, v81, v30, s2
	v_cndmask_b32_e64 v19, v74, v19, s2
	v_cndmask_b32_e64 v26, v80, v26, s2
	v_cndmask_b32_e64 v20, v75, v20, s2
	v_cndmask_b32_e64 v18, v73, v18, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v150, v101, v150 :: v_dual_add_f32 v35, v115, v155
	v_add_f32_e32 v45, v112, v154
	v_add_f32_e32 v151, v111, v151
	v_add_f32_e32 v40, v86, v127
	v_dual_add_f32 v22, v78, v132 :: v_dual_add_f32 v127, v103, v135
	v_dual_add_f32 v42, v88, v144 :: v_dual_add_f32 v135, v110, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v46, v89, v52
	v_dual_add_f32 v52, v92, v180 :: v_dual_add_f32 v51, v91, v178
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v101, v150, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v132, v119, v137 :: v_dual_add_f32 v137, v117, v174
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v122, v122, v50, s2
	v_cndmask_b32_e64 v103, v103, v127, s2
	v_cndmask_b32_e64 v52, v92, v52, s2
	v_cndmask_b32_e64 v51, v91, v51, s2
	v_cndmask_b32_e64 v42, v88, v42, s2
	v_cndmask_b32_e64 v46, v89, v46, s2
	v_cndmask_b32_e64 v40, v86, v40, s2
	v_cndmask_b32_e64 v22, v78, v22, s2
	v_cndmask_b32_e64 v119, v119, v132, s2
	v_cndmask_b32_e64 v132, v112, v45, s2
	v_cndmask_b32_e64 v117, v117, v137, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v136, v106, v12
	v_add_f32_e32 v12, v68, v183
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v139, v107, v139, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v136, v106, v136, s2
	v_cndmask_b32_e64 v12, v68, v12, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	s_waitcnt vmcnt(2)
	v_and_or_b32 v0, v0, 16, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v1, 4, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v17, 32, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(0)
	v_and_or_b32 v25, v1, 1, v2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s28, v0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, s15, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s28, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v25
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v13, s14, v25
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 4, v25
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 6, v25
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v14, s14, v7
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v24, v1, s[8:11], 0 offen
	buffer_load_u16 v32, v2, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v2, 1, v13
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v28, 10, v25
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v1, s14, v8
	.loc	1 379 14 is_stmt 0              ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v13, s14, v6
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_or_b32_e32 v29, 8, v25
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v34, v2, s[8:11], 0 offen
	v_lshlrev_b32_e32 v2, 1, v14
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v14, s0, v25, 1
	v_add_lshl_u32 v6, s0, v6, 1
	v_add_lshl_u32 v8, s0, v8, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v16, s0, v28, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v13, 1, v13
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v15, s0, v29, 1
	s_clause 0x8
	buffer_load_u16 v161, v7, s[8:11], 0 offen
	buffer_load_u16 v160, v14, s[8:11], 0 offen
	buffer_load_u16 v163, v6, s[8:11], 0 offen
	buffer_load_u16 v162, v8, s[8:11], 0 offen
	buffer_load_u16 v165, v16, s[8:11], 0 offen
	buffer_load_u16 v164, v15, s[8:11], 0 offen
	buffer_load_u16 v36, v2, s[8:11], 0 offen
	buffer_load_u16 v159, v13, s[8:11], 0 offen
	buffer_load_u16 v158, v1, s[8:11], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v13, v70, v130 :: v_dual_add_f32 v2, v61, v131
	v_dual_add_f32 v130, v123, v134 :: v_dual_add_f32 v131, v120, v140
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v106, 12, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v14, v69, v126
	v_add_f32_e32 v126, v104, v138
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v138, v108, v175
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v123, v130, s2
	v_cndmask_b32_e64 v123, v124, v128, s2
	v_cndmask_b32_e64 v124, v115, v35, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v35, 0x4c, v25
	v_or_b32_e32 v44, 0x4a, v25
	v_or_b32_e32 v45, 0x48, v25
	v_or_b32_e32 v50, 0x44, v25
	v_or_b32_e32 v58, 0x42, v25
	v_or_b32_e32 v59, 64, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v134, v114, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v138, v108, v138, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v29, s14, v29
	v_or_b32_e32 v28, s14, v28
	v_or_b32_e32 v141, s14, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v114, v134, s2
	v_cndmask_b32_e64 v120, v120, v131, s2
	v_cndmask_b32_e64 v131, v111, v151, s2
	v_cndmask_b32_e64 v134, v110, v135, s2
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v110, s14, v58
	v_or_b32_e32 v111, s14, v50
	v_or_b32_e32 v140, s14, v44
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v58, s0, v58, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v15, v72, v146 :: v_dual_add_f32 v16, v71, v143
	v_dual_add_f32 v6, v64, v149 :: v_dual_add_f32 v7, v63, v147
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v37, v83, v181 :: v_dual_lshlrev_b32 v28, 1, v28
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v50, s0, v50, 1
	v_add_lshl_u32 v44, s0, v44, 1
	v_add_lshl_u32 v35, s0, v35, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v29, 1, v29
	v_lshlrev_b32_e32 v141, 1, v141
	v_lshlrev_b32_e32 v145, 1, v110
	v_lshlrev_b32_e32 v146, 1, v111
	v_lshlrev_b32_e32 v140, 1, v140
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, 0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v8, v65, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v104, v126, s2
	v_cndmask_b32_e64 v23, v77, v23, s2
	v_cndmask_b32_e64 v27, v79, v27, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v137.h, v10.h
	v_mov_b16_e32 v115.h, v10.h
	v_mov_b16_e32 v114.h, v10.h
	v_mov_b16_e64 v135.h, v10.h
	v_mov_b16_e32 v91.h, v10.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v72, v15, s2
	v_cndmask_b32_e64 v13, v70, v13, s2
	v_cndmask_b32_e64 v7, v63, v7, s2
	v_cndmask_b32_e64 v14, v69, v14, s2
	v_cndmask_b32_e64 v16, v71, v16, s2
	v_cndmask_b32_e64 v8, v65, v8, s2
	v_cndmask_b32_e64 v2, v61, v2, s2
	v_cndmask_b32_e64 v6, v64, v6, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v17, s15, v17
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s15, s11
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or_b32_e32 v107, s14, v106
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v21, v76, v4
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v106, s0, v106, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v144, 1, v107
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v76, v21, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v33, 56, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v1, v62, v133
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v133, v113, v9
	v_add_f32_e32 v9, v66, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v4, s1, v33
	v_add3_u32 v3, s1, v33, 64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v130, v113, v133, s2
	v_cndmask_b32_e64 v133, v109, v49, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v33, 0x4e, v25
	v_or_b32_e32 v49, 0x46, v25
	v_or_b32_e32 v25, 14, v25
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v109, s14, v59
	v_or_b32_e32 v113, s14, v45
	v_or_b32_e32 v142, s14, v33
	v_or_b32_e32 v112, s14, v49
	v_or_b32_e32 v108, s14, v25
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v25, s0, v25, 1
	v_add_lshl_u32 v59, s0, v59, 1
	v_add_lshl_u32 v49, s0, v49, 1
	v_add_lshl_u32 v45, s0, v45, 1
	v_add_lshl_u32 v143, s0, v33, 1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v108, 1, v108
	v_lshlrev_b32_e32 v109, 1, v109
	v_lshlrev_b32_e32 v147, 1, v112
	v_lshlrev_b32_e32 v142, 1, v142
	v_lshlrev_b32_e32 v148, 1, v113
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_clause 0x15
	buffer_load_u16 v149, v106, s[8:11], 0 offen
	buffer_load_u16 v151, v25, s[8:11], 0 offen
	buffer_load_u16 v110, v59, s[8:11], 0 offen
	buffer_load_u16 v111, v58, s[8:11], 0 offen
	buffer_load_u16 v106, v50, s[8:11], 0 offen
	buffer_load_u16 v107, v49, s[8:11], 0 offen
	buffer_load_u16 v49, v45, s[8:11], 0 offen
	buffer_load_u16 v50, v44, s[8:11], 0 offen
	buffer_load_u16 v33, v35, s[8:11], 0 offen
	buffer_load_u16 v35, v143, s[8:11], 0 offen
	buffer_load_u16 v143, v29, s[8:11], 0 offen
	buffer_load_u16 v152, v28, s[8:11], 0 offen
	buffer_load_u16 v112, v144, s[8:11], 0 offen
	buffer_load_u16 v113, v108, s[8:11], 0 offen
	buffer_load_u16 v108, v109, s[8:11], 0 offen
	buffer_load_u16 v109, v145, s[8:11], 0 offen
	buffer_load_u16 v58, v146, s[8:11], 0 offen
	buffer_load_u16 v59, v147, s[8:11], 0 offen
	buffer_load_u16 v44, v148, s[8:11], 0 offen
	buffer_load_u16 v45, v140, s[8:11], 0 offen
	buffer_load_u16 v28, v141, s[8:11], 0 offen
	buffer_load_u16 v29, v142, s[8:11], 0 offen
	v_lshlrev_b32_e32 v142, 16, v162
	v_lshlrev_b32_e32 v141, 16, v163
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v25, 16, v24
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v144, 16, v165
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v147, 16, v158
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v24, 16, v32
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v140, 16, v160
	v_lshlrev_b32_e32 v145, 16, v164
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v67, v11, s2
	v_cndmask_b32_e64 v9, v66, v9, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v160, v24, v147
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v146, 16, v159
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v156, v24, v141 :: v_dual_mul_f32 v147, v25, v147
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v159, v24, v36 :: v_dual_lshlrev_b32 v32, 16, v34
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v155, v24, v142
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v119, v119, v160 :: v_dual_lshlrev_b32 v34, 16, v161
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v161, v24, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v148, v24, v32 :: v_dual_mul_f32 v117, v117, v155
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v142, v25, v142
	v_mul_f32_e32 v154, v24, v34
	v_mul_f32_e32 v34, v25, v34
	v_mul_f32_e32 v141, v25, v141
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v146, v25, v146 :: v_dual_mul_f32 v157, v24, v145
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v153, v24, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v34, v128, v34
	v_mul_f32_e32 v128, v134, v141
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v141, 0xbfb8aa3b, v117
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v134, v139, v157
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v32, v25, v32
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v121, v121, v153
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v140, v25, v140
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v123, v123, v159 :: v_dual_mul_f32 v32, v124, v32
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v36, v25, v36 :: v_dual_mul_f32 v131, v131, v147
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v141, 0, 0x42800000, s5
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s5
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v158, v24, v144
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v62, v1, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s14, s10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v141, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v0, v0, v148
	v_mul_f32_e32 v139, 0xbfb8aa3b, v34
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v105, v25, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v141, v141
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v105, v38, v105
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v139, 0, 0x42800000, s3
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v124, v130, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v141, v141, v159
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v36, v116, v36 :: v_dual_fmac_f32 v139, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v141, 1.0, v141
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v165, null, v141, v141, v117
	v_div_scale_f32 v166, s5, v117, v141, v117
	v_rcp_f32_e32 v175, v165
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v139, v139, v157
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v139, 1.0, v139 :: v_dual_mul_f32 v122, v122, v154
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v147, 0xbfb8aa3b, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v184, -v165, v175, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v175, v184, v175
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v147, 0, 0x42800000, s6
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v130, v133, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s6
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v133, v138, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v138, 0xbfb8aa3b, v122 :: v_dual_fmac_f32 v147, 0xbfb8aa3b, v128
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v184, v166, v175 :: v_dual_mul_f32 v153, 0xbfb8aa3b, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v138
	v_exp_f32_e32 v147, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v192, -v165, v184, v166
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v153
	v_cndmask_b32_e64 v138, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v184, v192, v175
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v153, 0, 0x42800000, s8
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v118, v118, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v147, v147, v160
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v160, null, v139, v139, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v153, 0xbfb8aa3b, v133
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v147, 1.0, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v173, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v153, v153
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v167, null, v147, v147, v128
	v_div_scale_f32 v168, s6, v128, v147, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v176, v167
	v_fma_f32 v182, -v160, v173, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v173, v182, v173
	v_fma_f32 v185, -v167, v176, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, v185, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v138, 0xbfb8aa3b, v122 :: v_dual_mul_f32 v185, v168, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v138, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v193, -v167, v185, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v185, v193, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v138, v138, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v138, 1.0, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v154, null, v138, v138, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v170, v154
	v_fma_f32 v179, -v154, v170, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v170, v179, v170
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v116, v120, v161
	v_mul_f32_e32 v120, v132, v146
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v146, 0xbfb8aa3b, v130
	v_mul_f32_e32 v132, 0xbfb8aa3b, v121
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v132
	v_cndmask_b32_e64 v146, 0, 0x42800000, s7
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v132, 0, 0x42800000, s0
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v146, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v146, v146
	v_ldexp_f32 v146, v146, v161
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v161, s3, v34, v139, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v146, 1.0, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v182, v161, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v169, null, v146, v146, v130
	v_fma_f32 v190, -v160, v182, v161
	v_div_scale_f32 v178, s7, v130, v146, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v177, v169
	v_fma_f32 v186, -v169, v177, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v140, 0xbfb8aa3b, v124 :: v_dual_fmac_f32 v177, v186, v177
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v186, v178, v177
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v140, 0, 0x42800000, s1
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, 0xbfb8aa3b, v124
	v_exp_f32_e32 v140, v140
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v140, v140, v156
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v140, 1.0, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v159, s1, v124, v140, v124
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v142, 0xbfb8aa3b, v118
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v142, 0, 0x42800000, s4
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s4
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v142, 0xbfb8aa3b, v118 :: v_dual_lshlrev_b32 v127, 16, v143
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v126, 16, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v182, v190, v173
	v_fma_f32 v194, -v169, v186, v178
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v142, v142
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v112, 16, v112
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v186, v194, v177
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v94, v25, v112
	v_mul_f32_e32 v88, v24, v108
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v95, v24, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v142, v142, v158
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v158, null, v140, v140, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v56, v56, v95 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v142, 1.0, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v172, v158
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v43, v43, v88 :: v_dual_mul_f32 v54, v54, v94
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v163, null, v142, v142, v118
	v_div_scale_f32 v164, s4, v118, v142, v118
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v174, v163
	v_fma_f32 v181, -v158, v172, 1.0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v172, v181, v172 :: v_dual_lshlrev_b32 v29, 16, v29
	v_fma_f32 v183, -v163, v174, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v181, v159, v172
	v_fmac_f32_e32 v174, v183, v174
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v189, -v158, v181, v159
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v148, 0xbfb8aa3b, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v183, v164, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v132, v132
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v181, v189, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v148
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v191, -v163, v183, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v148, 0, 0x42800000, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v183, v191, v174
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v132, v132, v155
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v155, vcc_lo, v122, v138, v122
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v148, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v132, 1.0, v132 :: v_dual_mul_f32 v179, v155, v170
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v38, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v156, null, v132, v132, v121
	v_div_scale_f32 v157, s0, v121, v132, v121
	v_fma_f32 v187, -v154, v179, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v171, v156
	v_fmac_f32_e32 v179, v187, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v154, -v154, v179, v155
	v_fma_f32 v180, -v156, v171, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v154, v154, v170, v179
	v_fmac_f32_e32 v171, v180, v171
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v122, v154, v138, v122
	v_mul_f32_e32 v180, v157, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v122, v123, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v188, -v156, v180, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v180, v188, v171
	v_fma_f32 v155, -v156, v180, v157
	v_fma_f32 v156, -v158, v181, v159
	v_fma_f32 v157, -v160, v182, v161
	v_fma_f32 v158, -v163, v183, v164
	v_fma_f32 v159, -v165, v184, v166
	v_div_fmas_f32 v155, v155, v171, v180
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v160, -v167, v185, v168
	v_div_fmas_f32 v156, v156, v172, v181
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v121, v155, v132, v121
	v_div_fmas_f32 v138, v157, v173, v182
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v124, v156, v140, v124
	v_div_fmas_f32 v132, v158, v174, v183
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v34, v138, v139, v34
	v_div_fmas_f32 v123, v159, v175, v184
	s_mov_b32 vcc_lo, s6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v121, v160, v176, v185
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v32, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v117, v123, v141, v117
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v34, v36, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v115.l, v0.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v121, v147, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v32.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v117, v119, v117
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v36, v120, v36 :: v_dual_and_b32 v115, 1, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v119, 1, v10
	v_mov_b16_e32 v10.l, v122.h
	v_cmp_o_f32_e64 s1, v32, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v0, v0, v115, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v161, -v169, v186, v178
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v32, v119, 0x7fff
	v_and_b32_e32 v115, 1, v10
	v_mov_b16_e32 v10.l, v36.h
	v_cndmask_b16 v32.l, 0x7fff, v0.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v118, v132, v142, v118
	v_div_fmas_f32 v124, v161, v177, v186
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 1, v10
	v_cmp_o_f32_e64 s4, v36, v36
	v_mov_b16_e32 v114.l, v34.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v116, v116, v118
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v118, v124, v146, v130
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v36, v0, 0x7fff
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	v_add3_u32 v115, v122, v115, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v118, v131, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.h, 0x7fff, v0.h, s4
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v0, v25, v144 :: v_dual_mul_f32 v121, 0xbfb8aa3b, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v116.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v135.l, v118.h
	v_cmp_o_f32_e64 s5, v118, v118
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v0, v136, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v136, v24, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v121
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v137.l, v117.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v139, v24, v126
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v103, v103, v136 :: v_dual_and_b32 v114, 1, v114
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v121, 0, 0x42800000, s0
	v_ldexp_f32 v38, v38, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v119, 1, v137
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v34, v114, 0x7fff
	v_and_b32_e32 v114, 1, v135
	v_cndmask_b16 v34.l, 0x7fff, v32.h, s1
	v_cndmask_b16 v32.h, 0x7fff, v115.h, vcc_lo
	v_and_b32_e32 v115, 1, v10
	v_cmp_o_f32_e64 s1, v116, v116
	v_add3_u32 v114, v118, v114, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v118, 0xbfb8aa3b, v0 :: v_dual_fmac_f32 v121, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v115, v116, v115, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v120, 1.0, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v114.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v114, v153, v162
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.h, 0x7fff, v115.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v115, v121
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v121, null, v120, v120, v134
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v114, 1.0, v114
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v118, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v119, v117, v119, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v117, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v122, null, v114, v114, v133
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v118, 0xbfb8aa3b, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v128, v121
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v115, v115, v124
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v116, v122
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.l, 0x7fff, v119.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v118, v118
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v132, s0, v134, v120, v134
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v104, v104, v139
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v119, -v121, v128, 1.0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v126, v25, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v117, -v122, v116, 1.0
	v_div_scale_f32 v124, null, v115, v115, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v118, v118, v123
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v128, v119, v128
	v_fmac_f32_e32 v116, v117, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v119, v124
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v102, v102, v126
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v117, 1.0, v118
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v118, vcc_lo, v133, v114, v133
	v_mul_f32_e32 v137, v132, v128
	v_div_scale_f32 v123, null, v117, v117, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v130, v118, v116
	v_fma_f32 v140, -v121, v137, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v131, v123
	v_fma_f32 v135, -v122, v130, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v137, v140, v128
	v_fmac_f32_e32 v130, v135, v116
	v_fma_f32 v135, -v124, v119, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v138, -v123, v131, 1.0
	v_fma_f32 v118, -v122, v130, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v119, v135, v119
	v_div_scale_f32 v135, s3, v105, v115, v105
	v_fmac_f32_e32 v131, v138, v131
	v_div_scale_f32 v138, s1, v0, v117, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v139, v135, v119
	v_div_fmas_f32 v116, v118, v116, v130
	v_fma_f32 v118, -v121, v137, v132
	v_mul_f32_e32 v122, v138, v131
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v130, -v124, v139, v135
	v_div_fixup_f32 v114, v116, v114, v133
	v_div_fmas_f32 v118, v118, v128, v137
	v_fma_f32 v121, -v123, v122, v138
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v139, v130, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v122, v121, v131
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v121, v25, v127
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v124, -v124, v139, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v123, -v123, v122, v138
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v101, v101, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v122, v123, v131, v122
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v119, v124, v119, v139
	v_div_fixup_f32 v0, v122, v117, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v105, v119, v115, v105
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v102, v0 :: v_dual_lshlrev_b32 v115, 16, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v101, v101, v105 :: v_dual_mul_f32 v102, v24, v115
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v105.h, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v105.l, v101.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v100, v100, v102
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v102, v104, v114
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v104, 16, v149
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v114, 1, v10
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v98, v25, v115 :: v_dual_and_b32 v105, 1, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v102.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v99, v24, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v114, v0, v114, 0x7fff
	v_add3_u32 v105, v101, v105, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v97, v25, v104 :: v_dual_mul_f32 v60, v60, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v99, v48, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v48.h, 0x7fff, v114.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v97, v57, v97 :: v_dual_mul_f32 v104, 0xbfb8aa3b, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v101, 0xbfb8aa3b, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v48.l, 0x7fff, v105.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v101
	v_cndmask_b32_e64 v101, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v57, v101
	v_mul_f32_e32 v101, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v101
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v57, v57, v105
	v_cndmask_b32_e64 v101, 0, 0x42800000, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v116, v118, v120, v134
	v_div_scale_f32 v117, null, v115, v115, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v103, v103, v116
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v116, 0xbfb8aa3b, v100
	v_exp_f32_e32 v101, v101
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v119, v117
	v_div_scale_f32 v124, s1, v99, v115, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v116
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v116, 1, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, s0
	v_cndmask_b32_e64 v98, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v104.l, v103.h
	v_mov_b16_e32 v104.h, v10.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v100
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v116, v102, v116, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v104, 1, v104
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v0, v0, v98
	v_cndmask_b32_e64 v98, 0, 0x42800000, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v102, v102
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v98, 0xbfb8aa3b, v60
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v57, v98, v57
	v_cndmask_b32_e64 v98, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v120, 1.0, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v57, v101, v98
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v98, v103, v104, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v101, null, v120, v120, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v104, 1.0, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v117, v119, 1.0
	v_rcp_f32_e32 v121, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v122, null, v104, v104, v97
	v_fmac_f32_e32 v119, v57, v119
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.h, 0x7fff, v116.h, s0
	v_cmp_o_f32_e64 s0, v103, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v123, v122
	v_mul_f32_e32 v116, v124, v119
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v125, -v101, v121, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.l, 0x7fff, v98.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v121, v125, v121
	v_div_scale_f32 v125, s3, v60, v120, v60
	v_fma_f32 v126, -v122, v123, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v127, v125, v121
	v_fmac_f32_e32 v123, v126, v123
	v_div_scale_f32 v114, null, v0, v0, v100
	v_div_scale_f32 v126, s4, v97, v104, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v105, v114
	v_fma_f32 v118, -v114, v105, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v105, v118, v105
	v_div_scale_f32 v118, vcc_lo, v100, v0, v100
	v_mul_f32_e32 v102, v118, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v114, v102, v118
	v_fmac_f32_e32 v102, v103, v105
	v_fma_f32 v103, -v117, v116, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v114, -v114, v102, v118
	v_mul_f32_e32 v118, v126, v123
	v_fmac_f32_e32 v116, v103, v119
	v_fma_f32 v103, -v101, v127, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v102, v114, v105, v102
	v_fma_f32 v114, -v122, v118, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v105, -v117, v116, v124
	v_fmac_f32_e32 v127, v103, v121
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v102, v0, v100
	v_fmac_f32_e32 v118, v114, v123
	v_div_fmas_f32 v103, v105, v119, v116
	v_fma_f32 v93, -v101, v127, v125
	s_mov_b32 vcc_lo, s3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v105, v25, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v101, -v122, v118, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v93, v93, v121, v127
	s_mov_b32 vcc_lo, s4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v53, v53, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v101, v101, v123, v118
	v_div_fixup_f32 v60, v93, v120, v60
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v93, v24, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v94, v101, v104, v97
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v53, v53, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.h, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v55, v55, v93 :: v_dual_mul_f32 v54, v54, v94
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v94, 16, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v53.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v93, v103, v115, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_mov_b16_e32 v60.l, v54.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v92, v24, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v56, v56, v93 :: v_dual_and_b32 v95, 1, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v54, v54
	v_and_b32_e32 v60, 1, v60
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v55, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v93, v53, v95, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v52, v92
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v91.l, v56.h
	v_add3_u32 v60, v54, v60, 0x7fff
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v54, 16, v110
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v52.h, 0x7fff, v93.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v55, 0xbfb8aa3b, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v0.h
	v_cndmask_b16 v52.l, 0x7fff, v60.h, s0
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v60, v24, v54
	v_mul_f32_e32 v54, v25, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v89, 1, v10
	v_and_b32_e32 v91, 1, v91
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v51, v51, v60 :: v_dual_mul_f32 v60, v25, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v46, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v89, v0, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v90, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v47, v47, v60
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v53 :: v_dual_mul_f32 v92, 0xbfb8aa3b, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v91, v56, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v90
	v_mul_f32_e32 v46, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v55, v55
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v92
	v_cndmask_b32_e64 v60, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v56, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v95, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v55, v55, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, s1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v103, 16, v109
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v60, v60
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_fmac_f32 v90, 0xbfb8aa3b, v54
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v86, v25, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v46
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v55, v55, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v60, v60, v92
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v93
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v98, s1, v53, v55, v53
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v92
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v40, v40, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v90, v90, v95
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v60, v60, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v46
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v95, v92
	v_div_scale_f32 v96, null, v0, v0, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v56, null, v90, v90, v54
	v_fmac_f32_e32 v94, v46, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v97, v96
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.h, 0x7fff, v89.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v100, v56
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v92, v95, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.l, 0x7fff, v91.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v89, v98, v94
	v_div_scale_f32 v91, s0, v51, v60, v51
	v_fmac_f32_e32 v95, v99, v95
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v99, -v96, v97, 1.0
	v_fma_f32 v87, -v93, v89, v98
	v_fma_f32 v101, -v56, v100, 1.0
	v_mul_f32_e32 v102, v91, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v99, v97
	v_div_scale_f32 v99, s3, v47, v0, v47
	v_fmac_f32_e32 v100, v101, v100
	v_div_scale_f32 v101, s4, v54, v90, v54
	v_fmac_f32_e32 v89, v87, v94
	v_fma_f32 v87, -v92, v102, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v104, v99, v97 :: v_dual_mul_f32 v105, v101, v100
	v_fma_f32 v93, -v93, v89, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v102, v87, v95
	v_fma_f32 v87, -v96, v104, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v56, v105, v101
	v_div_fmas_f32 v89, v93, v94, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v92, v102, v91
	v_dual_fmac_f32 v104, v87, v97 :: v_dual_fmac_f32 v105, v98, v100
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v91, v95, v102
	v_fma_f32 v85, -v96, v104, v99
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v56, -v56, v105, v101
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v91, v25, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v87, v60, v51
	v_div_fmas_f32 v85, v85, v97, v104
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v56, v56, v100, v105
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v41, v41, v91
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v85, v0, v47
	v_div_fixup_f32 v47, v89, v55, v53
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v53, 16, v107
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v54, v56, v90, v54
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v56, v24, v103
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v40, v0 :: v_dual_mul_f32 v43, v43, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v41, v41, v54 :: v_dual_mul_f32 v54, v24, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v0.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v42, v42, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v41.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v39, v39, v54
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v42, v42, v47 :: v_dual_and_b32 v51, 1, v10
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v47, 16, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v40, 1, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v83, v37, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v0, v51, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v39
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v55, v24, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v41, v40, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
	v_cndmask_b16 v37.h, 0x7fff, v51.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v41, v54, v55
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v53, v25, v53
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s0
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v47, v25, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v51, 0xbfb8aa3b, v41
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v31, v31, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v47, v30, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v51
	v_mul_f32_e32 v54, 0xbfb8aa3b, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v42.h
	v_mov_b16_e32 v40.l, v43.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v10.h
	v_and_b32_e32 v55, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v41 :: v_dual_and_b32 v40, 1, v40
	v_ldexp_f32 v0, v0, v53
	v_mul_f32_e32 v53, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v30, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v55, v42, v55, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v53
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v43, v40, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v56, null, v0, v0, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v30, v30, v54
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v54, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v47 :: v_dual_add_f32 v60, 1.0, v30
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v53, v53
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v60, v60, v41
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v51, v30
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v56, v54, 1.0
	v_rcp_f32_e32 v82, v81
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v83, 1.0, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v53, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v42, v54
	v_div_scale_f32 v51, s1, v39, v0, v39
	v_div_scale_f32 v42, null, v83, v83, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v81, v82, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.h, 0x7fff, v55.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v84, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.l, 0x7fff, v40.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v43, v43, v47
	v_fmac_f32_e32 v82, v53, v82
	v_mul_f32_e32 v40, v51, v54
	v_div_scale_f32 v55, s0, v41, v60, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v86, -v42, v84, 1.0
	v_fma_f32 v79, -v56, v40, v51
	v_mul_f32_e32 v80, v55, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s3, v31, v83, v31
	v_fma_f32 v87, -v85, v53, 1.0
	v_fmac_f32_e32 v40, v79, v54
	v_fma_f32 v79, -v81, v80, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v88, v86, v84 :: v_dual_fmac_f32 v53, v87, v53
	v_div_scale_f32 v87, s4, v47, v43, v47
	v_fma_f32 v51, -v56, v40, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v79, v82
	v_fma_f32 v56, -v42, v88, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v87, v53
	v_div_fmas_f32 v40, v51, v54, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v81, v80, v55
	v_fmac_f32_e32 v88, v56, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v54, -v85, v79, v87
	s_mov_b32 vcc_lo, s0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v56, v24, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v51, v51, v82, v80
	v_fma_f32 v42, -v42, v88, v86
	v_fmac_f32_e32 v79, v54, v53
	s_mov_b32 vcc_lo, s3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v54, v25, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v40, v0, v39
	v_div_fmas_f32 v42, v42, v84, v88
	v_fma_f32 v55, -v85, v79, v87
	s_mov_b32 vcc_lo, s4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v23, v23, v54
	v_mul_f32_e32 v27, v27, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v42, v83, v31
	v_div_fmas_f32 v53, v55, v53, v79
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v55, v25, v59 :: v_dual_lshlrev_b32 v42, 16, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v51, v60, v41
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v39, 16, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v53, v43, v47
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v22, v22, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v58, v24, v59 :: v_dual_mul_f32 v27, v27, v41
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v23, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v22, v22, v31 :: v_dual_mul_f32 v31, v24, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.h, v10.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v26, v26, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v23.h
	v_mov_b16_e32 v10.l, v22.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v21, v21, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v22, v22
	v_cmp_o_f32_e64 s1, v23, v23
	v_and_b32_e32 v31, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v40, 0xbfb8aa3b, v21 :: v_dual_and_b32 v41, 1, v10
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v43, v24, v39 :: v_dual_mul_f32 v0, v26, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v23, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v41, v22, v41, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v20, v43
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v39, v25, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v31.h, s1
	v_cndmask_b16 v20.h, 0x7fff, v41.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v18, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v0.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v27, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v40
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v40, v25, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v0, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v19, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v26, v26, v31
	v_mul_f32_e32 v39, 0xbfb8aa3b, v19
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v18
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v27.h
	v_mov_b16_e32 v31.h, v10.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v41
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v26, v26, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v23, v23, v40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v19
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v0, v41, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, s0, v21, v26, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v23, v23, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v42, v40, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_and_b32 v31, 1, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v53, v47
	v_div_scale_f32 v56, s1, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v40, v50, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v0, v0, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v27, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v54, v41, v40 :: v_dual_add_f32 v39, 1.0, v39
	v_fma_f32 v49, -v47, v53, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v42, v54, v41
	v_div_scale_f32 v50, null, v39, v39, v19
	v_fmac_f32_e32 v53, v49, v53
	v_rcp_f32_e32 v49, v51
	v_fmac_f32_e32 v54, v27, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v43.l, 0x7fff, v31.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v56, v53
	v_fma_f32 v41, -v42, v54, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v60, -v47, v58, v56
	v_fma_f32 v27, -v51, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v40, v41, v40, v54
	v_fma_f32 v59, -v50, v55, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v58, v60, v53
	v_fmac_f32_e32 v49, v27, v49
	v_div_scale_f32 v27, s5, v18, v0, v18
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, s4, v19, v39, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v60, v27, v49
	v_fma_f32 v41, -v47, v58, v56
	v_mul_f32_e32 v42, v59, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v51, v60, v27
	v_div_fmas_f32 v41, v41, v53, v58
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v50, v42, v59
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v53, v25, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v54, v49
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v45, v24, v45 :: v_dual_fmac_f32 v42, v47, v55
	v_mul_f32_e32 v47, v25, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v51, v60, v27
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v13, v13, v53
	v_mul_f32_e32 v15, v15, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v50, v42, v59
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v14, v14, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v50, v55, v42
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v27, v27, v49, v60
	v_div_fixup_f32 v19, v42, v39, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v27, v0, v18
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v18, v24, v44 :: v_dual_mul_f32 v13, v13, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v14, v0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v14, v16, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v41, v23, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v40, v26, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v14, v14, v18 :: v_dual_lshlrev_b32 v21, 16, v35
	v_dual_mul_f32 v15, v15, v16 :: v_dual_and_b32 v18, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v22, v24, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v13, v18, 0x7fff
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_lshlrev_b32_e32 v18, 16, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v0, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v12, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v16.h, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v19, v24, v18
	v_mul_f32_e32 v18, v25, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v15.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v11, v19
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v19, v25, v21 :: v_dual_mul_f32 v8, v8, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v10.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v9, v9, v19 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v18, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v15, v22, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v13, v13, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v19, v19, v23
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v13, v13, v12
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v9
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v26
	v_div_scale_f32 v39, s0, v12, v13, v12
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v21, v21, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v19, v19, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v15, null, v21, v21, v8
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v23
	v_fmac_f32_e32 v27, v31, v27
	v_rcp_f32_e32 v41, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v35, null, v18, v18, v9
	v_mul_f32_e32 v42, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v31, v35
	v_fma_f32 v40, -v23, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v45, -v26, v42, v39
	v_fma_f32 v47, -v15, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v11, v19, v11
	v_fmac_f32_e32 v41, v47, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v35, v31, 1.0
	v_div_scale_f32 v47, s4, v8, v21, v8
	v_dual_mul_f32 v49, v40, v33 :: v_dual_fmac_f32 v42, v45, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v44, v31
	v_div_scale_f32 v44, s3, v9, v18, v9
	v_fma_f32 v45, -v23, v49, v40
	v_mul_f32_e32 v51, v47, v41
	v_fma_f32 v26, -v26, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v50, v44, v31 :: v_dual_fmac_f32 v49, v45, v33
	v_fma_f32 v45, -v15, v51, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v27, v42
	v_fma_f32 v39, -v35, v50, v44
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v23, -v23, v49, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v51, v45, v41 :: v_dual_fmac_f32 v50, v39, v31
	v_div_fmas_f32 v23, v23, v33, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v15, v51, v47
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v27, -v35, v50, v44
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v33, v25, v28
	v_mul_f32_e32 v25, v25, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v31, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v2, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v15, v41, v51
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v1, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v27, v18, v9
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v31, v24, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v14.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v15, v21, v8
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v15, v24, v28
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.h, v10.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v6, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v2, v8 :: v_dual_mul_f32 v7, v7, v15
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v23, v19, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v9.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v14, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v2, v2
	v_and_b32_e32 v8, 1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v9.l, v7.h
	v_cndmask_b16 v22.l, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v2, v8, 0x7fff
	v_and_b32_e32 v2, 16, v195
	v_and_b32_e32 v9, 1, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v26, v13, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v12, 0x7632
	v_cmp_o_f32_e64 s2, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v6, v6, v11 :: v_dual_and_b32 v11, 1, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v11, v1, v11, 0x7fff
	v_add3_u32 v1, v7, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v9, v6, v10, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v11.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_mov_b32_e32 v10, 0x5410
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v12, 0x3276, v12, vcc_lo
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_cndmask_b32_e32 v8, v36, v52, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v7, v34, v48, vcc_lo
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v10, v10, 8, v10
	v_dual_cndmask_b32 v11, v0, v37 :: v_dual_cndmask_b32 v0, v37, v0
	v_cndmask_b32_e32 v13, v6, v20, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 0x760076, v12
	v_and_b32_e32 v10, 0x540054, v10
	v_cndmask_b32_e32 v6, v20, v6, vcc_lo
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v15, v32, v57 :: v_dual_cndmask_b32 v18, v38, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v10, 4, v10
	v_lshl_or_b32 v10, v12, 4, v12
	v_cndmask_b32_e32 v19, v30, v22, vcc_lo
	v_dual_cndmask_b32 v25, v2, v43 :: v_dual_cndmask_b32 v2, v43, v2
	v_cndmask_b32_e32 v1, v48, v34, vcc_lo
	v_cndmask_b32_e32 v9, v52, v36, vcc_lo
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x5040504, v8
	v_and_b32_e32 v26, 0x7060706, v10
	v_permlanex16_b32 v21, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v14, v57, v32, vcc_lo
	v_cndmask_b32_e32 v16, v46, v38, vcc_lo
	v_cndmask_b32_e32 v23, v22, v30, vcc_lo
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v7, v1, v24
	v_perm_b32 v7, v7, v1, v26
	v_perm_b32 v8, v20, v9, v24
	v_perm_b32 v9, v20, v9, v26
	v_perm_b32 v10, v0, v11, v24
	v_perm_b32 v11, v0, v11, v26
	v_add_lshl_u32 v0, v4, v5, 1
	v_perm_b32 v12, v21, v13, v24
	v_perm_b32 v13, v21, v13, v26
	v_add_lshl_u32 v1, v3, v5, 1
	v_perm_b32 v18, v15, v14, v24
	v_perm_b32 v19, v15, v14, v26
	v_perm_b32 v20, v22, v16, v24
	v_perm_b32 v21, v22, v16, v26
	v_perm_b32 v22, v27, v23, v24
	v_perm_b32 v24, v2, v25, v24
	v_perm_b32 v25, v2, v25, v26
	v_add_lshl_u32 v2, v4, v17, 1
	v_perm_b32 v23, v27, v23, v26
	v_add_lshl_u32 v3, v3, v17, 1
	s_clause 0x3
	buffer_store_b128 v[6:9], v0, s[12:15], 0 offen
	buffer_store_b128 v[10:13], v1, s[12:15], 0 offen
	buffer_store_b128 v[18:21], v2, s[12:15], 0 offen
	buffer_store_b128 v[22:25], v3, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 284
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
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 284
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36084
; TotalNumSgprs: 43
; NumVgprs: 256
; ScratchSize: 284
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 43
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 284
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 107
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
