	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 679 0                         ; ragged.py:679:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s62, s[0:1], 0x4c
	s_load_b64 s[60:61], s[0:1], 0x54
.Ltmp0:
	.loc	1 707 25 prologue_end           ; ragged.py:707:25
	s_abs_i32 s7, s2
	s_load_b256 s[36:43], s[0:1], 0x28
	v_dual_mov_b32 v107, v0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:705:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s62, 0xff
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v47, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:705:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v74, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
.Ltmp2:
	.loc	1 707 25 is_stmt 1              ; ragged.py:707:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v98, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v100, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	s_xor_b32 s4, s4, s6
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v46, 0xf0, v107
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 709 33                        ; ragged.py:709:33
	s_sub_i32 s5, s61, s4
	.loc	1 710 24                        ; ragged.py:710:24
	s_mul_i32 s3, s4, s3
	.loc	1 709 22                        ; ragged.py:709:22
	s_min_i32 s5, s5, 1
	.loc	1 710 24                        ; ragged.py:710:24
	s_sub_i32 s2, s2, s3
	.loc	1 712 17                        ; ragged.py:712:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 718 32                        ; ragged.py:718:32
	v_and_b32_e32 v1, 15, v107
	.loc	1 712 17                        ; ragged.py:712:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s3, 1
	s_sub_i32 s10, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s3, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s6, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 34                        ; ragged.py:711:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 20 is_stmt 0              ; ragged.py:711:20
	s_add_i32 s2, s2, s4
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 715 23                        ; ragged.py:715:23
	s_lshl_b64 s[14:15], s[2:3], 3
	s_add_u32 s2, s36, s14
	s_addc_u32 s3, s37, s15
	s_load_b64 s[56:57], s[2:3], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s2, s38, s14
	s_addc_u32 s3, s39, s15
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s4, s40, s14
	s_addc_u32 s5, s41, s15
	.loc	1 716 24                        ; ragged.py:716:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 717 22                        ; ragged.py:717:22
	s_load_b64 s[12:13], s[4:5], 0x0
	.loc	1 719 18                        ; ragged.py:719:18
	s_lshl_b32 s39, s6, 8
	s_mov_b32 s41, 0
	.loc	1 718 18                        ; ragged.py:718:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s57, 0, s2
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v0, s56, v1
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s2, s[12:13], v[2:3]
	.loc	1 799 25 is_stmt 1              ; ragged.py:799:25
	v_add_nc_u32_e32 v2, 16, v0
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s6, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s7, s[10:11], v[8:9]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s4, s[12:13], v[4:5]
	.loc	1 720 21                        ; ragged.py:720:21
	scratch_store_b32 off, v2, off offset:372 ; 4-byte Folded Spill
	.loc	1 799 25 is_stmt 1              ; ragged.py:799:25
	v_add_nc_u32_e32 v2, 32, v0
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s8, s[12:13], v[6:7]
	v_cmp_gt_i64_e64 s9, s[12:13], v[8:9]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:376
	scratch_store_b32 off, v0, off offset:368
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v0, 48, v0
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lt_i32 s60, 1
	.loc	1 720 20                        ; ragged.py:720:20
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s58, s[0:1], 0x50
	s_load_b32 s61, s[0:1], 0x48
	.loc	1 719 36 is_stmt 1              ; ragged.py:719:36
	v_lshrrev_b32_e32 v2, 5, v107
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v5, 0xe0, v107
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v37, 1, v107
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v4, 63, v107
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 719 18 is_stmt 0              ; ragged.py:719:18
	v_or_b32_e32 v6, s39, v2
	v_bfe_i32 v36, v107, 7, 1
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v39, 5, v1
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v5, 4, v5
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v40, 24, v37
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v171, 0, v1
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s22, s6, s14
	s_addc_u32 s23, s7, s15
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v1, 5, v107
	.loc	1 806 25                        ; ragged.py:806:25
	s_load_b32 s40, s[22:23], 0x0
	s_load_b256 s[44:51], s[0:1], 0x0
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v2, s0, s56, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s57, 0, s0
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 16, v6
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s52, s58, s62
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 24, v6
	v_or_b32_e32 v0, s39, v107
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v38, 0x7f, v107
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v36, 0x88, v36
	v_or3_b32 v150, v39, v40, v5
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v39, 2, v46
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v1, 32, v1
	v_or_b32_e32 v10, 32, v6
	.loc	1 806 25                        ; ragged.py:806:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s63, s60, s40
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s40, s52, s40
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, 40, v6
	v_or_b32_e32 v32, 0xd0, v6
	v_or_b32_e32 v12, 48, v6
	v_or_b32_e32 v23, 0x88, v6
	v_or_b32_e32 v33, 0xd8, v6
	v_mad_u64_u32 v[81:82], null, v6, s58, s[40:41]
	v_or_b32_e32 v13, 56, v6
	v_or_b32_e32 v24, 0x90, v6
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s0, s[12:13], v[2:3]
	.loc	1 719 18 is_stmt 1              ; ragged.py:719:18
	v_or_b32_e32 v2, 0xe0, v6
	v_mad_u64_u32 v[82:83], null, s58, v8, s[40:41]
	v_or_b32_e32 v18, 0x60, v6
	v_or_b32_e32 v19, 0x68, v6
	v_or_b32_e32 v25, 0x98, v6
	v_or_b32_e32 v3, 0xe8, v6
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s38, s62, v0
	v_xor_b32_e32 v0, v36, v38
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v37, 28, v37
	v_add3_u32 v1, 0, v39, v1
	v_mad_u64_u32 v[83:84], null, s58, v9, s[40:41]
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 8, v6
	v_or_b32_e32 v20, 0x70, v6
	v_or_b32_e32 v26, 0xa0, v6
	v_or_b32_e32 v27, 0xa8, v6
	v_or_b32_e32 v30, 0xc0, v6
	v_or_b32_e32 v34, 0xf0, v6
	v_mad_u64_u32 v[84:85], null, s58, v10, s[40:41]
	v_or_b32_e32 v14, 64, v6
	v_or_b32_e32 v15, 0x48, v6
	v_or_b32_e32 v16, 0x50, v6
	v_or_b32_e32 v17, 0x58, v6
	v_or_b32_e32 v21, 0x78, v6
	v_or_b32_e32 v22, 0x80, v6
	v_or_b32_e32 v28, 0xb0, v6
	v_or_b32_e32 v29, 0xb8, v6
	v_or_b32_e32 v31, 0xc8, v6
	v_or_b32_e32 v35, 0xf8, v6
	v_mad_u64_u32 v[85:86], null, s58, v11, s[40:41]
	v_mad_u64_u32 v[151:152], null, s58, v32, s[40:41]
	v_mad_u64_u32 v[86:87], null, s58, v12, s[40:41]
	v_mad_u64_u32 v[92:93], null, s58, v23, s[40:41]
	v_mad_u64_u32 v[152:153], null, s58, v33, s[40:41]
	v_mad_u64_u32 v[87:88], null, s58, v13, s[40:41]
	v_mad_u64_u32 v[93:94], null, s58, v24, s[40:41]
	v_mad_u64_u32 v[153:154], null, s58, v2, s[40:41]
	v_or_b32_e32 v41, 0x300, v107
	v_or_b32_e32 v42, 0x700, v107
	v_or_b32_e32 v5, 0x3f0, v107
	v_or_b32_e32 v36, 0x7f0, v107
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:96
	scratch_store_b32 off, v46, off offset:396
	v_xor_b32_e32 v38, 0x110, v0
	v_xor_b32_e32 v40, 8, v150
	v_xor_b32_e32 v43, 16, v150
	v_xor_b32_e32 v44, 24, v150
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v39, 1, v46
	v_mad_u64_u32 v[141:142], null, s58, v18, s[40:41]
	v_mad_u64_u32 v[88:89], null, s58, v19, s[40:41]
	v_mad_u64_u32 v[94:95], null, s58, v25, s[40:41]
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v0, v1, v37
	v_mad_u64_u32 v[154:155], null, s58, v3, s[40:41]
	v_mad_u64_u32 v[136:137], null, s58, v7, s[40:41]
	v_mad_u64_u32 v[89:90], null, s58, v20, s[40:41]
	v_mad_u64_u32 v[95:96], null, s58, v26, s[40:41]
	v_mad_u64_u32 v[142:143], null, s58, v27, s[40:41]
	v_mad_u64_u32 v[147:148], null, s58, v30, s[40:41]
	v_mad_u64_u32 v[155:156], null, s58, v34, s[40:41]
	v_mad_u64_u32 v[137:138], null, s58, v14, s[40:41]
	v_mad_u64_u32 v[176:177], null, s58, v15, s[40:41]
	v_mad_u64_u32 v[179:180], null, s58, v16, s[40:41]
	v_mad_u64_u32 v[181:182], null, s58, v17, s[40:41]
	v_mad_u64_u32 v[90:91], null, s58, v21, s[40:41]
	v_mad_u64_u32 v[65:66], null, s58, v22, s[40:41]
	v_mad_u64_u32 v[143:144], null, s58, v28, s[40:41]
	v_mad_u64_u32 v[96:97], null, s58, v29, s[40:41]
	v_mad_u64_u32 v[148:149], null, s58, v31, s[40:41]
	v_mad_u64_u32 v[156:157], null, s58, v35, s[40:41]
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s62, v6
	v_cmp_gt_i32_e64 s6, s62, v7
	v_cmp_gt_i32_e64 s7, s62, v8
	v_cmp_gt_i32_e64 s8, s62, v9
	v_cmp_gt_i32_e64 s9, s62, v10
	v_cmp_gt_i32_e64 s10, s62, v11
	v_cmp_gt_i32_e64 s11, s62, v12
	v_cmp_gt_i32_e64 s12, s62, v13
	v_cmp_gt_i32_e64 s13, s62, v14
	v_cmp_gt_i32_e64 s14, s62, v15
	v_cmp_gt_i32_e64 s15, s62, v16
	v_cmp_gt_i32_e64 s16, s62, v17
	v_cmp_gt_i32_e64 s17, s62, v18
	v_cmp_gt_i32_e64 s18, s62, v19
	v_cmp_gt_i32_e64 s19, s62, v20
	v_cmp_gt_i32_e64 s20, s62, v21
	v_cmp_gt_i32_e64 s21, s62, v22
	v_cmp_gt_i32_e64 s22, s62, v23
	v_cmp_gt_i32_e64 s23, s62, v24
	v_cmp_gt_i32_e64 s24, s62, v25
	v_cmp_gt_i32_e64 s25, s62, v26
	v_cmp_gt_i32_e64 s26, s62, v27
	v_cmp_gt_i32_e64 s27, s62, v28
	v_cmp_gt_i32_e64 s28, s62, v29
	v_cmp_gt_i32_e64 s29, s62, v30
	v_cmp_gt_i32_e64 s30, s62, v31
	v_cmp_gt_i32_e64 s31, s62, v32
	v_cmp_gt_i32_e64 s33, s62, v33
	v_cmp_gt_i32_e64 s34, s62, v2
	v_cmp_gt_i32_e64 s35, s62, v3
	.loc	1 766 28                        ; ragged.py:766:28
	v_lshrrev_b32_e32 v80, 6, v107
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s36, s62, v34
	v_cmp_gt_i32_e64 s37, s62, v35
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v186, s56, v4
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v145, 0, v41
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v158, 0, v42
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v173, 0, v5
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v169, 0, v36
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v178, 0, v38
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v144, 0, v40
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v91, 0, v43
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v146, 0, v44
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v0, 0, v39
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v159, 0, v107
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s53, s45, 0xffff
	s_mov_b32 s52, s44
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s45, s47, 0xffff
	s_mov_b32 s44, s46
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s51, 0xffff
	s_mov_b32 s56, s50
	.loc	1 769 19                        ; ragged.py:769:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:392
	scratch_store_b32 off, v107, off offset:100
	scratch_store_b32 off, v80, off offset:104
	scratch_store_b32 off, v91, off offset:108
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v135, off offset:364
	scratch_store_b32 off, v134, off offset:360
	scratch_store_b32 off, v133, off offset:356
	scratch_store_b32 off, v132, off offset:352
	scratch_store_b32 off, v131, off offset:348
	scratch_store_b32 off, v130, off offset:344
	scratch_store_b32 off, v129, off offset:340
	scratch_store_b32 off, v128, off offset:336
	scratch_store_b32 off, v127, off offset:332
	scratch_store_b32 off, v126, off offset:328
	scratch_store_b32 off, v125, off offset:324
	scratch_store_b32 off, v124, off offset:320
	scratch_store_b32 off, v123, off offset:316
	scratch_store_b32 off, v122, off offset:312
	scratch_store_b32 off, v121, off offset:308
	scratch_store_b32 off, v120, off offset:304
	scratch_store_b32 off, v119, off offset:300
	scratch_store_b32 off, v118, off offset:296
	scratch_store_b32 off, v117, off offset:292
	scratch_store_b32 off, v116, off offset:288
	scratch_store_b32 off, v115, off offset:284
	scratch_store_b32 off, v114, off offset:280
	scratch_store_b32 off, v113, off offset:276
	scratch_store_b32 off, v112, off offset:272
	scratch_store_b32 off, v111, off offset:268
	scratch_store_b32 off, v110, off offset:264
	scratch_store_b32 off, v109, off offset:260
	scratch_store_b32 off, v108, off offset:256
	scratch_store_b32 off, v106, off offset:252
	scratch_store_b32 off, v105, off offset:248
	scratch_store_b32 off, v104, off offset:244
	scratch_store_b32 off, v103, off offset:240
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v102, off offset:236
	scratch_store_b32 off, v101, off offset:232
	scratch_store_b32 off, v100, off offset:228
	scratch_store_b32 off, v99, off offset:224
	scratch_store_b32 off, v98, off offset:220
	scratch_store_b32 off, v79, off offset:216
	scratch_store_b32 off, v78, off offset:212
	scratch_store_b32 off, v77, off offset:208
	scratch_store_b32 off, v76, off offset:204
	scratch_store_b32 off, v75, off offset:200
	scratch_store_b32 off, v74, off offset:196
	scratch_store_b32 off, v73, off offset:192
	scratch_store_b32 off, v45, off offset:188
	scratch_store_b32 off, v72, off offset:184
	scratch_store_b32 off, v71, off offset:180
	scratch_store_b32 off, v47, off offset:176
	scratch_store_b32 off, v70, off offset:172
	scratch_store_b32 off, v49, off offset:168
	scratch_store_b32 off, v48, off offset:164
	scratch_store_b32 off, v69, off offset:160
	scratch_store_b32 off, v68, off offset:156
	scratch_store_b32 off, v50, off offset:152
	scratch_store_b32 off, v67, off offset:148
	scratch_store_b32 off, v52, off offset:144
	scratch_store_b32 off, v51, off offset:140
	scratch_store_b32 off, v66, off offset:136
	scratch_store_b32 off, v58, off offset:132
	scratch_store_b32 off, v53, off offset:128
	scratch_store_b32 off, v54, off offset:124
	scratch_store_b32 off, v55, off offset:120
	scratch_store_b32 off, v57, off offset:116
	scratch_store_b32 off, v56, off offset:112
	.loc	1 771 28 is_stmt 1              ; ragged.py:771:28
	s_lshl_b32 s40, s41, 6
	s_mov_b32 s46, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
	s_mov_b32 s50, -1
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s51, s46, s40
	s_clause 0xb                            ; 96-byte Folded Spill
	scratch_store_b64 off, v[89:90], off offset:88
	scratch_store_b64 off, v[82:83], off offset:80
	scratch_store_b64 off, v[85:86], off offset:72
	scratch_store_b64 off, v[84:85], off offset:64
	scratch_store_b64 off, v[87:88], off offset:56
	scratch_store_b64 off, v[65:66], off offset:48
	scratch_store_b64 off, v[88:89], off offset:40
	scratch_store_b64 off, v[93:94], off offset:32
	scratch_store_b64 off, v[90:91], off offset:24
	scratch_store_b64 off, v[95:96], off offset:16
	scratch_store_b64 off, v[92:93], off offset:8
	scratch_store_b64 off, v[96:97], off
	v_or_b32_e32 v98, s51, v80
	.loc	1 784 34                        ; ragged.py:784:34
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	.loc	1 773 23                        ; ragged.py:773:23
	s_and_b32 vcc_lo, exec_lo, s50
	s_mov_b32 s50, 0
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	v_mov_b32_e32 v75, v153
	v_mov_b32_e32 v71, v154
	v_dual_mov_b32 v91, v86 :: v_dual_mov_b32 v68, v151
	v_dual_mov_b32 v72, v152 :: v_dual_mov_b32 v67, v155
	.loc	1 783 34 is_stmt 0              ; ragged.py:783:34
	v_cndmask_b32_e64 v100, 0x80000000, v98, s0
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_or_b32_e32 v98, 4, v80
	v_dual_mov_b32 v76, v156 :: v_dual_mov_b32 v97, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v98, s51, v98
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 783 34 is_stmt 0              ; ragged.py:783:34
	v_cndmask_b32_e64 v101, 0x80000000, v98, s0
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_or_b32_e32 v98, 8, v80
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v98, s51, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	.loc	1 783 34 is_stmt 0              ; ragged.py:783:34
	v_cndmask_b32_e64 v102, 0x80000000, v98, s0
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_or_b32_e32 v98, 12, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v98, s51, v98
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 783 34 is_stmt 0              ; ragged.py:783:34
	v_cndmask_b32_e64 v103, 0x80000000, v98, s0
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_or_b32_e32 v98, 16, v80
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v98, s51, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	.loc	1 783 34 is_stmt 0              ; ragged.py:783:34
	v_cndmask_b32_e64 v104, 0x80000000, v98, s0
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_or_b32_e32 v98, 20, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v98, s51, v98
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 783 34 is_stmt 0              ; ragged.py:783:34
	v_cndmask_b32_e64 v105, 0x80000000, v98, s0
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_or_b32_e32 v98, 24, v80
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v98, s51, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	.loc	1 783 34 is_stmt 0              ; ragged.py:783:34
	v_cndmask_b32_e64 v106, 0x80000000, v98, s0
	.loc	1 766 28 is_stmt 1              ; ragged.py:766:28
	v_or_b32_e32 v98, 28, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v98, s51, v98
	.loc	1 783 42                        ; ragged.py:783:42
	v_mad_u64_u32 v[98:99], null, v98, s61, v[186:187]
	.loc	1 766 28                        ; ragged.py:766:28
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v99, 31, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 774 26                        ; ragged.py:774:26
	v_or_b32_e32 v99, s51, v99
	.loc	1 783 34                        ; ragged.py:783:34
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 784 42                        ; ragged.py:784:42
	v_add_nc_u32_e32 v114, v87, v99
	v_dual_mov_b32 v87, v144 :: v_dual_add_nc_u32 v118, v181, v99
	v_add_nc_u32_e32 v135, v153, v99
	v_add_nc_u32_e32 v108, v136, v99
	v_add_nc_u32_e32 v113, v86, v99
	v_add_nc_u32_e32 v120, v88, v99
	v_add_nc_u32_e32 v130, v96, v99
	v_mov_b32_e32 v96, v136
	v_mov_b32_e32 v88, v147
	v_add_nc_u32_e32 v136, v154, v99
	v_dual_mov_b32 v86, v146 :: v_dual_add_nc_u32 v115, v137, v99
	v_add_nc_u32_e32 v116, v176, v99
	v_add_nc_u32_e32 v124, v92, v99
	v_add_nc_u32_e32 v125, v93, v99
	v_mov_b32_e32 v93, v137
	v_add_nc_u32_e32 v137, v155, v99
	v_dual_mov_b32 v92, v142 :: v_dual_add_nc_u32 v107, v81, v99
	v_add_nc_u32_e32 v109, v82, v99
	v_add_nc_u32_e32 v110, v83, v99
	v_add_nc_u32_e32 v111, v84, v99
	v_add_nc_u32_e32 v112, v85, v99
	v_add_nc_u32_e32 v117, v179, v99
	v_add_nc_u32_e32 v119, v141, v99
	v_add_nc_u32_e32 v121, v89, v99
	v_dual_mov_b32 v85, v148 :: v_dual_add_nc_u32 v122, v90, v99
	v_add_nc_u32_e32 v123, v65, v99
	v_add_nc_u32_e32 v126, v94, v99
	v_add_nc_u32_e32 v127, v95, v99
	v_add_nc_u32_e32 v128, v142, v99
	v_add_nc_u32_e32 v129, v143, v99
	v_add_nc_u32_e32 v131, v147, v99
	v_add_nc_u32_e32 v132, v148, v99
	v_add_nc_u32_e32 v133, v151, v99
	v_mov_b32_e32 v90, v143
	v_add_nc_u32_e32 v134, v152, v99
	v_add_nc_u32_e32 v99, v156, v99
	.loc	1 784 34 is_stmt 0              ; ragged.py:784:34
	v_cndmask_b32_e64 v135, 0x80000000, v135, s34
	v_cndmask_b32_e64 v136, 0x80000000, v136, s35
	v_cndmask_b32_e64 v137, 0x80000000, v137, s36
	v_cndmask_b32_e64 v107, 0x80000000, v107, s1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s37
	s_clause 0x3
	buffer_load_u8 v156, v135, s[44:47], 0 offen
	buffer_load_u8 v198, v136, s[44:47], 0 offen
	buffer_load_u8 v157, v137, s[44:47], 0 offen
	buffer_load_u8 v199, v99, s[44:47], 0 offen
	.loc	1 783 34 is_stmt 1              ; ragged.py:783:34
	s_clause 0x7
	buffer_load_u8 v99, v100, s[52:55], 0 offen
	buffer_load_u8 v100, v101, s[52:55], 0 offen
	buffer_load_u8 v101, v102, s[52:55], 0 offen
	buffer_load_u8 v102, v104, s[52:55], 0 offen
	buffer_load_u8 v104, v105, s[52:55], 0 offen
	buffer_load_u8 v105, v106, s[52:55], 0 offen
	buffer_load_u8 v98, v98, s[52:55], 0 offen
	buffer_load_u8 v103, v103, s[52:55], 0 offen
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v111, 0x80000000, v111, s9
	v_cndmask_b32_e64 v113, 0x80000000, v113, s11
	v_cndmask_b32_e64 v115, 0x80000000, v115, s13
	v_cndmask_b32_e64 v117, 0x80000000, v117, s15
	v_cndmask_b32_e64 v119, 0x80000000, v119, s17
	v_cndmask_b32_e64 v125, 0x80000000, v125, s23
	v_cndmask_b32_e64 v127, 0x80000000, v127, s25
	v_cndmask_b32_e64 v129, 0x80000000, v129, s27
	v_cndmask_b32_e64 v131, 0x80000000, v131, s29
	v_cndmask_b32_e64 v133, 0x80000000, v133, s31
	v_mov_b32_e32 v94, v141
	v_cndmask_b32_e64 v109, 0x80000000, v109, s7
	v_mov_b32_e32 v89, v83
	v_mov_b32_e32 v95, v81
	v_cndmask_b32_e64 v108, 0x80000000, v108, s6
	v_cndmask_b32_e64 v110, 0x80000000, v110, s8
	v_cndmask_b32_e64 v112, 0x80000000, v112, s10
	v_cndmask_b32_e64 v114, 0x80000000, v114, s12
	v_cndmask_b32_e64 v116, 0x80000000, v116, s14
	v_cndmask_b32_e64 v118, 0x80000000, v118, s16
	v_cndmask_b32_e64 v120, 0x80000000, v120, s18
	v_cndmask_b32_e64 v126, 0x80000000, v126, s24
	v_cndmask_b32_e64 v128, 0x80000000, v128, s26
	v_cndmask_b32_e64 v130, 0x80000000, v130, s28
	v_cndmask_b32_e64 v132, 0x80000000, v132, s30
	v_cndmask_b32_e64 v134, 0x80000000, v134, s33
	v_cndmask_b32_e64 v121, 0x80000000, v121, s19
	v_cndmask_b32_e64 v122, 0x80000000, v122, s20
	v_cndmask_b32_e64 v123, 0x80000000, v123, s21
	v_cndmask_b32_e64 v124, 0x80000000, v124, s22
	s_clause 0x1b
	buffer_load_u8 v141, v107, s[44:47], 0 offen
	buffer_load_u8 v187, v108, s[44:47], 0 offen
	buffer_load_u8 v142, v109, s[44:47], 0 offen
	buffer_load_u8 v84, v110, s[44:47], 0 offen
	buffer_load_u8 v143, v111, s[44:47], 0 offen
	buffer_load_u8 v83, v112, s[44:47], 0 offen
	buffer_load_u8 v144, v113, s[44:47], 0 offen
	buffer_load_u8 v82, v114, s[44:47], 0 offen
	buffer_load_u8 v146, v115, s[44:47], 0 offen
	buffer_load_u8 v188, v116, s[44:47], 0 offen
	buffer_load_u8 v147, v117, s[44:47], 0 offen
	buffer_load_u8 v189, v118, s[44:47], 0 offen
	buffer_load_u8 v148, v119, s[44:47], 0 offen
	buffer_load_u8 v190, v120, s[44:47], 0 offen
	buffer_load_u8 v149, v121, s[44:47], 0 offen
	buffer_load_u8 v191, v122, s[44:47], 0 offen
	buffer_load_u8 v81, v123, s[44:47], 0 offen
	buffer_load_u8 v192, v124, s[44:47], 0 offen
	buffer_load_u8 v151, v125, s[44:47], 0 offen
	buffer_load_u8 v193, v126, s[44:47], 0 offen
	buffer_load_u8 v152, v127, s[44:47], 0 offen
	buffer_load_u8 v194, v128, s[44:47], 0 offen
	buffer_load_u8 v153, v129, s[44:47], 0 offen
	buffer_load_u8 v195, v130, s[44:47], 0 offen
	buffer_load_u8 v154, v131, s[44:47], 0 offen
	buffer_load_u8 v196, v132, s[44:47], 0 offen
	buffer_load_u8 v155, v133, s[44:47], 0 offen
	buffer_load_u8 v197, v134, s[44:47], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s46, 32
	s_waitcnt vmcnt(35)
	ds_store_b8 v159, v99
	s_waitcnt vmcnt(34)
	ds_store_b8 v159, v100 offset:256
	s_waitcnt vmcnt(33)
	ds_store_b8 v159, v101 offset:512
	s_waitcnt vmcnt(32)
	ds_store_b8 v159, v102 offset:1024
	s_waitcnt vmcnt(31)
	ds_store_b8 v159, v104 offset:1280
	s_waitcnt vmcnt(28)
	ds_store_b8 v145, v103
	ds_store_b8 v159, v105 offset:1536
	ds_store_b8 v158, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 785 31                        ; ragged.py:785:31
	ds_load_u8 v183, v171 offset:192
	ds_load_u8 v185, v171 offset:128
	ds_load_u8 v160, v171 offset:208
	ds_load_u8 v161, v171 offset:144
	ds_load_u8 v234, v171 offset:224
	ds_load_u8 v237, v171 offset:160
	ds_load_u8 v121, v171 offset:240
	ds_load_u8 v123, v171 offset:176
	ds_load_u8 v162, v171 offset:448
	ds_load_u8 v163, v171 offset:384
	ds_load_u8 v164, v171 offset:464
	ds_load_u8 v165, v171 offset:400
	ds_load_u8 v166, v171 offset:480
	ds_load_u8 v167, v171 offset:416
	ds_load_u8 v137, v171 offset:496
	ds_load_u8 v138, v171 offset:432
	ds_load_u8 v0, v171 offset:320
	ds_load_u8 v170, v171 offset:256
	ds_load_u8 v172, v171 offset:336
	ds_load_u8 v66, v171 offset:272
	ds_load_u8 v180, v171 offset:352
	ds_load_u8 v65, v171 offset:288
	ds_load_u8 v139, v171 offset:368
	ds_load_u8 v140, v171 offset:304
	ds_load_u8 v69, v171 offset:64
	ds_load_u8 v70, v171 offset:80
	ds_load_u8 v174, v171 offset:96
	ds_load_u8 v80, v171 offset:112
	ds_load_u8 v73, v171
	ds_load_u8 v74, v171 offset:16
	ds_load_u8 v77, v171 offset:32
	ds_load_u8 v79, v171 offset:48
	ds_load_u8 v228, v171 offset:960
	ds_load_u8 v231, v171 offset:896
	ds_load_u8 v200, v171 offset:1024
	ds_load_u8 v222, v171 offset:976
	ds_load_u8 v225, v171 offset:912
	ds_load_u8 v211, v171 offset:992
	ds_load_u8 v214, v171 offset:928
	ds_load_u8 v206, v171 offset:944
	ds_load_u8 v126, v171 offset:832
	ds_load_u8 v182, v171 offset:768
	ds_load_u8 v249, v171 offset:848
	ds_load_u8 v253, v171 offset:784
	ds_load_u8 v235, v171 offset:864
	ds_load_u8 v238, v171 offset:800
	ds_load_u8 v220, v171 offset:880
	ds_load_u8 v223, v171 offset:816
	ds_load_u8 v109, v171 offset:704
	ds_load_u8 v112, v171 offset:640
	ds_load_u8 v98, v171 offset:720
	ds_load_u8 v99, v171 offset:656
	ds_load_u8 v254, v171 offset:736
	ds_load_u8 v177, v171 offset:672
	ds_load_u8 v246, v171 offset:752
	ds_load_u8 v251, v171 offset:688
	ds_load_u8 v133, v171 offset:576
	ds_load_u8 v135, v171 offset:512
	ds_load_u8 v122, v171 offset:592
	ds_load_u8 v125, v171 offset:528
	ds_load_u8 v114, v171 offset:608
	ds_load_u8 v116, v171 offset:544
	ds_load_u8 v107, v171 offset:624
	ds_load_u8 v111, v171 offset:560
	ds_load_u8 v224, v171 offset:1216
	ds_load_u8 v233, v171 offset:1280
	ds_load_u8 v212, v171 offset:1232
	ds_load_u8 v216, v171 offset:1168
	ds_load_u8 v207, v171 offset:1248
	ds_load_u8 v209, v171 offset:1184
	ds_load_u8 v203, v171 offset:1264
	ds_load_u8 v205, v171 offset:1200
	ds_load_u8 v248, v171 offset:1152
	ds_load_u8 v255, v171 offset:1088
	ds_load_u8 v236, v171 offset:1104
	ds_load_u8 v240, v171 offset:1040
	ds_load_u8 v227, v171 offset:1120
	ds_load_u8 v229, v171 offset:1056
	ds_load_u8 v218, v171 offset:1136
	ds_load_u8 v221, v171 offset:1072
	ds_load_u8 v113, v171 offset:1472
	ds_load_u8 v201, v171 offset:1536
	ds_load_u8 v100, v171 offset:1488
	ds_load_u8 v103, v171 offset:1424
	ds_load_u8 v175, v171 offset:1504
	ds_load_u8 v168, v171 offset:1440
	ds_load_u8 v242, v171 offset:1520
	ds_load_u8 v247, v171 offset:1456
	ds_load_u8 v134, v171 offset:1408
	ds_load_u8 v136, v171 offset:1344
	ds_load_u8 v128, v171 offset:1360
	ds_load_u8 v131, v171 offset:1296
	ds_load_u8 v117, v171 offset:1376
	ds_load_u8 v119, v171 offset:1312
	ds_load_u8 v104, v171 offset:1392
	ds_load_u8 v108, v171 offset:1328
	ds_load_u8 v226, v171 offset:1984
	ds_load_u8 v213, v171 offset:2000
	ds_load_u8 v217, v171 offset:1936
	ds_load_u8 v208, v171 offset:2016
	ds_load_u8 v210, v171 offset:1952
	ds_load_u8 v184, v173
	ds_load_u8 v202, v169
	ds_load_u8 v204, v171 offset:1968
	ds_load_u8 v252, v171 offset:1920
	ds_load_u8 v129, v171 offset:1856
	ds_load_u8 v241, v171 offset:1872
	ds_load_u8 v244, v171 offset:1808
	ds_load_u8 v230, v171 offset:1888
	ds_load_u8 v232, v171 offset:1824
	ds_load_u8 v215, v171 offset:1904
	ds_load_u8 v219, v171 offset:1840
	ds_load_u8 v102, v171 offset:1728
	ds_load_u8 v115, v171 offset:1792
	ds_load_u8 v130, v171 offset:1744
	ds_load_u8 v127, v171 offset:1680
	ds_load_u8 v245, v171 offset:1760
	ds_load_u8 v250, v171 offset:1696
	ds_load_u8 v239, v171 offset:1776
	ds_load_u8 v243, v171 offset:1712
	ds_load_u8 v124, v171 offset:1664
	ds_load_u8 v132, v171 offset:1600
	ds_load_u8 v118, v171 offset:1616
	ds_load_u8 v120, v171 offset:1552
	ds_load_u8 v106, v171 offset:1632
	ds_load_u8 v110, v171 offset:1568
	ds_load_u8 v101, v171 offset:1648
	ds_load_u8 v105, v171 offset:1584
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v78, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 785 31                        ; ragged.py:785:31
	v_perm_b32 v0, v170, v0, 0xc0c0004
	v_perm_b32 v69, v73, v69, 0xc0c0004
	v_perm_b32 v73, v185, v183, 0xc0c0004
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, 0, v78
	ds_store_b8 v78, v141
	ds_store_b8 v78, v142 offset:512
	ds_store_b8 v78, v143 offset:1024
	ds_store_b8 v78, v144 offset:1536
	ds_store_b8 v78, v146 offset:2048
	ds_store_b8 v78, v147 offset:2560
	ds_store_b8 v78, v148 offset:3072
	ds_store_b8 v78, v149 offset:3584
	ds_store_b8 v78, v81 offset:4096
	ds_store_b8 v78, v151 offset:4608
	ds_store_b8 v78, v152 offset:5120
	ds_store_b8 v78, v153 offset:5632
	ds_store_b8 v78, v154 offset:6144
	ds_store_b8 v78, v155 offset:6656
	ds_store_b8 v78, v156 offset:7168
	ds_store_b8 v78, v157 offset:7680
	.loc	1 785 31                        ; ragged.py:785:31
	v_perm_b32 v78, v163, v162, 0xc0c0004
	.loc	1 784 34                        ; ragged.py:784:34
	ds_store_b8 v178, v187
	ds_store_b8 v178, v84 offset:512
	ds_store_b8 v178, v83 offset:1024
	ds_store_b8 v178, v82 offset:1536
	ds_store_b8 v178, v188 offset:2048
	ds_store_b8 v178, v189 offset:2560
	ds_store_b8 v178, v190 offset:3072
	ds_store_b8 v178, v191 offset:3584
	ds_store_b8 v178, v192 offset:4096
	ds_store_b8 v178, v193 offset:4608
	ds_store_b8 v178, v194 offset:5120
	ds_store_b8 v178, v195 offset:5632
	ds_store_b8 v178, v196 offset:6144
	ds_store_b8 v178, v197 offset:6656
	ds_store_b8 v178, v198 offset:7168
	ds_store_b8 v178, v199 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v151, v68
	.loc	1 785 31                        ; ragged.py:785:31
	v_lshl_or_b32 v142, v78, 16, v0
	v_perm_b32 v0, v66, v172, 0xc0c0004
	v_perm_b32 v66, v165, v164, 0xc0c0004
	v_mov_b32_e32 v155, v67
	v_perm_b32 v67, v77, v174, 0xc0c0004
	v_perm_b32 v68, v237, v234, 0xc0c0004
	v_lshl_or_b32 v141, v73, 16, v69
	v_lshl_or_b32 v144, v66, 16, v0
	v_perm_b32 v0, v65, v180, 0xc0c0004
	v_perm_b32 v66, v167, v166, 0xc0c0004
	v_perm_b32 v69, v74, v70, 0xc0c0004
	v_perm_b32 v70, v161, v160, 0xc0c0004
	v_lshl_or_b32 v146, v68, 16, v67
	v_perm_b32 v67, v79, v80, 0xc0c0004
	v_lshl_or_b32 v147, v66, 16, v0
	v_perm_b32 v0, v140, v139, 0xc0c0004
	v_perm_b32 v66, v138, v137, 0xc0c0004
	v_perm_b32 v68, v123, v121, 0xc0c0004
	v_lshl_or_b32 v143, v70, 16, v69
	scratch_load_b64 v[82:83], off, off offset:80 ; 8-byte Folded Reload
	v_mov_b32_e32 v81, v95
	v_lshl_or_b32 v149, v66, 16, v0
	.loc	1 784 34                        ; ragged.py:784:34
	v_add_nc_u32_e32 v0, 0, v150
	.loc	1 785 31                        ; ragged.py:785:31
	v_lshl_or_b32 v148, v68, 16, v67
	v_perm_b32 v66, v231, v228, 0xc0c0004
	v_perm_b32 v67, v135, v133, 0xc0c0004
	v_perm_b32 v68, v112, v109, 0xc0c0004
	.loc	1 784 34                        ; ragged.py:784:34
	ds_load_2addr_stride64_b64 v[137:140], v0 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	v_perm_b32 v0, v182, v126, 0xc0c0004
	v_dual_mov_b32 v152, v72 :: v_dual_mov_b32 v153, v75
	v_mov_b32_e32 v154, v71
	v_mov_b32_e32 v156, v76
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[141:142], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[143:144], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[146:147], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[146:147], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[148:149], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[148:149], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v66, 16, v0
	v_lshl_or_b32 v141, v68, 16, v67
	v_perm_b32 v0, v253, v249, 0xc0c0004
	v_perm_b32 v66, v225, v222, 0xc0c0004
	v_perm_b32 v67, v125, v122, 0xc0c0004
	v_perm_b32 v68, v99, v98, 0xc0c0004
	.loc	1 784 34                        ; ragged.py:784:34
	ds_load_2addr_stride64_b64 v[137:140], v87 offset1:8
	v_mov_b32_e32 v148, v85
	.loc	1 785 31                        ; ragged.py:785:31
	v_lshl_or_b32 v99, v66, 16, v0
	v_perm_b32 v0, v238, v235, 0xc0c0004
	v_lshl_or_b32 v98, v68, 16, v67
	v_perm_b32 v66, v214, v211, 0xc0c0004
	v_perm_b32 v67, v116, v114, 0xc0c0004
	v_perm_b32 v68, v177, v254, 0xc0c0004
	v_mov_b32_e32 v147, v88
	scratch_load_b64 v[84:85], off, off offset:64 ; 8-byte Folded Reload
	v_lshl_or_b32 v122, v66, 16, v0
	v_perm_b32 v0, v111, v107, 0xc0c0004
	v_lshl_or_b32 v121, v68, 16, v67
	v_perm_b32 v66, v251, v246, 0xc0c0004
	v_perm_b32 v67, v223, v220, 0xc0c0004
	v_perm_b32 v68, v206, v184, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v83, v89
	scratch_load_b64 v[88:89], off, off offset:40 ; 8-byte Folded Reload
	v_lshl_or_b32 v111, v66, 16, v0
	v_mov_b32_e32 v143, v90
	v_lshl_or_b32 v112, v68, 16, v67
	v_mov_b32_e32 v146, v86
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[85:86], off, off offset:72
	scratch_load_b64 v[89:90], off, off offset:88
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[141:142], v[9:16] neg_lo:[1,1,0]
	v_mov_b32_e32 v142, v92
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[98:99], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[121:122], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[111:112], v[49:56] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v137, v93 :: v_dual_mov_b32 v86, v91
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[90:91], off, off offset:24
	scratch_load_b64 v[65:66], off, off offset:48
	scratch_load_b64 v[92:93], off, off offset:8
	v_mov_b32_e32 v141, v94
	scratch_load_b64 v[93:94], off, off offset:32 ; 8-byte Folded Reload
	v_perm_b32 v0, v233, v136, 0xc0c0004
	v_mov_b32_e32 v136, v96
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v94, v97
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[96:97], off, off
	scratch_load_b32 v91, off, off offset:108
	scratch_load_b64 v[66:67], off, off offset:16
	v_mov_b32_e32 v144, v87
	v_perm_b32 v68, v248, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[98:99], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[111:112], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[121:122], v[41:48] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v95, v66
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v80, off, off offset:104
	scratch_load_b64 v[66:67], off, off offset:56
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v200, v255, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v68, 16, v67
	v_perm_b32 v67, v240, v236, 0xc0c0004
	v_perm_b32 v68, v216, v212, 0xc0c0004
	v_lshl_or_b32 v121, v68, 16, v67
	v_perm_b32 v67, v229, v227, 0xc0c0004
	v_perm_b32 v68, v209, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v68, 16, v67
	v_perm_b32 v67, v221, v218, 0xc0c0004
	v_perm_b32 v68, v205, v203, 0xc0c0004
	v_mov_b32_e32 v87, v66
	v_perm_b32 v66, v134, v113, 0xc0c0004
	.loc	1 784 34                        ; ragged.py:784:34
	ds_load_2addr_stride64_b64 v[111:114], v91 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	v_lshl_or_b32 v99, v66, 16, v0
	v_perm_b32 v0, v131, v128, 0xc0c0004
	v_perm_b32 v66, v103, v100, 0xc0c0004
	v_lshl_or_b32 v103, v68, 16, v67
	v_perm_b32 v67, v201, v132, 0xc0c0004
	v_perm_b32 v68, v124, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v122, v66, 16, v0
	v_perm_b32 v0, v119, v117, 0xc0c0004
	v_perm_b32 v66, v168, v175, 0xc0c0004
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v67, v120, v118, 0xc0c0004
	v_perm_b32 v68, v127, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v117, v66, 16, v0
	v_perm_b32 v0, v108, v104, 0xc0c0004
	v_perm_b32 v66, v247, v242, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[111:112], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[113:114], v[98:99], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v68, 16, v67
	v_perm_b32 v67, v110, v106, 0xc0c0004
	v_lshl_or_b32 v104, v66, 16, v0
	v_perm_b32 v0, v115, v129, 0xc0c0004
	v_perm_b32 v66, v252, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[121:122], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[113:114], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[111:112], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[113:114], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v244, v241, 0xc0c0004
	v_perm_b32 v66, v217, v213, 0xc0c0004
	v_perm_b32 v68, v250, v245, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[111:112], v[116:117], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[113:114], v[116:117], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v108, v66, 16, v0
	v_perm_b32 v0, v232, v230, 0xc0c0004
	v_perm_b32 v66, v210, v208, 0xc0c0004
	v_lshl_or_b32 v109, v68, 16, v67
	v_perm_b32 v67, v219, v215, 0xc0c0004
	v_perm_b32 v68, v204, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v110, v66, 16, v0
	v_perm_b32 v0, v105, v101, 0xc0c0004
	.loc	1 784 34                        ; ragged.py:784:34
	ds_load_2addr_stride64_b64 v[98:101], v146 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	v_perm_b32 v66, v243, v239, 0xc0c0004
	v_lshl_or_b32 v105, v68, 16, v67
	v_lshl_or_b32 v104, v66, 16, v0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[107:108], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[107:108], v[25:32] neg_lo:[1,1,0]
	scratch_load_b32 v107, off, off offset:100 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[109:110], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[109:110], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[104:105], v[57:64] neg_lo:[1,1,0]
	.loc	1 773 23                        ; ragged.py:773:23
	s_cbranch_vccnz .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 799 25                        ; ragged.py:799:25
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:368
	scratch_load_b32 v66, off, off offset:372
	scratch_load_b32 v67, off, off offset:376
	scratch_load_b32 v68, off, off offset:380
	scratch_load_b32 v69, off, off offset:384
	.loc	1 806 25                        ; ragged.py:806:25
	s_add_i32 s40, s41, s63
	.loc	1 805 40                        ; ragged.py:805:40
	s_mov_b32 s58, s54
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s40, s40, s62
	.loc	1 805 40                        ; ragged.py:805:40
	s_mov_b32 s59, s55
	.loc	1 798 40                        ; ragged.py:798:40
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v101, v13
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	v_cvt_f32_i32_e32 v75, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v77, v8
	v_cvt_f32_i32_e32 v78, v9
	v_cvt_f32_i32_e32 v98, v10
	v_cvt_f32_i32_e32 v99, v11
	v_cvt_f32_i32_e32 v100, v12
	v_cvt_f32_i32_e32 v102, v14
	v_cvt_f32_i32_e32 v103, v15
	v_cvt_f32_i32_e32 v104, v16
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 799 25                        ; ragged.py:799:25
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v0, v0, s60
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v66, v66, s60
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v67, v67, s60
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v68, v68, s60
	.loc	1 805 40                        ; ragged.py:805:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v69, v69, s40, 1
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v0, s41, v0, 1
	v_add_lshl_u32 v66, s41, v66, 1
	v_add_lshl_u32 v67, s41, v67, 1
	v_add_lshl_u32 v68, s41, v68, 1
	.loc	1 805 40                        ; ragged.py:805:40
	v_cndmask_b32_e64 v69, 0x80000000, v69, s38
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 805 40                        ; ragged.py:805:40
	buffer_load_u16 v69, v69, s[56:59], 0 offen
	.loc	1 798 40                        ; ragged.py:798:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[48:51], 0 offen
	buffer_load_u16 v66, v66, s[48:51], 0 offen
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 812 17                        ; ragged.py:812:17
	s_add_i32 s41, s41, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lg_u32 s41, s60
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v17, v17, v66 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 805 40                        ; ragged.py:805:40
	v_lshlrev_b32_e32 v1, 16, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v69, v70, v0
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v70, v71, v0 :: v_dual_lshlrev_b32 v67, 16, v67
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v19, v66 :: v_dual_lshlrev_b32 v68, 16, v68
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v13, off, off offset:392
	scratch_load_b32 v135, off, off offset:364
	scratch_load_b32 v134, off, off offset:360
	scratch_load_b32 v133, off, off offset:356
	scratch_load_b32 v132, off, off offset:352
	scratch_load_b32 v131, off, off offset:348
	scratch_load_b32 v130, off, off offset:344
	scratch_load_b32 v129, off, off offset:340
	scratch_load_b32 v128, off, off offset:336
	scratch_load_b32 v127, off, off offset:332
	scratch_load_b32 v126, off, off offset:328
	scratch_load_b32 v125, off, off offset:324
	scratch_load_b32 v124, off, off offset:320
	scratch_load_b32 v123, off, off offset:316
	scratch_load_b32 v122, off, off offset:312
	scratch_load_b32 v121, off, off offset:308
	scratch_load_b32 v120, off, off offset:304
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v71, v72, v0 :: v_dual_mul_f32 v18, v18, v66
	v_mul_f32_e32 v72, v73, v0
	v_dual_mul_f32 v73, v74, v0 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v74, v75, v0 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v75, v76, v0 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v76, v77, v0 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v77, v78, v0 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v78, v98, v0 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v98, v99, v0 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v99, v100, v0 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v100, v101, v0 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v101, v102, v0 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v102, v103, v0 :: v_dual_mul_f32 v33, v33, v67
	v_dual_mul_f32 v0, v104, v0 :: v_dual_mul_f32 v31, v31, v66
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v119, off, off offset:300
	scratch_load_b32 v118, off, off offset:296
	scratch_load_b32 v117, off, off offset:292
	scratch_load_b32 v116, off, off offset:288
	scratch_load_b32 v115, off, off offset:284
	scratch_load_b32 v114, off, off offset:280
	scratch_load_b32 v113, off, off offset:276
	scratch_load_b32 v112, off, off offset:272
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v52, v52, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v58, v58, v68
	v_dual_mul_f32 v34, v34, v67 :: v_dual_mul_f32 v49, v49, v68
	v_dual_mul_f32 v43, v43, v67 :: v_dual_mul_f32 v54, v54, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v63, v63, v68
	v_dual_mul_f32 v30, v30, v66 :: v_dual_mul_f32 v35, v35, v67
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v37, v37, v67
	v_dual_mul_f32 v36, v36, v67 :: v_dual_mul_f32 v51, v51, v68
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v53, v53, v68
	v_dual_mul_f32 v39, v39, v67 :: v_dual_mul_f32 v50, v50, v68
	v_dual_mul_f32 v40, v40, v67 :: v_dual_mul_f32 v55, v55, v68
	v_dual_mul_f32 v42, v42, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v44, v44, v67 :: v_dual_mul_f32 v59, v59, v68
	v_dual_mul_f32 v45, v45, v67 :: v_dual_mul_f32 v56, v56, v68
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v61, v61, v68
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v67, off, off offset:148
	scratch_load_b32 v111, off, off offset:268
	scratch_load_b32 v110, off, off offset:264
	scratch_load_b32 v109, off, off offset:260
	scratch_load_b32 v108, off, off offset:256
	scratch_load_b32 v106, off, off offset:252
	scratch_load_b32 v105, off, off offset:248
	scratch_load_b32 v104, off, off offset:244
	scratch_load_b32 v103, off, off offset:240
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt vmcnt(33)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v62, v62, v68
	v_mul_f32_e32 v64, v64, v68
	v_mul_f32_e32 v60, v60, v68
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v79, off, off offset:216
	scratch_load_b32 v68, off, off offset:156
	scratch_load_b32 v66, off, off offset:136
	.loc	1 811 17                        ; ragged.py:811:17
	s_waitcnt vmcnt(29) lgkmcnt(2)
	v_dual_fmac_f32 v134, v70, v2 :: v_dual_fmac_f32 v129, v75, v7
	v_dual_fmac_f32 v133, v71, v3 :: v_dual_fmac_f32 v132, v72, v4
	s_waitcnt vmcnt(27) lgkmcnt(1)
	v_fmac_f32_e32 v127, v77, v9
	v_dual_fmac_f32 v131, v73, v5 :: v_dual_fmac_f32 v130, v74, v6
	s_waitcnt vmcnt(23) lgkmcnt(0)
	v_fmac_f32_e32 v123, v100, v13
	v_dual_fmac_f32 v128, v76, v8 :: v_dual_fmac_f32 v125, v98, v11
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v120, v0, v16
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v76, off, off offset:204
	scratch_load_b32 v75, off, off offset:200
	scratch_load_b32 v74, off, off offset:196
	scratch_load_b32 v73, off, off offset:192
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v72, off, off offset:184
	scratch_load_b32 v71, off, off offset:180
	scratch_load_b32 v70, off, off offset:172
	v_fmac_f32_e32 v135, v69, v1
	scratch_load_b32 v69, off, off offset:160 ; 4-byte Folded Reload
	v_fmac_f32_e32 v126, v78, v10
	v_dual_fmac_f32 v124, v99, v12 :: v_dual_fmac_f32 v121, v102, v15
	v_fmac_f32_e32 v122, v101, v14
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v102, off, off offset:236
	scratch_load_b32 v101, off, off offset:232
	scratch_load_b32 v100, off, off offset:228
	scratch_load_b32 v99, off, off offset:224
	scratch_load_b32 v98, off, off offset:220
	scratch_load_b32 v78, off, off offset:212
	scratch_load_b32 v77, off, off offset:208
	s_waitcnt vmcnt(34)
	v_dual_fmac_f32 v119, v17, v1 :: v_dual_fmac_f32 v118, v18, v2
	s_waitcnt vmcnt(29)
	v_fmac_f32_e32 v113, v23, v7
	v_dual_fmac_f32 v117, v19, v3 :: v_dual_fmac_f32 v116, v20, v4
	v_dual_fmac_f32 v115, v21, v5 :: v_dual_fmac_f32 v114, v22, v6
	s_waitcnt vmcnt(26)
	v_dual_fmac_f32 v112, v24, v8 :: v_dual_fmac_f32 v111, v25, v9
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v110, v26, v10 :: v_dual_fmac_f32 v109, v27, v11
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v108, v28, v12
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v106, v29, v13 :: v_dual_fmac_f32 v105, v30, v14
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v104, v31, v15 :: v_dual_fmac_f32 v103, v32, v16
	s_waitcnt vmcnt(18)
	v_fmac_f32_e32 v79, v38, v6
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v66, v58, v10
	scratch_load_b32 v58, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v76, v41, v9 :: v_dual_fmac_f32 v75, v42, v10
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v73, v44, v12 :: v_dual_fmac_f32 v72, v46, v14
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v71, v47, v15
	scratch_load_b32 v47, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v70, v49, v1
	scratch_load_b32 v49, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v74, v43, v11 :: v_dual_fmac_f32 v69, v52, v4
	scratch_load_b32 v52, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v102, v33, v1 :: v_dual_fmac_f32 v101, v34, v2
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v100, v35, v3 :: v_dual_fmac_f32 v99, v36, v4
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v98, v37, v5 :: v_dual_fmac_f32 v77, v40, v8
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v47, v48, v16
	scratch_load_b32 v48, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v0, v45, v13 :: v_dual_fmac_f32 v49, v50, v2
	scratch_load_b32 v50, off, off offset:152 ; 4-byte Folded Reload
	v_fmac_f32_e32 v68, v53, v5
	scratch_load_b32 v53, off, off offset:128 ; 4-byte Folded Reload
	v_dual_fmac_f32 v78, v39, v7 :: v_dual_mov_b32 v45, v0
	v_fmac_f32_e32 v58, v59, v11
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v48, v51, v3
	scratch_load_b32 v51, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v67, v55, v7 :: v_dual_fmac_f32 v50, v54, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:124
	scratch_load_b32 v55, off, off offset:120
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v53, v60, v12
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v51, v57, v9
	scratch_load_b32 v57, off, off offset:116 ; 4-byte Folded Reload
	v_fmac_f32_e32 v52, v56, v8
	scratch_load_b32 v56, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v54, v61, v13 :: v_dual_fmac_f32 v55, v62, v14
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v57, v63, v15 :: v_dual_fmac_f32 v56, v64, v16
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_2
; %bb.5:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v46, off, off offset:396 ; 4-byte Folded Reload
.LBB0_6:                                ; %._crit_edge
	.loc	1 719 36 is_stmt 1              ; ragged.py:719:36
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 1, v46
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v22, v134, 16, 1
	v_bfe_u32 v23, v133, 16, 1
	v_cmp_o_f32_e64 s19, v135, v135
	v_cmp_o_f32_e64 s20, v134, v134
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, s39, v0
	.loc	1 815 13                        ; ragged.py:815:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:368
	scratch_load_b32 v17, off, off offset:372
	.loc	1 814 9                         ; ragged.py:814:9
	v_add3_u32 v22, v134, v22, 0x7fff
	v_bfe_u32 v24, v132, 16, 1
	v_add3_u32 v23, v133, v23, 0x7fff
	v_cmp_o_f32_e64 s21, v133, v133
	v_bfe_u32 v25, v130, 16, 1
	v_bfe_u32 v26, v128, 16, 1
	v_add3_u32 v24, v132, v24, 0x7fff
	v_bfe_u32 v27, v126, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s21
	v_add3_u32 v25, v130, v25, 0x7fff
	v_cmp_o_f32_e64 s21, v130, v130
	v_add3_u32 v26, v128, v26, 0x7fff
	v_bfe_u32 v28, v124, 16, 1
	v_add3_u32 v27, v126, v27, 0x7fff
	v_bfe_u32 v29, v122, 16, 1
	v_bfe_u32 v30, v120, 16, 1
	v_bfe_u32 v31, v118, 16, 1
	v_add3_u32 v28, v124, v28, 0x7fff
	v_bfe_u32 v32, v116, 16, 1
	v_add3_u32 v29, v122, v29, 0x7fff
	v_add3_u32 v30, v120, v30, 0x7fff
	v_add3_u32 v31, v118, v31, 0x7fff
	v_bfe_u32 v33, v114, 16, 1
	v_add3_u32 v32, v116, v32, 0x7fff
	v_bfe_u32 v34, v112, 16, 1
	v_bfe_u32 v35, v110, 16, 1
	v_bfe_u32 v36, v108, 16, 1
	v_add3_u32 v33, v114, v33, 0x7fff
	v_bfe_u32 v37, v105, 16, 1
	v_add3_u32 v34, v112, v34, 0x7fff
	v_add3_u32 v35, v110, v35, 0x7fff
	v_add3_u32 v36, v108, v36, 0x7fff
	v_bfe_u32 v38, v103, 16, 1
	v_add3_u32 v37, v105, v37, 0x7fff
	v_bfe_u32 v39, v101, 16, 1
	v_bfe_u32 v40, v99, 16, 1
	v_bfe_u32 v41, v79, 16, 1
	v_add3_u32 v38, v103, v38, 0x7fff
	v_bfe_u32 v42, v77, 16, 1
	v_add3_u32 v39, v101, v39, 0x7fff
	v_add3_u32 v40, v99, v40, 0x7fff
	v_add3_u32 v41, v79, v41, 0x7fff
	v_bfe_u32 v43, v75, 16, 1
	v_add3_u32 v42, v77, v42, 0x7fff
	v_bfe_u32 v44, v73, 16, 1
	v_bfe_u32 v46, v47, 16, 1
	v_cmp_o_f32_e64 s22, v56, v56
	v_add3_u32 v43, v75, v43, 0x7fff
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v16, 1, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_add3_u32 v44, v73, v44, 0x7fff
	v_add3_u32 v46, v47, v46, 0x7fff
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v15, 2, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s18, s62, v11
	v_cmp_gt_i32_e64 s17, s62, v16
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v21.h, 0
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s62, v15
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v13, 4, v11
	s_mov_b32 s23, 0x31027000
	v_or_b32_e32 v12, 5, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s15, s62, v14
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s14, s62, v13
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s13, s62, v12
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s12, s62, v10
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s11, s62, v9
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s10, s62, v8
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.h, v21.h
	v_mov_b16_e32 v60.h, v21.h
	v_mov_b16_e32 v61.h, v21.h
	v_mov_b16_e32 v62.h, v21.h
	v_mov_b16_e32 v63.h, v21.h
	v_mov_b16_e32 v64.h, v21.h
	v_mov_b16_e32 v65.h, v21.h
	v_mov_b16_e32 v80.h, v21.h
	v_mov_b16_e32 v81.h, v21.h
	v_mov_b16_e32 v82.h, v21.h
	v_mov_b16_e32 v83.h, v21.h
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s9, s62, v7
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s8, s62, v6
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s7, s62, v5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s6, s62, v4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s62, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e32 vcc_lo, s62, v1
	v_cmp_gt_i32_e64 s0, s62, v2
	.loc	1 815 13                        ; ragged.py:815:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v20, v0, s62
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v19, v17, s62
	scratch_load_b32 v17, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v0, v135, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v135, v0, 0x7fff
	v_add_lshl_u32 v84, v11, v20, 1
	v_add_lshl_u32 v85, v16, v20, 1
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b16 v0.l, 0x7fff, v0.h, s19
	v_cndmask_b16 v0.h, 0x7fff, v22.h, s20
	v_bfe_u32 v22, v131, 16, 1
	v_cmp_o_f32_e64 s19, v132, v132
	v_cmp_o_f32_e64 s20, v131, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v131, v22, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s19
	v_bfe_u32 v24, v129, 16, 1
	v_cmp_o_f32_e64 s19, v129, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s20
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s21
	v_bfe_u32 v25, v127, 16, 1
	v_add3_u32 v24, v129, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v128, v128
	v_cmp_o_f32_e64 s21, v127, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v127, v25, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s20
	v_bfe_u32 v26, v125, 16, 1
	v_cmp_o_f32_e64 s19, v126, v126
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s21
	v_cmp_o_f32_e64 s20, v125, v125
	v_cmp_o_f32_e64 s21, v124, v124
	v_add3_u32 v26, v125, v26, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s19
	v_bfe_u32 v27, v123, 16, 1
	v_cmp_o_f32_e64 s19, v123, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s20
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s21
	v_bfe_u32 v28, v121, 16, 1
	v_add3_u32 v27, v123, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v122, v122
	v_cmp_o_f32_e64 s21, v121, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v121, v28, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v119, 16, 1
	v_cmp_o_f32_e64 s19, v120, v120
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s21
	v_cmp_o_f32_e64 s20, v119, v119
	v_cmp_o_f32_e64 s21, v118, v118
	v_add3_u32 v29, v119, v29, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s19
	v_bfe_u32 v30, v117, 16, 1
	v_cmp_o_f32_e64 s19, v117, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s20
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s21
	v_bfe_u32 v31, v115, 16, 1
	v_add3_u32 v30, v117, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v116, v116
	v_cmp_o_f32_e64 s21, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v115, v31, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s20
	v_bfe_u32 v32, v113, 16, 1
	v_cmp_o_f32_e64 s19, v114, v114
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s21
	v_cmp_o_f32_e64 s20, v113, v113
	v_cmp_o_f32_e64 s21, v112, v112
	v_add3_u32 v32, v113, v32, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s19
	v_bfe_u32 v33, v111, 16, 1
	v_cmp_o_f32_e64 s19, v111, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s20
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s21
	v_bfe_u32 v34, v109, 16, 1
	v_add3_u32 v33, v111, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v110, v110
	v_cmp_o_f32_e64 s21, v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v109, v34, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_bfe_u32 v35, v106, 16, 1
	v_cmp_o_f32_e64 s19, v108, v108
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s21
	v_cmp_o_f32_e64 s20, v106, v106
	v_cmp_o_f32_e64 s21, v105, v105
	v_add3_u32 v35, v106, v35, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s19
	v_bfe_u32 v36, v104, 16, 1
	v_cmp_o_f32_e64 s19, v104, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s20
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s21
	v_bfe_u32 v37, v102, 16, 1
	v_add3_u32 v36, v104, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v103, v103
	v_cmp_o_f32_e64 s21, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v102, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s20
	v_bfe_u32 v38, v100, 16, 1
	v_cmp_o_f32_e64 s19, v101, v101
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s21
	v_cmp_o_f32_e64 s20, v100, v100
	v_cmp_o_f32_e64 s21, v99, v99
	v_add3_u32 v38, v100, v38, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s19
	v_bfe_u32 v39, v98, 16, 1
	v_cmp_o_f32_e64 s19, v98, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s20
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s21
	v_bfe_u32 v40, v78, 16, 1
	v_add3_u32 v39, v98, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v79, v79
	v_cmp_o_f32_e64 s21, v78, v78
	v_mov_b16_e32 v79.h, v21.h
	v_add3_u32 v40, v78, v40, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s19
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s20
	v_bfe_u32 v41, v76, 16, 1
	v_cmp_o_f32_e64 s19, v77, v77
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s21
	v_cmp_o_f32_e64 s20, v76, v76
	v_cmp_o_f32_e64 s21, v75, v75
	v_add3_u32 v41, v76, v41, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s19
	v_bfe_u32 v42, v74, 16, 1
	v_cmp_o_f32_e64 s19, v74, v74
	v_mov_b16_e32 v75.h, v21.h
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s20
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s21
	v_bfe_u32 v43, v45, 16, 1
	v_add3_u32 v42, v74, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_cmp_o_f32_e64 s21, v45, v45
	v_mov_b16_e32 v73.h, v21.h
	v_add3_u32 v43, v45, v43, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s19
	v_bfe_u32 v45, v72, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s20
	v_bfe_u32 v44, v71, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s21
	v_cmp_o_f32_e64 s19, v72, v72
	v_add3_u32 v45, v72, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v44, v71, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v47, v47
	v_bfe_u32 v47, v49, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s19
	v_bfe_u32 v45, v70, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s20
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s21
	v_bfe_u32 v46, v48, 16, 1
	v_cmp_o_f32_e64 s19, v70, v70
	v_add3_u32 v45, v70, v45, 0x7fff
	v_add3_u32 v47, v49, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_add3_u32 v46, v48, v46, 0x7fff
	v_cmp_o_f32_e64 s21, v48, v48
	v_bfe_u32 v48, v69, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s20
	v_bfe_u32 v47, v68, 16, 1
	v_bfe_u32 v49, v50, 16, 1
	v_add3_u32 v48, v69, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v69, v69
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s21
	v_add3_u32 v47, v68, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v68, v68
	v_add3_u32 v49, v50, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v50, v50
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s19
	v_bfe_u32 v48, v67, 16, 1
	v_bfe_u32 v50, v52, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s20
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s21
	v_bfe_u32 v49, v51, 16, 1
	v_add3_u32 v48, v67, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v50, v52, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_add3_u32 v49, v51, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s19
	v_bfe_u32 v51, v66, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v58, 16, 1
	v_bfe_u32 v52, v53, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s21
	v_add3_u32 v51, v66, v51, 0x7fff
	v_cmp_o_f32_e64 s19, v66, v66
	v_add3_u32 v50, v58, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_add3_u32 v52, v53, v52, 0x7fff
	v_cmp_o_f32_e64 s21, v53, v53
	v_bfe_u32 v53, v54, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s20
	v_bfe_u32 v51, v55, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s21
	v_add3_u32 v52, v54, v53, 0x7fff
	v_bfe_u32 v53, v57, 16, 1
	v_cmp_o_f32_e64 s19, v54, v54
	v_bfe_u32 v54, v56, 16, 1
	v_add3_u32 v51, v55, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_add3_u32 v53, v57, v53, 0x7fff
	v_and_b32_e32 v55, 16, v107
	v_cmp_o_f32_e64 s21, v57, v57
	v_add3_u32 v54, v56, v54, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s20
	s_mov_b32 s20, 0x76543210
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s21
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cmp_eq_u32_e64 s19, 0, v55
	v_mov_b32_e32 v55, 0x7632
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	v_mov_b16_e32 v56.h, v21.h
	v_cndmask_b32_e64 v53, v22, v0, s19
	v_cndmask_b32_e64 v0, v0, v22, s19
	v_cndmask_b32_e64 v22, v24, v23, s19
	v_cndmask_b32_e64 v23, v23, v24, s19
	v_cndmask_b32_e64 v24, v27, v25, s19
	v_cndmask_b32_e64 v25, v25, v27, s19
	v_cndmask_b32_e64 v27, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v31, v29, s19
	v_cndmask_b32_e64 v29, v29, v31, s19
	v_cndmask_b32_e64 v31, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v35, v33, s19
	v_cndmask_b32_e64 v33, v33, v35, s19
	v_cndmask_b32_e64 v35, v36, v34, s19
	v_cndmask_b32_e64 v34, v34, v36, s19
	v_cndmask_b32_e64 v36, v39, v37, s19
	v_cndmask_b32_e64 v37, v37, v39, s19
	v_cndmask_b32_e64 v39, v40, v38, s19
	v_cndmask_b32_e64 v38, v38, v40, s19
	v_cndmask_b32_e64 v40, v43, v41, s19
	v_cndmask_b32_e64 v41, v41, v43, s19
	v_cndmask_b32_e64 v43, v44, v42, s19
	v_cndmask_b32_e64 v42, v42, v44, s19
	v_cndmask_b32_e64 v44, v47, v45, s19
	v_cndmask_b32_e64 v45, v45, v47, s19
	v_cndmask_b32_e64 v47, v48, v46, s19
	v_cndmask_b32_e64 v46, v46, v48, s19
	v_cndmask_b32_e64 v48, v51, v49, s19
	v_cndmask_b32_e64 v49, v49, v51, s19
	v_cndmask_b32_e64 v51, v52, v50, s19
	v_cndmask_b32_e64 v50, v50, v52, s19
	v_cndmask_b32_e64 v52, 0x1054, v54, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v52, v52, 8, v52
	v_lshl_or_b32 v54, v54, 8, v54
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v52, 0x540054, v52
	v_and_b32_e32 v54, 0x760076, v54
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v52, v52, 4, v52
	v_lshl_or_b32 v54, v54, 4, v54
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v52, 0x5040504, v52
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v0, v53, v52
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v0, v0, v53, v54
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v53, v23, v22, v52
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v22, v23, v22, v54
	v_perm_b32 v23, v25, v24, v52
	v_perm_b32 v24, v25, v24, v54
	v_perm_b32 v25, v26, v27, v52
	v_perm_b32 v26, v26, v27, v54
	v_perm_b32 v27, v29, v28, v52
	v_perm_b32 v28, v29, v28, v54
	v_perm_b32 v29, v30, v31, v52
	v_perm_b32 v30, v30, v31, v54
	v_perm_b32 v31, v33, v32, v52
	v_perm_b32 v32, v33, v32, v54
	v_perm_b32 v33, v34, v35, v52
	v_perm_b32 v34, v34, v35, v54
	v_perm_b32 v35, v37, v36, v52
	v_perm_b32 v36, v37, v36, v54
	v_perm_b32 v37, v38, v39, v52
	v_perm_b32 v38, v38, v39, v54
	v_perm_b32 v39, v41, v40, v52
	v_perm_b32 v40, v41, v40, v54
	.loc	1 815 13                        ; ragged.py:815:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v18, v17, s62
	scratch_load_b32 v17, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v41, v42, v43, v52
	v_perm_b32 v42, v42, v43, v54
	v_perm_b32 v43, v45, v44, v52
	v_perm_b32 v44, v45, v44, v54
	v_perm_b32 v45, v46, v47, v52
	v_perm_b32 v46, v46, v47, v54
	v_perm_b32 v47, v49, v48, v52
	v_perm_b32 v48, v49, v48, v54
	v_perm_b32 v49, v50, v51, v52
	v_perm_b32 v50, v50, v51, v54
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v21.h
	s_mov_b32 s20, s42
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	v_mov_b16_e32 v21.l, v0.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v0, v86, s[20:23], 0 offen
	v_add_lshl_u32 v0, v13, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s15, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v55, v12, v20, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s5
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v21, v51, s[20:23], 0 offen
	buffer_store_b16 v53, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v20, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v52.h, v21.h
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	v_mov_b16_e32 v57.h, v21.h
	v_mov_b16_e32 v58.h, v21.h
	v_mov_b16_e32 v66.h, v21.h
	v_mov_b16_e32 v67.h, v21.h
	v_mov_b16_e32 v68.h, v21.h
	v_mov_b16_e32 v69.h, v21.h
	v_mov_b16_e32 v70.h, v21.h
	v_mov_b16_e32 v71.h, v21.h
	v_mov_b16_e32 v72.h, v21.h
	v_mov_b16_e32 v74.h, v21.h
	v_mov_b16_e32 v76.h, v21.h
	v_mov_b16_e32 v77.h, v21.h
	v_mov_b16_e32 v78.h, v21.h
	v_add_lshl_u32 v21, v8, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s11, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v52.l, v22.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s10, s5
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v22, v84, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	v_add_lshl_u32 v51, v6, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s5
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v52, v0, s[20:23], 0 offen
	buffer_store_b16 v23, v21, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v4, v20, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.l, v23.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v24.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	s_clause 0x1
	buffer_store_b16 v57, v22, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v20, 1
	v_add_lshl_u32 v23, v2, v20, 1
	s_clause 0x1
	buffer_store_b16 v56, v0, s[20:23], 0 offen
	buffer_store_b16 v25, v21, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s1, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v20, v11, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s0, s5
	s_and_b32 s5, vcc_lo, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.l, v25.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s18, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v26.h
	v_add_lshl_u32 v21, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	s_clause 0x1
	buffer_store_b16 v59, v22, s[20:23], 0 offen
	buffer_store_b16 v26, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s17, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v58, v0, s[20:23], 0 offen
	buffer_store_b16 v27, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s16, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v27.h
	v_add_lshl_u32 v20, v13, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s15, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v28.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s14, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v61, v21, s[20:23], 0 offen
	buffer_store_b16 v28, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	v_add_lshl_u32 v22, v10, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s13, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v60, v0, s[20:23], 0 offen
	buffer_store_b16 v29, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s12, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v29.h
	v_add_lshl_u32 v20, v8, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s11, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v30.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s10, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v63, v21, s[20:23], 0 offen
	buffer_store_b16 v30, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	v_add_lshl_u32 v22, v6, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s9, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v62, v0, s[20:23], 0 offen
	buffer_store_b16 v31, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s8, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v20, v4, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s7, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v31.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s6, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.l, v32.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	s_clause 0x1
	buffer_store_b16 v65, v21, s[20:23], 0 offen
	buffer_store_b16 v32, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v19, 1
	v_add_lshl_u32 v22, v2, v19, 1
	s_clause 0x1
	buffer_store_b16 v64, v0, s[20:23], 0 offen
	buffer_store_b16 v33, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s1, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v19, v11, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s0, s4
	s_and_b32 s4, vcc_lo, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v33.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v34.h
	v_add_lshl_u32 v20, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	s_clause 0x1
	buffer_store_b16 v67, v21, s[20:23], 0 offen
	buffer_store_b16 v34, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v15, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v0, s[20:23], 0 offen
	buffer_store_b16 v35, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v35.h
	v_add_lshl_u32 v19, v13, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.l, v36.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v69, v20, s[20:23], 0 offen
	buffer_store_b16 v36, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_add_lshl_u32 v21, v10, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v68, v0, s[20:23], 0 offen
	buffer_store_b16 v37, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v37.h
	v_add_lshl_u32 v19, v8, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v70.l, v38.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v71, v20, s[20:23], 0 offen
	buffer_store_b16 v38, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_add_lshl_u32 v21, v6, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v70, v0, s[20:23], 0 offen
	buffer_store_b16 v39, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s8, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v19, v4, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.l, v39.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v72.l, v40.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	s_clause 0x1
	buffer_store_b16 v73, v20, s[20:23], 0 offen
	buffer_store_b16 v40, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v3, v18, 1
	s_clause 0x1
	buffer_store_b16 v72, v0, s[20:23], 0 offen
	buffer_store_b16 v41, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s1, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v2, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s0, s3
	s_and_b32 s3, vcc_lo, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v74.l, v42.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v75.l, v41.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	s_clause 0x1
	buffer_store_b16 v75, v20, s[20:23], 0 offen
	buffer_store_b16 v42, v21, s[20:23], 0 offen
	v_mov_b16_e32 v76.l, v44.h
	v_mov_b16_e32 v77.l, v43.h
	v_mov_b16_e32 v78.l, v46.h
	v_mov_b16_e32 v79.l, v45.h
	v_mov_b16_e32 v80.l, v48.h
	v_mov_b16_e32 v81.l, v47.h
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s1, s2
	s_and_b32 s0, s0, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v83.l, v49.h
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v82.l, v50.h
	.loc	1 815 13                        ; ragged.py:815:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v17, v17, s62
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_add_lshl_u32 v16, v16, v17, 1
	v_add_lshl_u32 v15, v15, v17, 1
	v_add_lshl_u32 v12, v12, v17, 1
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v74, v0, s[20:23], 0 offen
	buffer_store_b16 v43, v11, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v44, v15, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v76, v0, s[20:23], 0 offen
	buffer_store_b16 v45, v11, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v46, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v78, v0, s[20:23], 0 offen
	buffer_store_b16 v47, v8, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s8, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s7, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_add_lshl_u32 v2, v2, v17, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v1, v1, v17, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x1
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v48, v6, s[20:23], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v80, v0, s[20:23], 0 offen
	buffer_store_b16 v49, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v50, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 679 5                         ; ragged.py:679:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 404
		.amdhsa_kernarg_size 112
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 404
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15540
; TotalNumSgprs: 66
; NumVgprs: 256
; ScratchSize: 404
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 66
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x4d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x27 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	705                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 404
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 100
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
