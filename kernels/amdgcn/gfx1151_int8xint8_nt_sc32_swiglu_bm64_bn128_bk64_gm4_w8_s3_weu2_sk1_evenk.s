	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b32 s13, s[0:1], 0x38
	v_mov_b32_e32 v130, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v2, 16, v0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v84, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 63
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
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v97, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v109, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v117, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v119, 0
	s_mul_hi_u32 s9, s6, s9
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v121, 0
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v133, 0
	s_cselect_b32 s5, s10, s6
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v135, 0
	s_xor_b32 s5, s5, s9
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v127, 0
	s_sub_i32 s5, s5, s9
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v129, 0
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v137, 0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_mov_b32_e32 v140, 0
	v_lshrrev_b32_e32 v28, 1, v0
	s_mov_b32 s12, 0
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v46, v3, 16, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v47, 32, v46
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s9, s10
	s_add_i32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s14, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s2, s14
	v_cmp_eq_u32_e64 s2, 0, v2
	s_sub_i32 s5, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s5, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s5, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s7
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s4, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s16, 64
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s17, s13, 31
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s16, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s18, s17, 31
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v4, 0x60, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s18, s18, 27
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s16, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s17, s17, s18
.Ltmp21:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v4
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s29, s16, 6
.Ltmp23:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s17, 5
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v4, 4, v4
.Ltmp24:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s15, 7
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v25, 5, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v5, 4, v0
	v_lshlrev_b32_e32 v6, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v23, 2, v0
	v_lshlrev_b32_e32 v24, 2, v0
	v_bfe_i32 v27, v0, 3, 1
	v_bfe_i32 v0, v0, 2, 1
	v_and_or_b32 v4, 0x160, v25, v4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 4, v2
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v24, 0x210, v24
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v25, 0x90, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v0, 0x90, v0, v4
	v_or_b32_e32 v4, s28, v46
	v_or_b32_e32 v7, v2, v3
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v2, 16, v5
	v_and_b32_e32 v5, 0xf70, v5
	v_lshl_or_b32 v1, v1, 5, v24
	v_mul_lo_u32 v4, v4, s30
	v_or_b32_e32 v24, s28, v47
	v_mov_b32_e32 v138, 0
	v_xor_b32_e32 v5, v25, v5
	v_xor_b32_e32 v25, 16, v1
	v_add_nc_u32_e32 v1, 0, v1
	v_and_b32_e32 v3, 24, v6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v22, 2, v7
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, v24, s30
	v_and_b32_e32 v6, 0x778, v6
	v_cndmask_b32_e64 v26, 0x90, 0, s2
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v1, 0, v25
	v_or_b32_e32 v21, 4, v7
	v_xor_b32_e32 v6, v26, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v1, off offset:176
	v_or_b32_e32 v4, s22, v7
	v_xor_b32_e32 v26, 16, v0
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v0, 0, v0
	v_or_b32_e32 v20, 6, v7
	scratch_store_b32 off, v4, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v22
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v0, 0, v26
	v_or_b32_e32 v19, 8, v7
	scratch_store_b32 off, v4, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v21
	scratch_store_b32 off, v46, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v18, 10, v7
	v_or_b32_e32 v17, 12, v7
	v_or_b32_e32 v16, 14, v7
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v20
	scratch_store_b32 off, v47, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v15, 64, v7
	v_or_b32_e32 v14, 0x42, v7
	v_or_b32_e32 v13, 0x44, v7
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v19
	v_or_b32_e32 v12, 0x46, v7
	v_or_b32_e32 v11, 0x48, v7
	v_or_b32_e32 v10, 0x4a, v7
	v_or_b32_e32 v9, 0x4c, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:28
	scratch_store_b32 off, v28, off offset:196
	v_or_b32_e32 v4, s22, v18
	v_or_b32_e32 v8, 0x4e, v7
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v17
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b32 off, v4, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v16
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v83, 0
	scratch_store_b32 off, v4, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v15
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v75, 0
	scratch_store_b32 off, v4, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v14
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v116, 0
	scratch_store_b32 off, v4, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v13
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v135, 0
	scratch_store_b32 off, v4, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v12
	v_mov_b32_e32 v72, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v104, 0
	scratch_store_b32 off, v4, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v11
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v100, 0
	scratch_store_b32 off, v4, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v10
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v92, 0
	scratch_store_b32 off, v4, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v9
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v82, 0
	scratch_store_b32 off, v4, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v4, s22, v8
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v113, 0
	scratch_store_b32 off, v4, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v7, s0, v28
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v111, 0
	v_mov_b32_e32 v78, 0
	scratch_store_b32 off, v4, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v22
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v117, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s27, 0x31027000
	scratch_store_b32 off, v4, off offset:80 ; 4-byte Folded Spill
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v4, s23, v21
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	scratch_store_b32 off, v4, off offset:84 ; 4-byte Folded Spill
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v4, s23, v20
	s_and_b32 s11, s11, 0xffff
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s1, s23, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
	scratch_store_b32 off, v4, off offset:88 ; 4-byte Folded Spill
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v4, s23, v19
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	v_mov_b32_e32 v103, 0
	scratch_store_b32 off, v4, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v18
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	v_mov_b32_e32 v99, 0
	s_mov_b32 s6, s26
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v17
	s_mov_b32 s7, s27
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v93, 0
	scratch_store_b32 off, v4, off offset:100 ; 4-byte Folded Spill
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v4, s23, v16
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v15
	scratch_store_b32 off, v4, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v14
	scratch_store_b32 off, v4, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v13
	scratch_store_b32 off, v4, off offset:116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v12
	scratch_store_b32 off, v4, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v11
	scratch_store_b32 off, v4, off offset:124 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v10
	scratch_store_b32 off, v4, off offset:128 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s23, v9
	scratch_store_b32 off, v4, off offset:132 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v178, off, off offset:120
	scratch_load_b32 v179, off, off offset:124
	scratch_load_b32 v181, off, off offset:132
	v_add_nc_u32_e32 v4, s23, v8
	v_add_nc_u32_e32 v8, s28, v23
	scratch_store_b32 off, v4, off offset:136 ; 4-byte Folded Spill
	v_add3_u32 v4, s23, s0, v28
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	v_subrev_nc_u32_e32 v7, s0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v4, s0, v4
	v_mad_u64_u32 v[8:9], null, s13, v8, v[3:4]
	v_mad_u64_u32 v[3:4], null, s13, v4, v[2:3]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[8:9], off offset:140
	scratch_store_b64 off, v[3:4], off offset:148
	v_mad_u64_u32 v[2:3], null, s13, v7, v[2:3]
	s_mov_b32 s13, s12
	scratch_store_b64 off, v[2:3], off offset:156 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v6
	scratch_store_b32 off, v2, off offset:164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v5
	scratch_store_b32 off, v2, off offset:168 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v1, s13
	v_dual_mov_b32 v2, s14 :: v_dual_mov_b32 v3, s15
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v6, s18 :: v_dual_mov_b32 v7, s19
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	scratch_load_b64 v[8:9], off, off offset:140 ; 8-byte Folded Reload
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s16, s3, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s30
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s17, s0, s1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s3, v8
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	scratch_load_b64 v[8:9], off, off offset:156 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s3, v8
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	scratch_load_b64 v[8:9], off, off offset:148 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s3, v8
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[24:25], v16, s[24:27], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[8:11], v17, s[4:7], 0 offen
	buffer_load_b128 v[12:15], v20, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v28, off, off offset:164 ; 4-byte Folded Reload
	buffer_load_b64 v[26:27], v16, s[24:27], 0 offen offset:32
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[16:19], v17, s[4:7], 0 offen offset:32
	buffer_load_b128 v[20:23], v20, s[4:7], 0 offen offset:32
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v28, v[24:25] offset:16384
	scratch_load_b32 v24, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[8:11]
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v24, v[12:15] offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v28, v[26:27] offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v24, v[16:19] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v24, v[20:23] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v16, off, off offset:172
	scratch_load_b32 v170, off, off offset:84
	scratch_load_b32 v171, off, off offset:88
	scratch_load_b32 v172, off, off offset:92
	scratch_load_b32 v173, off, off offset:96
	scratch_load_b32 v174, off, off offset:100
	scratch_load_b32 v175, off, off offset:104
	scratch_load_b32 v177, off, off offset:112
	scratch_load_b32 v17, off, off offset:176
	scratch_load_b32 v18, off, off offset:180
	scratch_load_b32 v19, off, off offset:184
	scratch_load_b32 v169, off, off offset:80
	scratch_load_b32 v168, off, off offset:76
	scratch_load_b32 v73, off, off offset:48
	scratch_load_b32 v131, off, off offset:56
	scratch_load_b32 v165, off, off offset:64
	scratch_load_b32 v167, off, off offset:72
	s_waitcnt vmcnt(16)
	ds_load_b128 v[24:27], v16 offset:16384
	ds_load_b128 v[28:31], v16 offset:17408
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(7)
	ds_load_b128 v[8:11], v18
	ds_load_b128 v[12:15], v18 offset:2048
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[32:35], v17 offset:16384
	ds_load_b128 v[36:39], v17 offset:17408
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(6)
	ds_load_b128 v[48:51], v19
	ds_load_b128 v[56:59], v19 offset:2048
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[52:55], v18 offset:8192
	ds_load_b128 v[60:63], v18 offset:10240
	ds_load_b128 v[64:67], v19 offset:8192
	ds_load_b128 v[68:71], v19 offset:10240
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[157:160], v16 offset:18432
	ds_load_b128 v[206:209], v16 offset:19456
	ds_load_b128 v[161:164], v17 offset:18432
	ds_load_b128 v[210:213], v17 offset:19456
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[149:152], v18 offset:4096
	ds_load_b128 v[153:156], v18 offset:6144
	ds_load_b128 v[214:217], v19 offset:4096
	ds_load_b128 v[218:221], v19 offset:6144
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[222:225], v18 offset:12288
	ds_load_b128 v[226:229], v18 offset:14336
	ds_load_b128 v[230:233], v19 offset:12288
	ds_load_b128 v[234:237], v19 offset:14336
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v74, off, off offset:52
	scratch_load_b32 v132, off, off offset:60
	scratch_load_b32 v166, off, off offset:68
	scratch_load_b32 v176, off, off offset:108
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu8 v[246:253], v[52:55], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[52:55], v[28:31], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[157:160], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[149:152], v[206:209], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[8:11], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[8:11], v[28:31], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[16:23], v[12:15], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[12:15], v[28:31], v[0:7] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[8:15], v[60:63], v[24:27], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[238:245], v[48:51], v[32:35], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[182:189], v[48:51], v[36:39], v[182:189] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[48:55], v[60:63], v[28:31], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[16:23], v[56:59], v[32:35], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[56:59], v[36:39], v[40:47] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[246:253], v[64:67], v[32:35], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[68:71], v[32:35], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[190:197], v[64:67], v[36:39], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[68:71], v[36:39], v[48:55] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[24:31], v[153:156], v[157:160], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[153:156], v[206:209], v[0:7] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[222:225], v[157:160], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[226:229], v[157:160], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[141:148], v[214:217], v[161:164], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[24:31], v[218:221], v[161:164], v[24:31] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[230:233], v[161:164], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[234:237], v[161:164], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[222:225], v[206:209], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[226:229], v[206:209], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[198:205], v[214:217], v[210:213], v[198:205] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[157:164], v[230:233], v[210:213], v[157:164] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v214, v196
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v196, v148
	v_cvt_f32_i32_e32 v148, v21
	scratch_load_b32 v21, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v208, v157
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v157, v239
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v239, v14
	scratch_load_b32 v14, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[56:63], v[218:221], v[210:213], v[56:63] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[64:71], v[234:237], v[210:213], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v254, v38
	scratch_load_b32 v38, off, off offset:16 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v255, v39
	scratch_load_b32 v39, off, off offset:20 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v225, v194
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v194, v144
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v144, v48
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v48, v56
	scratch_load_b32 v56, off, off offset:24 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v220, v188
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v236, v190
	v_cvt_f32_i32_e32 v233, v193
	v_cvt_f32_i32_e32 v217, v197
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v193, v141
	v_cvt_f32_i32_e32 v197, v142
	v_cvt_f32_i32_e32 v188, v145
	v_cvt_f32_i32_e32 v190, v146
	v_cvt_f32_i32_e32 v141, v47
	v_cvt_f32_i32_e32 v142, v46
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v145, v50
	v_cvt_f32_i32_e32 v146, v53
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v47, v57
	v_cvt_f32_i32_e32 v53, v59
	v_cvt_f32_i32_e32 v46, v60
	v_cvt_f32_i32_e32 v50, v61
	v_cvt_f32_i32_e32 v57, v62
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v61, v64
	v_cvt_f32_i32_e32 v62, v65
	v_cvt_f32_i32_e32 v65, v67
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v59, off, off offset:28
	scratch_load_b32 v60, off, off offset:32
	scratch_load_b32 v64, off, off offset:36
	scratch_load_b32 v67, off, off offset:40
	v_cvt_f32_i32_e32 v227, v253
	v_cvt_f32_i32_e32 v211, v152
	v_cvt_f32_i32_e32 v152, v8
	v_cvt_f32_i32_e32 v253, v37
	scratch_load_b32 v37, off, off offset:12 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v207, v154
	v_cvt_f32_i32_e32 v154, v10
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v218, v186
	v_cvt_f32_i32_e32 v186, v201
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v201, v153
	v_cvt_f32_i32_e32 v153, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v215, v184
	v_cvt_f32_i32_e32 v184, v203
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v203, v156
	v_cvt_f32_i32_e32 v156, v12
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v222, v187
	v_cvt_f32_i32_e32 v187, v199
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v199, v155
	v_cvt_f32_i32_e32 v155, v13
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v216, v182
	v_cvt_f32_i32_e32 v223, v189
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v230, v192
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v182, v202
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v202, v164
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v189, v143
	v_cvt_f32_i32_e32 v192, v147
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v209, v149
	v_cvt_f32_i32_e32 v143, v49
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v49, v58
	v_cvt_f32_i32_e32 v58, v63
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v63, v66
	v_cvt_f32_i32_e32 v66, v68
	v_cvt_f32_i32_e32 v68, v69
	v_cvt_f32_i32_e32 v69, v70
	v_cvt_f32_i32_e32 v70, v71
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v71, v19
	v_cvt_f32_i32_e32 v147, v18
	v_cvt_f32_i32_e32 v149, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v164, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v232, v242
	v_cvt_f32_i32_e32 v242, v26
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v237, v191
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v235, v243
	v_cvt_f32_i32_e32 v243, v27
	v_cvt_f32_i32_e32 v221, v183
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v212, v158
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v158, v238
	v_cvt_f32_i32_e32 v183, v200
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v200, v161
	v_cvt_f32_i32_e32 v161, v247
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v219, v185
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v226, v195
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v195, v205
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v205, v151
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v151, v22
	v_cvt_f32_i32_e32 v191, v204
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v204, v159
	v_cvt_f32_i32_e32 v210, v160
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v159, v241
	v_cvt_f32_i32_e32 v160, v240
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v213, v150
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v150, v23
	v_cvt_f32_i32_e32 v240, v24
	v_cvt_f32_i32_e32 v241, v25
	v_cvt_f32_i32_e32 v228, v244
	v_cvt_f32_i32_e32 v244, v28
	v_cvt_f32_i32_e32 v229, v245
	v_cvt_f32_i32_e32 v245, v29
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v206, v162
	v_cvt_f32_i32_e32 v162, v246
	v_cvt_f32_i32_e32 v238, v248
	v_cvt_f32_i32_e32 v248, v32
	v_cvt_f32_i32_e32 v231, v250
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v247, v31
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v250, v34
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v185, v198
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v198, v163
	v_cvt_f32_i32_e32 v163, v249
	v_cvt_f32_i32_e32 v249, v33
	v_cvt_f32_i32_e32 v234, v251
	v_cvt_f32_i32_e32 v224, v252
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v246, v30
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v251, v35
	v_cvt_f32_i32_e32 v252, v36
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v10, v21, s0, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v8, v14, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s16, 5
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s18, s17, s22
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v11, v38, s17, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v12, v39, s17, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v14, v14, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s16, s30
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v13, v56, s17, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v21, v21, s16, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v22, s18, v172, 1
	v_add_lshl_u32 v23, s18, v173, 1
	v_add_lshl_u32 v24, s18, v174, 1
	v_add_lshl_u32 v25, s18, v175, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s16, s1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s29, s29, -1
	s_add_i32 s3, s3, 64
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v15, v59, s17, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v18, v60, s17, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v19, v64, s17, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v20, v67, s17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x6
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v26, v14, s[12:15], 0 offen
	buffer_load_u16 v14, v21, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v27, 16, v8
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v8, v27, v157 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v138, v8, v11
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v8, v37, s17, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v32, v27, v238
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v33, v27, v235 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v30, v27, v163
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v35, v27, v232
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v163, v60, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v128, v33, v18
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v232, v167, s16, 1
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v33, s18, v179, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v127, v35, v15
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v27, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v27, v148
	v_mul_f32_e32 v149, v27, v149
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v153, v27, v153 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v10, v221
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v103, v21, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v11, v10, v216
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v21, s18, v171, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v104, v11, v8
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v11, v27, v158
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v158, v37, s16, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v137, v11, v8
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v8, s18, v169, 1
	v_add_lshl_u32 v11, s18, v170, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v28, v10, v237
	v_mul_f32_e32 v29, v10, v233
	v_mul_f32_e32 v31, v10, v230
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	s_clause 0x6
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v34, v10, v218
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v36, v10, v226
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v226, v73, s16, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v145, v10, v145
	v_mul_f32_e32 v221, v10, v146
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v96, v34, v15
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v15, s18, v181, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v146, v27, v147
	v_mul_f32_e32 v147, v27, v71
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v71, 0x80000000, v158, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v106, v28, v8 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v28, v27, v161
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v105, v29, v21
	v_dual_fmac_f32 v135, v32, v11 :: v_dual_mul_f32 v32, v10, v222
	v_fmac_f32_e32 v100, v31, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v140, v28, v8
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v8, s18, v168, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v28, v10, v236 :: v_dual_fmac_f32 v95, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v102, v100
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v22, 16, v22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v98, v36, v23
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v36, v27, v234
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v136, v30, v21
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v21, v165, s17, 1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v31, v167, s17, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v130, v36, v23 :: v_dual_mul_f32 v23, v10, v225
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	v_add_lshl_u32 v161, v56, s16, 1
	v_add_lshl_u32 v222, v64, s16, 1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v11, s18, v177, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v99, v23, v22
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v27, v231
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v18, s18, v178, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v158, 0x80000000, v222, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v129, v23, v22 :: v_dual_mul_f32 v22, v10, v223
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v223, v67, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v89, v22, v20 :: v_dual_mul_f32 v22, v27, v229
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v229, v131, s16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v124, v22, v20
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v10, v220
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v92, v20, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v20, v27, v228
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v123, v20, v19
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v27, v224
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v72, v28, v8
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v28, v27, v162
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v162, v59, s16, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_store_b32 off, v72, off         ; 4-byte Folded Spill
	scratch_load_b32 v72, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v139, v28, v8 :: v_dual_lshlrev_b32 v8, 16, v13
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v13, v10, v219 :: v_dual_mul_f32 v28, v27, v160
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v160, v39, s16, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v219, v10, v52
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v97, v13, v8
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v27, v159
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v133, v28, v12
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v28, v131, s17, 1
	v_add_lshl_u32 v159, v38, s16, 1
	v_mov_b32_e32 v101, v97
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v134, v13, v8 :: v_dual_mul_f32 v13, v10, v215
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v215, off, off offset:116
	scratch_load_b32 v97, off, off offset:136
	v_fmac_f32_e32 v93, v13, v12
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v13, v73, s17, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v100, v93 :: v_dual_mov_b32 v93, v96
	v_mov_b32_e32 v96, v95
	v_mov_b32_e32 v95, v87
	v_dual_mov_b32 v87, v86 :: v_dual_mov_b32 v86, v85
	v_dual_mov_b32 v85, v82 :: v_dual_mov_b32 v82, v81
	v_dual_mov_b32 v81, v78 :: v_dual_mov_b32 v78, v77
	v_dual_mov_b32 v77, v84 :: v_dual_mov_b32 v84, v83
	v_dual_mov_b32 v83, v80 :: v_dual_mov_b32 v80, v79
	v_dual_mov_b32 v79, v76 :: v_dual_mov_b32 v76, v75
	scratch_load_b32 v75, off, off offset:128 ; 4-byte Folded Reload
	v_add_lshl_u32 v12, v74, s17, 1
	v_add_lshl_u32 v29, v132, s17, 1
	v_add_lshl_u32 v30, v166, s17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	v_add_lshl_u32 v230, v132, s16, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v22, 0x80000000, v29, s0
	v_cndmask_b32_e64 v23, 0x80000000, v30, s0
	v_add_lshl_u32 v228, v74, s16, 1
	v_add_lshl_u32 v231, v166, s16, 1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v157, s18, v176, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v8, v72, s17, 1
	v_add_lshl_u32 v225, v72, s16, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v32, s18, v215, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v35, s18, v97, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v34, s18, v75, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v20, v10, v217
	v_mul_f32_e32 v217, v10, v55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v180, v20, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v20, v27, v227
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v227, v165, s16, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s16, s16, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s29, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v165, s16, v174, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v126, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v20, v10, v214
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v24, 0x80000000, v31, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v174, s16, v215, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v215, v10, v54
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v224, s16, v168, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v94, v20, v19
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v20, 0x80000000, v28, s0
	s_clause 0x6
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v234, v12, s[8:11], 0 offen
	buffer_load_u16 v235, v20, s[8:11], 0 offen
	buffer_load_u16 v236, v22, s[8:11], 0 offen
	buffer_load_u16 v237, v21, s[8:11], 0 offen
	buffer_load_u16 v238, v23, s[8:11], 0 offen
	buffer_load_u16 v132, v24, s[8:11], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v233, s16, v169, 1
	v_add_lshl_u32 v131, s16, v170, 1
	v_add_lshl_u32 v72, s16, v171, 1
	v_add_lshl_u32 v73, s16, v172, 1
	v_add_lshl_u32 v74, s16, v173, 1
	v_add_lshl_u32 v166, s16, v175, 1
	v_add_lshl_u32 v173, s16, v177, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v175, v10, v42
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v177, v10, v51
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v125, v25, v19
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_cndmask_b32 v72, 0x80000000, v72
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v74, 0x80000000, v74
	v_dual_cndmask_b32 v165, 0x80000000, v165 :: v_dual_cndmask_b32 v166, 0x80000000, v166
	v_dual_cndmask_b32 v173, 0x80000000, v173 :: v_dual_cndmask_b32 v174, 0x80000000, v174
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v12, 16, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v10, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v88, v13, v12 :: v_dual_mul_f32 v13, v27, v17
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v17, 0x80000000, v35, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v120, v13, v12
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v10, v40
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v13, 0x80000000, v33, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v91, v12, v8
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v27, v16
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v16, 0x80000000, v34, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v119, v12, v8
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v8, 0x80000000, v11, s0
	v_cndmask_b32_e64 v11, 0x80000000, v32, s0
	v_cndmask_b32_e64 v12, 0x80000000, v18, s0
	s_clause 0x6
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v167, v11, s[8:11], 0 offen
	buffer_load_u16 v168, v12, s[8:11], 0 offen
	buffer_load_u16 v169, v13, s[8:11], 0 offen
	buffer_load_u16 v170, v16, s[8:11], 0 offen
	buffer_load_u16 v171, v15, s[8:11], 0 offen
	buffer_load_u16 v172, v17, s[8:11], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v11, v10, v143
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v143, s16, v176, 1
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v143, 0x80000000, v143 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v122, v9, v8 :: v_dual_lshlrev_b32 v9, 16, v14
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v144, v10, v144
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v176, v10, v43
	v_mul_f32_e32 v218, v10, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v220, v10, v45 :: v_dual_mul_f32 v21, v9, v204
	v_dual_mul_f32 v214, v10, v142 :: v_dual_mul_f32 v55, v9, v184
	v_dual_mul_f32 v216, v10, v141 :: v_dual_mul_f32 v19, v9, v200
	v_dual_mul_f32 v59, v9, v186 :: v_dual_fmac_f32 v90, v11, v8
	v_mul_f32_e32 v51, v9, v195
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v10, v9, v68 :: v_dual_lshlrev_b32 v43, 16, v26
	v_mul_f32_e32 v8, v9, v70
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v70, 0x80000000, v157, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v60, v9, v183
	v_mul_f32_e32 v56, v9, v182
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v18, v9, v206
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v52, v9, v191
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v70, v70, s[8:11], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v16, v9, v202
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v9, v48
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v14, v9, v62
	v_mul_f32_e32 v12, v9, v65
	v_dual_mul_f32 v11, v9, v66 :: v_dual_mul_f32 v204, v27, v156
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v202, v27, v150
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v66, s16, v75, 1
	v_dual_mov_b32 v75, v76 :: v_dual_mov_b32 v76, v79
	v_dual_mov_b32 v79, v80 :: v_dual_mov_b32 v80, v83
	v_dual_mov_b32 v83, v84 :: v_dual_mov_b32 v84, v77
	v_dual_mov_b32 v77, v78 :: v_dual_mov_b32 v78, v81
	v_dual_mov_b32 v81, v82 :: v_dual_mov_b32 v82, v85
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v43, v205
	v_dual_mov_b32 v85, v86 :: v_dual_mov_b32 v86, v87
	v_mov_b32_e32 v87, v95
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v65, v43, v192
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v141, s16, v178, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v13, v9, v63
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v63, s16, v179, 1
	v_add_lshl_u32 v68, s16, v181, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v9, v198
	v_dual_mul_f32 v15, v9, v61 :: v_dual_mul_f32 v142, v27, v152
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v61, v43, v240
	v_mul_f32_e32 v45, v9, v49
	v_dual_mul_f32 v64, v9, v187 :: v_dual_mul_f32 v187, v43, v189
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v32, v43, v203 :: v_dual_cndmask_b32 v189, 0x80000000, v233
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v182, v43, v188
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v188, 0x80000000, v224 :: v_dual_mul_f32 v67, v9, v185
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v22, v9, v212
	v_mul_f32_e32 v23, v9, v208
	v_dual_mul_f32 v20, v9, v210 :: v_dual_mul_f32 v195, v27, v239
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v47, v9, v47
	v_dual_mul_f32 v44, v9, v53 :: v_dual_mov_b32 v95, v96
	v_mul_f32_e32 v37, v9, v50
	v_dual_mul_f32 v40, v9, v46 :: v_dual_mul_f32 v191, v43, v197
	v_dual_mul_f32 v24, v9, v58 :: v_dual_mul_f32 v193, v43, v193
	v_mul_f32_e32 v25, v9, v57
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v9, v9, v69 :: v_dual_mul_f32 v200, v27, v151
	v_mul_f32_e32 v152, v27, v154
	v_mul_f32_e32 v154, v27, v155
	v_dual_mul_f32 v26, v43, v213 :: v_dual_cndmask_b32 v157, 0x80000000, v163
	v_mul_f32_e32 v28, v43, v211
	v_dual_mul_f32 v30, v43, v207 :: v_dual_cndmask_b32 v163, 0x80000000, v229
	v_dual_mul_f32 v33, v43, v199 :: v_dual_cndmask_b32 v156, 0x80000000, v162
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v58, v43, v241
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v43, v249
	v_mul_f32_e32 v35, v43, v248
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v54, v43, v243
	v_mul_f32_e32 v57, v43, v242
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v36, v43, v251
	v_mul_f32_e32 v38, v43, v250
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v50, v43, v245 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_mul_f32_e32 v53, v43, v244
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v39, v43, v253 :: v_dual_cndmask_b32 v162, 0x80000000, v228
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v46, v43, v247 :: v_dual_cndmask_b32 v141, 0x80000000, v141
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v151, 0x80000000, v160, vcc_lo
	v_cndmask_b32_e32 v155, 0x80000000, v161, vcc_lo
	v_dual_cndmask_b32 v160, 0x80000000, v225 :: v_dual_cndmask_b32 v161, 0x80000000, v226
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	v_dual_mov_b32 v96, v93 :: v_dual_mul_f32 v69, v43, v190
	v_dual_mov_b32 v93, v100 :: v_dual_mov_b32 v100, v102
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v31, v43, v201
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v62, v43, v196 :: v_dual_cndmask_b32 v183, 0x80000000, v227
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v41, v43, v252 :: v_dual_cndmask_b32 v184, 0x80000000, v231
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v49, v43, v246 :: v_dual_cndmask_b32 v186, 0x80000000, v232
	v_mul_f32_e32 v185, v43, v194
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v150, 16, v70
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v198, v27, v164
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v70, s16, v97, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v164, 0x80000000, v230 :: v_dual_mov_b32 v97, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v87, v144, v150 :: v_dual_cndmask_b32 v144, 0x80000000, v159
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v159, 0x80000000, v223 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	s_clause 0x1f
	buffer_load_u16 v144, v144, s[8:11], 0 offen
	buffer_load_u16 v71, v71, s[8:11], 0 offen
	buffer_load_u16 v189, v189, s[8:11], 0 offen
	buffer_load_u16 v188, v188, s[8:11], 0 offen
	buffer_load_u16 v155, v155, s[8:11], 0 offen
	buffer_load_u16 v151, v151, s[8:11], 0 offen
	buffer_load_u16 v72, v72, s[8:11], 0 offen
	buffer_load_u16 v131, v131, s[8:11], 0 offen
	buffer_load_u16 v157, v157, s[8:11], 0 offen
	buffer_load_u16 v156, v156, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	buffer_load_u16 v158, v158, s[8:11], 0 offen
	buffer_load_u16 v166, v166, s[8:11], 0 offen
	buffer_load_u16 v165, v165, s[8:11], 0 offen
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v160, v160, s[8:11], 0 offen
	buffer_load_u16 v173, v173, s[8:11], 0 offen
	buffer_load_u16 v143, v143, s[8:11], 0 offen
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	buffer_load_u16 v141, v141, s[8:11], 0 offen
	buffer_load_u16 v174, v174, s[8:11], 0 offen
	buffer_load_u16 v201, v183, s[8:11], 0 offen
	buffer_load_u16 v164, v164, s[8:11], 0 offen
	buffer_load_u16 v66, v66, s[8:11], 0 offen
	buffer_load_u16 v63, v63, s[8:11], 0 offen
	buffer_load_u16 v203, v186, s[8:11], 0 offen
	buffer_load_u16 v205, v184, s[8:11], 0 offen
	buffer_load_u16 v206, v70, s[8:11], 0 offen
	buffer_load_u16 v68, v68, s[8:11], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v42, v43, v255
	v_mul_f32_e32 v27, v43, v209
	v_mul_f32_e32 v43, v43, v254
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v121, v142, v150 :: v_dual_lshlrev_b32 v144, 16, v144
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v207, 16, v71
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v197, 16, v189
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v199, 16, v188
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v137, v193, v207 :: v_dual_lshlrev_b32 v194, 16, v72
	v_fmac_f32_e32 v103, v64, v144
	v_fmac_f32_e32 v97, v59, v155
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v133, v187, v151 :: v_dual_lshlrev_b32 v192, 16, v73
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v73, 16, v159
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v159, 16, v167
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v72, 16, v157
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v189, 16, v165
	v_lshlrev_b32_e32 v165, 16, v169
	v_lshlrev_b32_e32 v188, 16, v166
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v157, 16, v160
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v166, 16, v170
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v89, v51, v73 :: v_dual_lshlrev_b32 v170, 16, v172
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v160, 16, v168
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v70, 16, v141
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v82, v221, v166 :: v_dual_lshlrev_b32 v141, 16, v236
	v_dual_fmac_f32 v113, v204, v165 :: v_dual_lshlrev_b32 v186, 16, v143
	v_fmac_f32_e32 v77, v217, v170
	v_dual_fmac_f32 v86, v177, v160 :: v_dual_lshlrev_b32 v143, 16, v234
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v190, 16, v74
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v74, 16, v158
	v_lshlrev_b32_e32 v158, 16, v235
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v196, 16, v131
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v131, 16, v156
	v_lshlrev_b32_e32 v132, 16, v132
	v_lshlrev_b32_e32 v168, 16, v238
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v116, v147, v158 :: v_dual_fmac_f32 v85, v145, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v127, v182, v131
	v_dual_fmac_f32 v108, v202, v132 :: v_dual_lshlrev_b32 v169, 16, v171
	v_dual_fmac_f32 v75, v216, v132 :: v_dual_lshlrev_b32 v156, 16, v161
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v78, v215, v169 :: v_dual_lshlrev_b32 v171, 16, v203
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v95, v55, v72 :: v_dual_lshlrev_b32 v172, 16, v205
	v_dual_fmac_f32 v128, v69, v72 :: v_dual_fmac_f32 v75, v24, v171
	scratch_load_b32 v72, off, off          ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v118, v153, v160 :: v_dual_lshlrev_b32 v161, 16, v163
	v_dual_fmac_f32 v114, v154, v166 :: v_dual_lshlrev_b32 v163, 16, v237
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v84, v175, v143 :: v_dual_lshlrev_b32 v183, 16, v173
	v_dual_fmac_f32 v107, v200, v168 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v184, 16, v174
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v76, v214, v168 :: v_dual_lshlrev_b32 v167, 16, v201
	v_dual_fmac_f32 v93, v60, v151 :: v_dual_lshlrev_b32 v164, 16, v164
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v80, v218, v141 :: v_dual_lshlrev_b32 v71, 16, v63
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v110, v195, v169 :: v_dual_lshlrev_b32 v63, 16, v206
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v83, v176, v158
	v_fmac_f32_e32 v115, v146, v143
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v117, v152, v159
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v79, v220, v163 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_fmac_f32 v123, v65, v74 :: v_dual_fmac_f32 v112, v148, v163
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v81, v219, v165
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v111, v149, v141
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v109, v198, v170 :: v_dual_fmac_f32 v104, v67, v207
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v91, v48, v157 :: v_dual_fmac_f32 v138, v191, v144
	v_fmac_f32_e32 v119, v61, v157
	v_dual_fmac_f32 v134, v185, v155 :: v_dual_fmac_f32 v83, v44, v161
	v_dual_fmac_f32 v96, v56, v131 :: v_dual_fmac_f32 v115, v57, v162
	v_dual_fmac_f32 v92, v52, v74 :: v_dual_fmac_f32 v79, v37, v167
	v_dual_fmac_f32 v124, v62, v73 :: v_dual_fmac_f32 v111, v53, v164
	v_dual_fmac_f32 v88, v47, v156 :: v_dual_fmac_f32 v125, v33, v189
	v_dual_fmac_f32 v120, v58, v156 :: v_dual_fmac_f32 v139, v27, v199
	v_dual_fmac_f32 v84, v45, v162 :: v_dual_fmac_f32 v129, v31, v192
	v_dual_fmac_f32 v116, v54, v161 :: v_dual_fmac_f32 v107, v49, v172
	v_dual_fmac_f32 v80, v40, v164 :: v_dual_fmac_f32 v121, v35, v186
	v_dual_fmac_f32 v112, v50, v167 :: v_dual_fmac_f32 v135, v29, v196
	v_dual_fmac_f32 v76, v25, v172 :: v_dual_fmac_f32 v109, v42, v63
	v_dual_fmac_f32 v108, v46, v171 :: v_dual_fmac_f32 v105, v20, v194
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v140, v26, v197 :: v_dual_fmac_f32 v113, v41, v71
	v_dual_fmac_f32 v136, v28, v194 :: v_dual_fmac_f32 v117, v38, v184
	v_dual_fmac_f32 v130, v30, v190 :: v_dual_fmac_f32 v99, v19, v192
	v_dual_fmac_f32 v126, v32, v188 :: v_dual_fmac_f32 v87, v15, v186
	v_dual_fmac_f32 v122, v34, v183 :: v_dual_fmac_f32 v85, v13, v184
	v_dual_fmac_f32 v118, v36, v70 :: v_dual_fmac_f32 v81, v11, v71
	v_dual_fmac_f32 v114, v39, v66 :: v_dual_fmac_f32 v77, v8, v63
	v_fmac_f32_e32 v110, v43, v68
	v_fmac_f32_e32 v106, v22, v197
	v_fmac_f32_e32 v100, v21, v196
	v_fmac_f32_e32 v98, v18, v190
	v_fmac_f32_e32 v94, v17, v189
	v_fmac_f32_e32 v180, v16, v188
	v_fmac_f32_e32 v90, v14, v183
	v_fmac_f32_e32 v86, v12, v70
	v_fmac_f32_e32 v82, v10, v66
	v_fmac_f32_e32 v78, v9, v68
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v72, v23, v199
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:188
	scratch_load_b32 v47, off, off offset:192
	scratch_load_b32 v28, off, off offset:196
.LBB0_4:                                ; %._crit_edge
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v0, 0xbfb8aa3b, v140 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v139
	v_dual_mul_f32 v4, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v129
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, 0xbfb8aa3b, v135 :: v_dual_and_b32 v3, 56, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_dual_mul_f32 v10, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v125
	v_dual_mul_f32 v29, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v126
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v32, 0xbfb8aa3b, v118 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v140
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v139
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v7, v7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s3, s28, s23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s3, s3, s22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v114
	v_dual_mul_f32 v19, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v110
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v1, v0
	v_ldexp_f32 v1, v7, v6
	v_dual_mul_f32 v27, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v106
	v_dual_mul_f32 v25, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v33, 1.0, v0 :: v_dual_add_f32 v34, 1.0, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v23, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v36, null, v34, v34, v139
	v_div_scale_f32 v39, vcc_lo, v140, v33, v140
	v_rcp_f32_e32 v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v21, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v180
	v_dual_mul_f32 v17, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v87
	v_dual_mul_f32 v15, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v81
	v_dual_mul_f32 v11, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v35, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v36, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v1, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v78
	v_mul_f32_e32 v7, 0xbfb8aa3b, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v0, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v139, v34, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v2, v39, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v1
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s23, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v40, v38
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v0, s23, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v35, v2, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v135
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v2, v44, v37
	v_fma_f32 v44, -v36, v45, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v41, v4
	v_exp_f32_e32 v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v35, v2, v39
	v_fmac_f32_e32 v45, v44, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v4, v35, v37, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v2, -v36, v45, v40
	v_div_scale_f32 v35, null, v39, v39, v136
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v4, v33, v140
	v_div_fmas_f32 v37, v2, v38, v45
	v_rcp_f32_e32 v38, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_ldexp_f32 v36, v41, v42
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v2, s3, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v37, v34, v139
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v3, s3, v3, 64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v36, v36, v135
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v10, s0, v136, v39, v136
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v137, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v10, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v138, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v35, v46, v10
	v_rcp_f32_e32 v41, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v48, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v5, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v129 :: v_dual_and_b32 v42, 1, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v37.h
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v35, v46, v10
	v_fma_f32 v44, -v34, v41, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v37, v45, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v38, v46
	v_div_scale_f32 v38, null, v35, v35, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v10, v39, v136
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, s1, v135, v36, v135
	s_mov_b32 vcc_lo, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v134, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v38
	v_mul_f32_e32 v49, v44, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v125
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v10.h
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v34, v49, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v37, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v47, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v49, v44
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v10, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v41, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v10.h, 0x7fff, v43.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v34, v36, v135
	v_div_scale_f32 v34, null, v37, v37, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v42.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v4.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v36, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v130, v35, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v34, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v42, v39
	v_fmac_f32_e32 v40, v13, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v13, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, s0, v129, v37, v129
	v_fma_f32 v47, -v38, v44, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v41, v40
	v_fmac_f32_e32 v44, v47, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v13, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v34, v48, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v43, 1.0, v13 :: v_dual_fmac_f32 v48, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v46, v45
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v133, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v38, v44, v42
	v_div_scale_f32 v38, null, v43, v43, v126
	v_fma_f32 v34, -v34, v48, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v33.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v39, v44
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v39, v38
	v_div_fmas_f32 v34, v34, v40, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e32 v41.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v16, v33, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v34, v37, v129
	v_fma_f32 v34, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v16.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v127, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v35, v130
	v_div_scale_f32 v35, null, v36, v36, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v34, v39
	v_div_scale_f32 v30, s0, v126, v43, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v128, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s1, v125, v36, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v13.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v37, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v13, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v121
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v42, v30, v39 :: v_dual_fmac_f32 v37, v40, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v38, v42, v30
	v_mul_f32_e32 v46, v29, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v34, v33
	v_exp_f32_e32 v34, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v45, v39
	v_fma_f32 v45, -v35, v46, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v47, 1, v4
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v45, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v13, v47, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v38, v42, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v16, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v13, v39, v42
	v_fma_f32 v13, -v35, v46, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v34, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v33, v43, v126
	v_div_fmas_f32 v35, v13, v37, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v44.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v35, v36, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v41.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v29, v29, v121
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v123, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v30, v30, v122
	v_rcp_f32_e32 v38, v16
	v_div_scale_f32 v32, s0, v122, v30, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v35.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v118
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v16, v38, 1.0
	v_fma_f32 v36, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v38, v41, v38 :: v_dual_fmac_f32 v37, v36, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v121, v29, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v43, v32, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v40, v36
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v46, v31, v38 :: v_dual_and_b32 v39, 1, v39
	v_fma_f32 v45, -v34, v43, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v35, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v45, v37
	v_fma_f32 v45, -v16, v46, v31
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v124, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v34, v43, v32
	v_fmac_f32_e32 v46, v45, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v36
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v37, v43
	v_fma_f32 v16, -v16, v46, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v31, null, v34, v34, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v16, v38, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v31
	v_div_fixup_f32 v30, v32, v30, v122
	v_div_fixup_f32 v29, v36, v29, v121
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_cndmask_b16 v16.h, 0x7fff, v42.h, s3
	v_mov_b16_e32 v38.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v120, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.l, 0x7fff, v39.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v41
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v31, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v30.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, s0, v118, v34, v118
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v35, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v33, v33, v117
	v_dual_mul_f32 v42, v28, v37 :: v_dual_and_b32 v41, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v30, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v31, v42, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v114
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v44, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v32, v36, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v31, v42, v28
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s1, v117, v33, v117
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v19, v35
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v119, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v40, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v41.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v32, v45, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v45, v30, v36 :: v_dual_add_f32 v30, 1.0, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v32, v45, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v30, v30, v114
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v37, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v29, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v28, v34, v118
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v36, v45
	v_rcp_f32_e32 v34, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v116, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v31, v33, v117
	v_div_scale_f32 v31, null, v32, v32, v113
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.l, 0x7fff, v38.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v31
	v_fma_f32 v33, -v35, v34, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.h, v4.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v28, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v33, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, vcc_lo, v114, v30, v114
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v115, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v31, v36, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v40, v38, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v29.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v22, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, s0, v113, v32, v113
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v35, v40, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v44, v37, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v29, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v43, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v28, v39, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v22, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v31, v44, v37
	v_fma_f32 v35, -v35, v40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v39.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v33, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v42, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v35, v34, v40
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v31, -v31, v44, v37
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v28, v28, v109
	v_div_fixup_f32 v30, v34, v30, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v31, v36, v44
	v_div_scale_f32 v34, null, v33, v33, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v31, v32, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v32, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v4.h
	v_cndmask_b16 v22.l, 0x7fff, v27.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, s0, v109, v28, v109
	v_fma_f32 v31, -v38, v35, 1.0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v30, v112, v30 :: v_dual_mul_f32 v27, v111, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v34, v32, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v31, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v25, s1, v110, v33, v110
	v_mul_f32_e32 v39, v26, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v106
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v27.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v25, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v30.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v72 :: v_dual_and_b32 v37, 1, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v38, v39, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v4
	v_cmp_o_f32_e64 s3, v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v39, v41, v35
	v_fma_f32 v41, -v34, v42, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v31, v29
	v_exp_f32_e32 v31, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v30, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v38, v39, v26
	v_dual_fmac_f32 v42, v41, v32 :: v_dual_add_f32 v29, 1.0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v27, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v26, v35, v39
	v_fma_f32 v25, -v34, v42, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v31, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v29, v29, v106
	v_div_fmas_f32 v32, v25, v32, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v31
	v_div_fixup_f32 v26, v26, v28, v109
	v_div_fixup_f32 v28, v32, v33, v110
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.l, 0x7fff, v37.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v30, v30, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v108, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, s0, v106, v29, v106
	v_rcp_f32_e32 v33, v27
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v32, -v31, v34, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v26.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.h, 0x7fff, v40.h, s3
	v_mov_b16_e32 v35.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v107, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v26, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v27, v33, 1.0
	v_fmac_f32_e32 v34, v32, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, s1, v72, v30, v72
	v_dual_fmac_f32 v33, v37, v33 :: v_dual_and_b32 v38, 1, v4
	v_mul_f32_e32 v39, v24, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v28.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v31, v39, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v105
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v26, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v36, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v28, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v31, v39, v24
	v_div_fmas_f32 v24, v24, v34, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v36, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v23, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v24, v29, v106
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v27, v42, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v103, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v24.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v41, v33
	v_fma_f32 v23, -v27, v42, v23
	v_div_scale_f32 v27, null, v31, v31, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v23, v33, v42
	v_rcp_f32_e32 v33, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v23.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v32, v30, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v35.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, s0, v105, v31, v105
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v104, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v27, v33, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v29, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v98
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v20, v35
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v26, v26, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v4
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v99 :: v_dual_add_f32 v26, 1.0, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v24, v37, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v20, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v28.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v26, v26, v100
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v37.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v30, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, s1, v100, v26, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v36, v32
	v_fma_f32 v24, -v30, v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v38, v21, v33 :: v_dual_fmac_f32 v41, v24, v32
	v_fma_f32 v40, -v27, v38, v21
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v27, v38, v21
	v_fma_f32 v27, -v30, v41, v36
	v_div_scale_f32 v30, null, v24, v24, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v33, v38
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v27, v27, v32, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v21, v31, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v30
	v_div_fixup_f32 v26, v27, v26, v100
	v_div_scale_f32 v27, null, v29, v29, v99
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v97, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v28, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b16 v20.l, 0x7fff, v34.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v30, v31, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v4.h
	v_cmp_o_f32_e64 s1, v21, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v27, v32, 1.0
	v_fmac_f32_e32 v31, v28, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, vcc_lo, v98, v24, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v180
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v17, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v93, v26 :: v_dual_mul_f32 v35, v34, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, s0, v99, v29, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v26.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v30, v35, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v33, v32
	v_dual_fmac_f32 v35, v39, v31 :: v_dual_and_b32 v18, 1, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v27, v40, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v18, v26, v18, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v37, v36
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_fmac_f32 v40, v28, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v21, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v30, v35, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v17, v17, v180
	v_fma_f32 v27, -v27, v40, v33
	v_div_fmas_f32 v21, v21, v31, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v30, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v18.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v40
	v_div_scale_f32 v32, null, v26, v26, v94
	v_div_fixup_f32 v21, v21, v24, v98
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v27, v29, v99
	v_rcp_f32_e32 v27, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v28, v30, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v15, v96, v18 :: v_dual_mul_f32 v18, v95, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v87
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v38.h, s1
	v_mov_b16_e32 v4.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v24, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, vcc_lo, v180, v17, v180
	v_fma_f32 v14, -v32, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v90 :: v_dual_and_b32 v39, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v29, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v14, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v18, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v14, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, s0, v94, v26, v94
	v_fma_f32 v37, -v28, v33, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v15.h
	v_mov_b16_e32 v36.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v24, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v37, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v18, v39, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v32, v38, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v33, v29
	v_fmac_f32_e32 v38, v21, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v35, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v30, v33
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v32, v38, v24
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v28, v17, v180
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v27, v38
	v_div_scale_f32 v24, null, v21, v21, v87
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v89, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v18, v26, v94
	v_rcp_f32_e32 v27, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v15, v36, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v17.h
	v_mov_b16_e32 v36.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v92, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v32.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v86 :: v_dual_and_b32 v39, 1, v4
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v8
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v24, v27, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v26, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, v14, v14, v90
	v_div_scale_f32 v12, s0, v90, v14, v90
	v_div_scale_f32 v26, s1, v87, v21, v87
	v_rcp_f32_e32 v30, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v15, v18, v15, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v29, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v28, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v12, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v34, v28
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v29, v35, v12
	v_mul_f32_e32 v38, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v24, v38, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v17, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v29, v35, v12
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v36, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v30, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v24, v38, v26
	v_div_scale_f32 v26, null, v11, v11, v86
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v12, v14, v90
	v_div_fmas_f32 v24, v24, v27, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v14, v24, v21, v87
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v24.h, v4.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v88, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v26, v27, 1.0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v91, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v15.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v18, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v14.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, s0, v86, v11, v86
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v29, v18, v27 :: v_dual_and_b32 v24, 1, v24
	v_div_scale_f32 v28, null, v17, v17, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v4
	v_add3_u32 v24, v14, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v12, v15, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v26, v29, v18
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v14, 0, 0x42800000, s3
	v_exp_f32_e32 v32, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v12, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v24.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v81
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v18, -v26, v29, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v15, v32, v15
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v7, v18, v27, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v28, v30, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v7, v11, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v6, v14, v12
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v7, v83, v7 :: v_dual_add_f32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v12, v12, v82
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, s0, v81, v6, v81
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v11, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, null, v6, v6, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v11, v11, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v8, v30
	v_div_scale_f32 v8, s3, v85, v17, v85
	s_mov_b32 vcc_lo, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v24, v8, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v28, v24, v8
	v_fmac_f32_e32 v24, v27, v30
	v_rcp_f32_e32 v27, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v28, v24, v8
	v_div_fmas_f32 v8, v8, v30, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v29, v27, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v11, v11, v78
	v_div_fixup_f32 v8, v8, v17, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v24, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, vcc_lo, v82, v12, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v32, v17, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v26, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v26, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v29, v32, v17
	v_fmac_f32_e32 v32, v37, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v15, v26, 1.0
	v_fma_f32 v17, -v29, v32, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, v24, v26
	v_rcp_f32_e32 v24, v30
	v_div_fmas_f32 v17, v17, v27, v32
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v34, v26
	v_div_fixup_f32 v12, v17, v12, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v15, v38, v34
	v_fma_f32 v39, -v30, v24, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v79, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v39, v24
	v_div_scale_f32 v39, s3, v78, v11, v78
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v15, v38, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v37, v39, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v26, v38
	v_fma_f32 v27, -v30, v37, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v15, v6, v81
	v_fmac_f32_e32 v37, v27, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v14, null, v18, v18, v77
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v80, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v30, v37, v39
	v_rcp_f32_e32 v28, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v14, v28, 1.0
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s1, v77, v18, v77
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v35, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v14, v40, v35
	v_fmac_f32_e32 v40, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v40, v35
	v_div_fmas_f32 v14, v14, v28, v40
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v15, v15, v24, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v7, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v14, v18, v77
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v84, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v15, v11, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v15.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v75, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v8.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v11, v76, v11 :: v_dual_and_b32 v14, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v15
	v_mov_b16_e32 v18.h, v4.h
	v_and_b32_e32 v26, 1, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v18.l, v11.h
	v_mov_b16_e32 v4.l, v7.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_add3_u32 v17, v8, v26, 0x7fff
	v_add3_u32 v8, v6, v15, 0x7fff
	v_and_b32_e32 v15, 1, v18
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v14, v12, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v6, v11, v15, 0x7fff
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v14.h, s0
	v_mov_b32_e32 v14, 0x5410
	v_mov_b32_e32 v15, 0x7632
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s1
	v_cndmask_b16 v24.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b32_e64 v11, v25, v19, s2
	v_cndmask_b32_e64 v14, 0x1054, v14, s2
	v_cndmask_b32_e64 v15, 0x3276, v15, s2
	v_cndmask_b32_e64 v12, v19, v25, s2
	v_cndmask_b32_e64 v17, v33, v20, s2
	v_cndmask_b32_e64 v18, v20, v33, s2
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b32_e64 v19, v21, v31, s2
	v_cndmask_b32_e64 v20, v31, v21, s2
	v_cndmask_b32_e64 v21, v7, v9, s2
	v_cndmask_b32_e64 v7, v9, v7, s2
	v_and_b32_e32 v9, 0x540054, v14
	v_and_b32_e32 v14, 0x760076, v15
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s4
	v_cndmask_b32_e64 v6, v13, v5, s2
	v_cndmask_b32_e64 v5, v5, v13, s2
	v_cndmask_b32_e64 v8, v16, v10, s2
	v_cndmask_b32_e64 v10, v10, v16, s2
	v_cndmask_b32_e64 v16, v22, v23, s2
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v14, v14, 4, v14
	v_cndmask_b32_e64 v13, v23, v22, s2
	v_cndmask_b32_e64 v22, v4, v24, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v4, v24, v4, s2
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v9
	v_and_b32_e32 v23, 0x7060706, v14
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v6, v18
	v_perm_b32 v5, v5, v6, v23
	v_perm_b32 v6, v10, v8, v18
	v_perm_b32 v7, v10, v8, v23
	v_perm_b32 v8, v12, v11, v18
	v_perm_b32 v9, v12, v11, v23
	v_perm_b32 v10, v15, v13, v18
	v_perm_b32 v11, v15, v13, v23
	v_perm_b32 v14, v20, v19, v18
	v_perm_b32 v15, v20, v19, v23
	v_add_lshl_u32 v20, v2, v1, 1
	v_add_lshl_u32 v1, v3, v1, 1
	v_perm_b32 v12, v16, v17, v18
	v_perm_b32 v13, v16, v17, v23
	v_add_lshl_u32 v2, v2, v0, 1
	v_perm_b32 v16, v24, v21, v18
	v_perm_b32 v17, v24, v21, v23
	v_perm_b32 v18, v25, v22, v18
	v_perm_b32 v19, v25, v22, v23
	v_add_lshl_u32 v0, v3, v0, 1
	s_clause 0x3
	buffer_store_b128 v[4:7], v20, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v1, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v2, s[20:23], 0 offen
	buffer_store_b128 v[16:19], v0, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 204
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
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 204
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14224
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 204
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 204
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 50
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
