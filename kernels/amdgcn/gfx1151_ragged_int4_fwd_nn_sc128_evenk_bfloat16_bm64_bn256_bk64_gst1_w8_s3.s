	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 679 0                         ; ragged.py:679:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[28:29], s[0:1], 0x54
.Ltmp0:
	.loc	1 707 25 prologue_end           ; ragged.py:707:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 718 18                        ; ragged.py:718:18
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:705:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:705:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
.Ltmp2:
	.loc	1 707 25 is_stmt 1              ; ragged.py:707:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v120, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	s_cselect_b32 s4, s8, s5
	.loc	1 719 36                        ; ragged.py:719:36
	v_and_b32_e32 v129, 0xf0, v0
	.loc	1 707 25                        ; ragged.py:707:25
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 709 33                        ; ragged.py:709:33
	s_sub_i32 s5, s29, s4
	.loc	1 710 24                        ; ragged.py:710:24
	s_mul_i32 s3, s4, s3
	.loc	1 709 22                        ; ragged.py:709:22
	s_min_i32 s5, s5, 1
	.loc	1 710 24                        ; ragged.py:710:24
	s_sub_i32 s2, s2, s3
	.loc	1 712 17                        ; ragged.py:712:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	.loc	1 718 32                        ; ragged.py:718:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 712 17                        ; ragged.py:712:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b64 s[30:31], s[2:3], 3
	s_add_u32 s2, s20, s30
	s_addc_u32 s3, s21, s31
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s2, s22, s30
	s_addc_u32 s3, s23, s31
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s4, s24, s30
	s_addc_u32 s5, s25, s31
	.loc	1 716 24                        ; ragged.py:716:24
	s_load_b64 s[22:23], s[2:3], 0x0
	.loc	1 717 22                        ; ragged.py:717:22
	s_load_b64 s[16:17], s[4:5], 0x0
	v_mov_b32_e32 v133, 0
	.loc	1 719 18                        ; ragged.py:719:18
	s_lshl_b32 s24, s6, 8
	.loc	1 718 18                        ; ragged.py:718:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s2
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v112, s20, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s2, s[16:17], v[2:3]
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s3, s[22:23], v[4:5]
	v_cmp_le_i64_e64 s6, s[22:23], v[6:7]
	v_cmp_le_i64_e64 s7, s[22:23], v[8:9]
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s4, s[16:17], v[4:5]
	v_cmp_gt_i64_e64 s8, s[16:17], v[6:7]
	v_cmp_gt_i64_e64 s9, s[16:17], v[8:9]
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v114, 16, v112
	.loc	1 799 25 is_stmt 1              ; ragged.py:799:25
	v_add_nc_u32_e32 v115, 32, v112
	v_add_nc_u32_e32 v116, 48, v112
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lt_i32 s28, 1
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[34:35], s[0:1], 0x20
	s_load_b32 s25, s[0:1], 0x50
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 718 32 is_stmt 1              ; ragged.py:718:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 718 18 is_stmt 0              ; ragged.py:718:18
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v6, 5, v1
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v10, 24, v7
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v5, 24, v5
	v_xor_b32_e32 v11, v7, v3
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v9, 0xe00, v9
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s34, s30
	s_addc_u32 s1, s35, s31
	v_or_b32_e32 v142, v6, v10
	.loc	1 806 25                        ; ragged.py:806:25
	s_load_b32 s29, s[0:1], 0x0
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v1, s0, s20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s21, 0, s0
	v_xor_b32_e32 v10, v10, v5
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v4, 3, v0
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[1:2]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s1, s[16:17], v[1:2]
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v2, 24, v11
	v_or_b32_e32 v143, v10, v8
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v14, 2, v129
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v144, v9, v2, v6
	v_dual_mov_b32 v121, 0 :: v_dual_and_b32 v8, 32, v8
	.loc	1 719 18 is_stmt 1              ; ragged.py:719:18
	v_or_b32_e32 v65, s24, v0
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v3, s20, v3
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v141, 24, v4
	v_xor_b32_e32 v1, v4, v5
	v_xor_b32_e32 v4, 8, v142
	.loc	1 782 39                        ; ragged.py:782:39
	s_mul_i32 s30, s25, s33
	v_xor_b32_e32 v5, 16, v142
	v_xor_b32_e32 v2, 24, v142
	v_xor_b32_e32 v6, 8, v143
	v_xor_b32_e32 v9, 16, v143
	v_xor_b32_e32 v10, 24, v143
	v_xor_b32_e32 v11, 8, v144
	v_xor_b32_e32 v12, 16, v144
	v_xor_b32_e32 v13, 24, v144
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v7, 28, v7
	v_add3_u32 v8, 0, v14, v8
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v14, 1, v129
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v137, v112, s28
	v_mul_lo_u32 v138, v114, s28
	v_mul_lo_u32 v139, v115, s28
	v_mul_lo_u32 v140, v116, s28
	v_mul_lo_u32 v145, v3, s25
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, s30, s29, v[65:66]
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v65
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v146, 0, v1
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v147, 0, v4
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v148, 0, v5
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v149, 0, v2
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v150, 0, v6
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v151, 0, v9
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v152, 0, v10
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v153, 0, v11
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v154, 0, v12
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v155, 0, v13
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v156, v8, v7
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v157, 0, v14
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s1, vcc_lo, s1
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s7, s28, s29
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v136
	v_mov_b32_e32 v3, v136
	v_dual_mov_b32 v4, v136 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v136
	v_dual_mov_b32 v6, v136 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v136
	v_dual_mov_b32 v8, v136 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v136 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v136
	v_dual_mov_b32 v12, v136 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v136
	v_dual_mov_b32 v14, v136 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v136
	v_dual_mov_b32 v16, v136 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v136
	v_mov_b32_e32 v19, v136
	v_mov_b32_e32 v20, v136
	v_mov_b32_e32 v21, v136
	v_mov_b32_e32 v22, v136
	v_mov_b32_e32 v23, v136
	v_mov_b32_e32 v24, v136
	v_mov_b32_e32 v26, v136
	v_mov_b32_e32 v27, v136
	v_mov_b32_e32 v28, v136
	v_mov_b32_e32 v29, v136
	v_mov_b32_e32 v30, v136
	v_mov_b32_e32 v31, v136
	v_mov_b32_e32 v32, v136
	v_mov_b32_e32 v34, v136
	v_mov_b32_e32 v35, v136
	v_mov_b32_e32 v36, v136
	v_mov_b32_e32 v37, v136
	v_mov_b32_e32 v38, v136
	v_mov_b32_e32 v39, v136
	v_mov_b32_e32 v40, v136
	v_mov_b32_e32 v42, v136
	v_mov_b32_e32 v43, v136
	v_mov_b32_e32 v44, v136
	v_mov_b32_e32 v45, v136
	v_mov_b32_e32 v46, v136
	v_mov_b32_e32 v47, v136
	v_mov_b32_e32 v48, v136
	v_mov_b32_e32 v50, v136
	v_mov_b32_e32 v51, v136
	v_mov_b32_e32 v52, v136
	v_mov_b32_e32 v53, v136
	v_mov_b32_e32 v54, v136
	v_mov_b32_e32 v55, v136
	v_mov_b32_e32 v56, v136
	v_mov_b32_e32 v58, v136
	v_mov_b32_e32 v59, v136
	v_mov_b32_e32 v60, v136
	v_mov_b32_e32 v61, v136
	v_mov_b32_e32 v62, v136
	v_mov_b32_e32 v63, v136
	v_mov_b32_e32 v64, v136
	.loc	1 771 28 is_stmt 1              ; ragged.py:771:28
	s_lshl_b32 s14, s6, 6
	s_mov_b32 s25, 0
	s_mov_b32 s15, -1
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s25, s25, s14
	.loc	1 784 34                        ; ragged.py:784:34
	v_add_nc_u32_e32 v223, 0, v143
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s29, s25, 1
	s_or_b32 s30, s25, 2
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[158:159], null, s25, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s31, s25, 3
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[159:160], null, s29, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s34, s25, 4
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[160:161], null, s30, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s35, s25, 5
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[161:162], null, s31, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s36, s25, 6
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[162:163], null, s34, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s37, s25, 7
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[163:164], null, s35, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s38, s25, 8
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[164:165], null, s36, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s39, s25, 9
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[165:166], null, s37, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s40, s25, 10
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[166:167], null, s38, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s41, s25, 11
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[167:168], null, s39, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s42, s25, 12
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[168:169], null, s40, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s43, s25, 13
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[169:170], null, s41, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s44, s25, 14
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[170:171], null, s42, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s45, s25, 15
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[171:172], null, s43, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s46, s25, 16
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[172:173], null, s44, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s47, s25, 17
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[173:174], null, s45, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s48, s25, 18
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[174:175], null, s46, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s49, s25, 19
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[175:176], null, s47, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s50, s25, 20
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[176:177], null, s48, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s51, s25, 21
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[177:178], null, s49, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s52, s25, 22
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[178:179], null, s50, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s53, s25, 23
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[179:180], null, s51, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s54, s25, 24
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[180:181], null, s52, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s55, s25, 25
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[181:182], null, s53, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s56, s25, 26
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[182:183], null, s54, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s57, s25, 27
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[183:184], null, s55, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s58, s25, 28
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[184:185], null, s56, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s59, s25, 29
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[185:186], null, s57, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s60, s25, 30
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[186:187], null, s58, s33, v[66:67]
	.loc	1 774 26                        ; ragged.py:774:26
	s_or_b32 s61, s25, 31
	v_or_b32_e32 v191, s25, v141
	.loc	1 784 42                        ; ragged.py:784:42
	v_mad_u64_u32 v[187:188], null, s59, s33, v[66:67]
	v_mad_u64_u32 v[188:189], null, s60, s33, v[66:67]
	v_mad_u64_u32 v[189:190], null, s61, s33, v[66:67]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 783 42                        ; ragged.py:783:42
	v_add_nc_u32_e32 v190, v145, v191
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v158, 0x80000000, v158, s0
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	v_cndmask_b32_e64 v160, 0x80000000, v160, s0
	v_cndmask_b32_e64 v161, 0x80000000, v161, s0
	v_cndmask_b32_e64 v162, 0x80000000, v162, s0
	.loc	1 783 34                        ; ragged.py:783:34
	v_cndmask_b32_e64 v190, 0x80000000, v190, s1
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v163, 0x80000000, v163, s0
	v_cndmask_b32_e64 v164, 0x80000000, v164, s0
	v_cndmask_b32_e64 v165, 0x80000000, v165, s0
	v_cndmask_b32_e64 v166, 0x80000000, v166, s0
	v_cndmask_b32_e64 v167, 0x80000000, v167, s0
	v_cndmask_b32_e64 v168, 0x80000000, v168, s0
	v_cndmask_b32_e64 v169, 0x80000000, v169, s0
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	v_cndmask_b32_e64 v172, 0x80000000, v172, s0
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	v_cndmask_b32_e64 v174, 0x80000000, v174, s0
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	v_cndmask_b32_e64 v177, 0x80000000, v177, s0
	v_cndmask_b32_e64 v178, 0x80000000, v178, s0
	v_cndmask_b32_e64 v179, 0x80000000, v179, s0
	v_cndmask_b32_e64 v180, 0x80000000, v180, s0
	v_cndmask_b32_e64 v181, 0x80000000, v181, s0
	v_cndmask_b32_e64 v182, 0x80000000, v182, s0
	v_cndmask_b32_e64 v183, 0x80000000, v183, s0
	v_cndmask_b32_e64 v184, 0x80000000, v184, s0
	v_cndmask_b32_e64 v185, 0x80000000, v185, s0
	v_cndmask_b32_e64 v186, 0x80000000, v186, s0
	v_cndmask_b32_e64 v187, 0x80000000, v187, s0
	v_cndmask_b32_e64 v188, 0x80000000, v188, s0
	v_cndmask_b32_e64 v189, 0x80000000, v189, s0
	s_clause 0x1f
	buffer_load_u8 v198, v158, s[8:11], 0 offen
	buffer_load_u8 v192, v159, s[8:11], 0 offen
	buffer_load_u8 v200, v160, s[8:11], 0 offen
	buffer_load_u8 v191, v161, s[8:11], 0 offen
	buffer_load_u8 v199, v162, s[8:11], 0 offen
	buffer_load_u8 v193, v163, s[8:11], 0 offen
	buffer_load_u8 v201, v164, s[8:11], 0 offen
	buffer_load_u8 v194, v165, s[8:11], 0 offen
	buffer_load_u8 v202, v166, s[8:11], 0 offen
	buffer_load_u8 v195, v167, s[8:11], 0 offen
	buffer_load_u8 v203, v168, s[8:11], 0 offen
	buffer_load_u8 v196, v169, s[8:11], 0 offen
	buffer_load_u8 v204, v170, s[8:11], 0 offen
	buffer_load_u8 v197, v171, s[8:11], 0 offen
	buffer_load_u8 v205, v172, s[8:11], 0 offen
	buffer_load_u8 v206, v173, s[8:11], 0 offen
	buffer_load_u8 v207, v174, s[8:11], 0 offen
	buffer_load_u8 v208, v175, s[8:11], 0 offen
	buffer_load_u8 v209, v176, s[8:11], 0 offen
	buffer_load_u8 v210, v177, s[8:11], 0 offen
	buffer_load_u8 v211, v178, s[8:11], 0 offen
	buffer_load_u8 v212, v179, s[8:11], 0 offen
	buffer_load_u8 v213, v180, s[8:11], 0 offen
	buffer_load_u8 v214, v181, s[8:11], 0 offen
	buffer_load_u8 v215, v182, s[8:11], 0 offen
	buffer_load_u8 v216, v183, s[8:11], 0 offen
	buffer_load_u8 v217, v184, s[8:11], 0 offen
	buffer_load_u8 v218, v185, s[8:11], 0 offen
	buffer_load_u8 v219, v186, s[8:11], 0 offen
	buffer_load_u8 v220, v187, s[8:11], 0 offen
	buffer_load_u8 v221, v188, s[8:11], 0 offen
	buffer_load_u8 v222, v189, s[8:11], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	buffer_load_b64 v[158:159], v190, s[20:23], 0 offen
	v_add_nc_u32_e32 v162, 0, v142
	.loc	1 784 34                        ; ragged.py:784:34
	v_add_nc_u32_e32 v224, 0, v144
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s25, 32
	.loc	1 773 23                        ; ragged.py:773:23
	s_and_b32 vcc_lo, exec_lo, s15
	s_mov_b32 s15, 0
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(29)
	v_lshlrev_b16 v191.h, 8, v192.l
	v_lshlrev_b16 v191.l, 8, v191.l
	s_waitcnt vmcnt(27)
	v_lshlrev_b16 v190.h, 8, v193.l
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v198.l, v198.l, v191.h
	s_waitcnt vmcnt(25)
	v_lshlrev_b16 v190.l, 8, v194.l
	v_or_b16 v198.h, v200.l, v191.l
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v193.h, 8, v195.l
	v_or_b16 v199.l, v199.l, v190.h
	s_waitcnt vmcnt(21)
	v_lshlrev_b16 v193.l, 8, v196.l
	v_or_b16 v199.h, v201.l, v190.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v192.h, 8, v197.l
	v_or_b16 v190.l, v202.l, v193.h
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v192.l, 8, v206.l
	v_or_b16 v190.h, v203.l, v193.l
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v195.h, 8, v208.l
	v_or_b16 v191.l, v204.l, v192.h
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v195.l, 8, v210.l
	v_or_b16 v191.h, v205.l, v192.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v194.h, 8, v212.l
	v_or_b16 v192.l, v207.l, v195.h
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v194.l, 8, v214.l
	v_or_b16 v192.h, v209.l, v195.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v197.h, 8, v216.l
	v_or_b16 v193.l, v211.l, v194.h
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v197.l, 8, v218.l
	v_or_b16 v193.h, v213.l, v194.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v196.h, 8, v220.l
	v_or_b16 v194.l, v215.l, v197.h
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v196.l, 8, v222.l
	v_or_b16 v194.h, v217.l, v197.l
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v146, v[158:159]
	.loc	1 784 34                        ; ragged.py:784:34
	v_or_b16 v195.l, v219.l, v196.h
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	.loc	1 784 34                        ; ragged.py:784:34
	v_or_b16 v195.h, v221.l, v196.l
	.loc	1 783 34                        ; ragged.py:783:34
	s_barrier
	ds_load_2addr_stride64_b64 v[158:161], v162 offset1:1
	ds_load_2addr_stride64_b64 v[162:165], v162 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[166:169], v147 offset1:1
	ds_load_2addr_stride64_b64 v[170:173], v147 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[174:177], v148 offset1:1
	ds_load_2addr_stride64_b64 v[178:181], v148 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[182:185], v149 offset1:1
	ds_load_2addr_stride64_b64 v[186:189], v149 offset0:2 offset1:3
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v223, v[198:199]
	ds_store_b64 v150, v[190:191]
	ds_store_b64 v151, v[192:193]
	ds_store_b64 v152, v[194:195]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[190:193], v224 offset1:8
	ds_load_2addr_stride64_b64 v[194:197], v153 offset1:8
	ds_load_2addr_stride64_b64 v[198:201], v154 offset1:8
	ds_load_2addr_stride64_b64 v[202:205], v155 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[190:191], v[158:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[192:193], v[158:159], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[190:191], v[160:161], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[192:193], v[160:161], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[190:191], v[162:163], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[192:193], v[162:163], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[190:191], v[164:165], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[192:193], v[164:165], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[194:195], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[166:167], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[168:169], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[168:169], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[170:171], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[170:171], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[172:173], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[172:173], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[198:199], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[174:175], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[176:177], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[200:201], v[176:177], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[178:179], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[200:201], v[178:179], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[198:199], v[180:181], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[200:201], v[180:181], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[202:203], v[182:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[204:205], v[182:183], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[202:203], v[184:185], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[204:205], v[184:185], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[202:203], v[186:187], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[204:205], v[186:187], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[202:203], v[188:189], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[204:205], v[188:189], v[57:64] neg_lo:[1,1,0]
	.loc	1 773 23                        ; ragged.py:773:23
	s_cbranch_vccnz .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v158, s6, v137, 1
	.loc	1 806 25                        ; ragged.py:806:25
	s_add_i32 s14, s6, s7
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v159, s6, v138, 1
	v_add_lshl_u32 v160, s6, v139, 1
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s14, s14, s33
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v161, s6, v140, 1
	.loc	1 805 40                        ; ragged.py:805:40
	v_add_lshl_u32 v162, v65, s14, 1
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v158, 0x80000000, v158, s5
	v_cndmask_b32_e64 v159, 0x80000000, v159, s4
	v_cndmask_b32_e64 v160, 0x80000000, v160, s3
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 805 40                        ; ragged.py:805:40
	v_cndmask_b32_e64 v162, 0x80000000, v162, s0
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	.loc	1 798 40                        ; ragged.py:798:40
	s_clause 0x3
	buffer_load_u16 v158, v158, s[16:19], 0 offen
	buffer_load_u16 v159, v159, s[16:19], 0 offen
	buffer_load_u16 v160, v160, s[16:19], 0 offen
	buffer_load_u16 v161, v161, s[16:19], 0 offen
	.loc	1 805 40                        ; ragged.py:805:40
	buffer_load_u16 v162, v162, s[12:15], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
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
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
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
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 812 17                        ; ragged.py:812:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lg_u32 s6, s28
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v17, v17, v159 :: v_dual_lshlrev_b32 v158, 16, v158
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v164, v2, v158
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v19, v19, v159 :: v_dual_lshlrev_b32 v162, 16, v162
	v_dual_mul_f32 v163, v1, v158 :: v_dual_lshlrev_b32 v160, 16, v160
	v_dual_mul_f32 v166, v4, v158 :: v_dual_lshlrev_b32 v161, 16, v161
	v_dual_mul_f32 v165, v3, v158 :: v_dual_mul_f32 v18, v18, v159
	v_dual_mul_f32 v167, v5, v158 :: v_dual_mul_f32 v20, v20, v159
	v_dual_mul_f32 v168, v6, v158 :: v_dual_mul_f32 v21, v21, v159
	v_dual_mul_f32 v169, v7, v158 :: v_dual_mul_f32 v22, v22, v159
	v_dual_mul_f32 v170, v8, v158 :: v_dual_mul_f32 v23, v23, v159
	v_dual_mul_f32 v171, v9, v158 :: v_dual_mul_f32 v24, v24, v159
	v_dual_mul_f32 v172, v10, v158 :: v_dual_mul_f32 v25, v25, v159
	v_dual_mul_f32 v173, v11, v158 :: v_dual_mul_f32 v26, v26, v159
	v_dual_mul_f32 v174, v12, v158 :: v_dual_mul_f32 v27, v27, v159
	v_dual_mul_f32 v175, v13, v158 :: v_dual_mul_f32 v28, v28, v159
	v_dual_mul_f32 v176, v14, v158 :: v_dual_mul_f32 v29, v29, v159
	v_dual_mul_f32 v177, v15, v158 :: v_dual_mul_f32 v30, v30, v159
	v_dual_mul_f32 v158, v16, v158 :: v_dual_mul_f32 v31, v31, v159
	.loc	1 810 21                        ; ragged.py:810:21
	ds_store_b32 v156, v162
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v157
	ds_load_b128 v[5:8], v157 offset:16
	ds_load_b128 v[9:12], v157 offset:512
	ds_load_b128 v[13:16], v157 offset:528
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v32, v32, v159 :: v_dual_mul_f32 v33, v33, v160
	v_dual_mul_f32 v34, v34, v160 :: v_dual_mul_f32 v49, v49, v161
	v_dual_mul_f32 v35, v35, v160 :: v_dual_mul_f32 v50, v50, v161
	v_dual_mul_f32 v36, v36, v160 :: v_dual_mul_f32 v51, v51, v161
	v_dual_mul_f32 v37, v37, v160 :: v_dual_mul_f32 v52, v52, v161
	v_dual_mul_f32 v38, v38, v160 :: v_dual_mul_f32 v53, v53, v161
	v_dual_mul_f32 v39, v39, v160 :: v_dual_mul_f32 v54, v54, v161
	v_dual_mul_f32 v40, v40, v160 :: v_dual_mul_f32 v55, v55, v161
	v_dual_mul_f32 v41, v41, v160 :: v_dual_mul_f32 v56, v56, v161
	v_dual_mul_f32 v42, v42, v160 :: v_dual_mul_f32 v57, v57, v161
	v_dual_mul_f32 v43, v43, v160 :: v_dual_mul_f32 v58, v58, v161
	v_dual_mul_f32 v44, v44, v160 :: v_dual_mul_f32 v59, v59, v161
	v_dual_mul_f32 v45, v45, v160 :: v_dual_mul_f32 v60, v60, v161
	v_dual_mul_f32 v46, v46, v160 :: v_dual_mul_f32 v61, v61, v161
	v_dual_mul_f32 v47, v47, v160 :: v_dual_mul_f32 v62, v62, v161
	v_dual_mul_f32 v48, v48, v160 :: v_dual_mul_f32 v63, v63, v161
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v64, v64, v161 :: v_dual_fmac_f32 v133, v165, v3
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v135, v163, v1 :: v_dual_fmac_f32 v134, v164, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v132, v166, v4 :: v_dual_fmac_f32 v131, v167, v5
	v_dual_fmac_f32 v130, v168, v6 :: v_dual_fmac_f32 v127, v170, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v128, v169, v7 :: v_dual_fmac_f32 v125, v172, v10
	v_dual_fmac_f32 v126, v171, v9 :: v_dual_fmac_f32 v123, v174, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v124, v173, v11 :: v_dual_fmac_f32 v121, v176, v14
	v_dual_fmac_f32 v122, v175, v13 :: v_dual_fmac_f32 v119, v158, v16
	v_dual_fmac_f32 v120, v177, v15 :: v_dual_fmac_f32 v117, v18, v2
	v_dual_fmac_f32 v118, v17, v1 :: v_dual_fmac_f32 v113, v19, v3
	v_dual_fmac_f32 v111, v20, v4 :: v_dual_fmac_f32 v110, v21, v5
	v_dual_fmac_f32 v109, v22, v6 :: v_dual_fmac_f32 v108, v23, v7
	v_dual_fmac_f32 v107, v24, v8 :: v_dual_fmac_f32 v106, v25, v9
	v_dual_fmac_f32 v105, v26, v10 :: v_dual_fmac_f32 v104, v27, v11
	v_dual_fmac_f32 v103, v28, v12 :: v_dual_fmac_f32 v102, v29, v13
	v_dual_fmac_f32 v101, v30, v14 :: v_dual_fmac_f32 v100, v31, v15
	v_dual_fmac_f32 v99, v32, v16 :: v_dual_fmac_f32 v98, v33, v1
	v_dual_fmac_f32 v97, v34, v2 :: v_dual_fmac_f32 v96, v35, v3
	v_dual_fmac_f32 v95, v36, v4 :: v_dual_fmac_f32 v94, v37, v5
	v_dual_fmac_f32 v93, v38, v6 :: v_dual_fmac_f32 v92, v39, v7
	v_dual_fmac_f32 v91, v40, v8 :: v_dual_fmac_f32 v90, v41, v9
	v_dual_fmac_f32 v89, v42, v10 :: v_dual_fmac_f32 v88, v43, v11
	v_dual_fmac_f32 v87, v44, v12 :: v_dual_fmac_f32 v86, v45, v13
	v_dual_fmac_f32 v85, v46, v14 :: v_dual_fmac_f32 v84, v47, v15
	v_dual_fmac_f32 v83, v48, v16 :: v_dual_fmac_f32 v82, v49, v1
	v_dual_fmac_f32 v81, v50, v2 :: v_dual_fmac_f32 v80, v51, v3
	v_dual_fmac_f32 v79, v52, v4 :: v_dual_fmac_f32 v78, v53, v5
	v_dual_fmac_f32 v77, v54, v6 :: v_dual_fmac_f32 v76, v55, v7
	v_dual_fmac_f32 v75, v56, v8 :: v_dual_fmac_f32 v74, v57, v9
	v_dual_fmac_f32 v73, v58, v10 :: v_dual_fmac_f32 v72, v59, v11
	v_dual_fmac_f32 v71, v60, v12 :: v_dual_fmac_f32 v70, v61, v13
	v_dual_fmac_f32 v69, v62, v14 :: v_dual_fmac_f32 v68, v63, v15
	v_fmac_f32_e32 v67, v64, v16
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_2
.LBB0_5:                                ; %._crit_edge
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v21, v135, 16, 1
	v_bfe_u32 v22, v134, 16, 1
	v_cmp_o_f32_e64 s19, v135, v135
	v_bfe_u32 v24, v133, 16, 1
	v_cmp_o_f32_e64 s20, v134, v134
	v_add3_u32 v23, v135, v21, 0x7fff
	v_add3_u32 v22, v134, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v133, v133
	v_add3_u32 v24, v133, v24, 0x7fff
	v_bfe_u32 v25, v131, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v132, 16, 1
	v_bfe_u32 v26, v130, 16, 1
	v_cmp_o_f32_e64 s19, v132, v132
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v132, v23, 0x7fff
	v_add3_u32 v25, v131, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v131, v131
	v_add3_u32 v26, v130, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v130, v130
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v128, 16, 1
	v_bfe_u32 v27, v127, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v126, 16, 1
	v_add3_u32 v23, v128, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v128, v128
	v_add3_u32 v27, v127, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v127, v127
	v_bfe_u32 v28, v125, 16, 1
	v_add3_u32 v26, v126, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v126, v126
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v124, 16, 1
	v_bfe_u32 v29, v123, 16, 1
	v_add3_u32 v28, v125, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v125, v125
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v124, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v124, v124
	v_add3_u32 v29, v123, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v123, v123
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v122, 16, 1
	v_bfe_u32 v30, v121, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v120, 16, 1
	v_add3_u32 v28, v122, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v122, v122
	v_add3_u32 v30, v121, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v121, v121
	v_bfe_u32 v31, v119, 16, 1
	v_add3_u32 v29, v120, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v120, v120
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v118, 16, 1
	v_bfe_u32 v32, v117, 16, 1
	v_add3_u32 v31, v119, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v119, v119
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v118, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v118, v118
	v_add3_u32 v32, v117, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v117, v117
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v113, 16, 1
	v_bfe_u32 v33, v111, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v110, 16, 1
	v_add3_u32 v31, v113, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v113, v113
	v_add3_u32 v33, v111, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v111, v111
	v_bfe_u32 v34, v109, 16, 1
	v_add3_u32 v32, v110, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v110, v110
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v108, 16, 1
	v_bfe_u32 v35, v107, 16, 1
	v_add3_u32 v34, v109, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v109, v109
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v108, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v108, v108
	v_add3_u32 v35, v107, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v107, v107
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v106, 16, 1
	v_bfe_u32 v36, v105, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v104, 16, 1
	v_add3_u32 v34, v106, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v106, v106
	v_add3_u32 v36, v105, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v105, v105
	v_bfe_u32 v37, v103, 16, 1
	v_add3_u32 v35, v104, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v104, v104
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v102, 16, 1
	v_bfe_u32 v38, v101, 16, 1
	v_add3_u32 v37, v103, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v103, v103
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v102, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v102, v102
	v_add3_u32 v38, v101, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v101, v101
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v100, 16, 1
	v_bfe_u32 v39, v99, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v98, 16, 1
	v_add3_u32 v37, v100, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v100, v100
	v_add3_u32 v39, v99, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v99, v99
	v_bfe_u32 v40, v97, 16, 1
	v_add3_u32 v38, v98, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v98, v98
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v96, 16, 1
	v_bfe_u32 v41, v95, 16, 1
	v_add3_u32 v40, v97, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v97, v97
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v96, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v96, v96
	v_add3_u32 v41, v95, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v95, v95
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v94, 16, 1
	v_bfe_u32 v42, v93, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v92, 16, 1
	v_add3_u32 v40, v94, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v94, v94
	v_add3_u32 v42, v93, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v93, v93
	v_bfe_u32 v43, v91, 16, 1
	v_add3_u32 v41, v92, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v92, v92
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v90, 16, 1
	v_bfe_u32 v44, v89, 16, 1
	v_add3_u32 v43, v91, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v91, v91
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v90, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v90, v90
	v_add3_u32 v44, v89, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v89, v89
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v88, 16, 1
	v_bfe_u32 v45, v87, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v86, 16, 1
	v_add3_u32 v43, v88, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v88, v88
	v_add3_u32 v45, v87, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v87, v87
	v_bfe_u32 v46, v85, 16, 1
	v_add3_u32 v44, v86, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v86, v86
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s19
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v84, 16, 1
	v_bfe_u32 v47, v83, 16, 1
	v_add3_u32 v46, v85, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v85, v85
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v84, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v84, v84
	v_add3_u32 v47, v83, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v83, v83
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v82, 16, 1
	v_bfe_u32 v48, v81, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v80, 16, 1
	v_add3_u32 v46, v82, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v82, v82
	v_add3_u32 v48, v81, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v81, v81
	v_bfe_u32 v49, v79, 16, 1
	v_add3_u32 v47, v80, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v80, v80
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v78, 16, 1
	v_bfe_u32 v50, v77, 16, 1
	v_add3_u32 v49, v79, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v79, v79
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v78, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v78, v78
	v_add3_u32 v50, v77, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v77, v77
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v76, 16, 1
	v_bfe_u32 v51, v75, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v74, 16, 1
	v_add3_u32 v49, v76, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v76, v76
	v_add3_u32 v51, v75, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v75, v75
	v_add3_u32 v50, v74, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v74, v74
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_bfe_u32 v52, v73, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v72, 16, 1
	v_bfe_u32 v53, v71, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v73, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v73, v73
	v_add3_u32 v51, v72, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v72, v72
	v_add3_u32 v53, v71, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v71, v71
	v_bfe_u32 v54, v70, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v69, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v70, v54, 0x7fff
	v_bfe_u32 v54, v68, 16, 1
	v_bfe_u32 v55, v67, 16, 1
	v_cmp_o_f32_e64 s19, v70, v70
	v_add3_u32 v52, v69, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v69, v69
	v_add3_u32 v54, v68, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v68, v68
	v_add3_u32 v55, v67, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v67, v67
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v55.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v53, v25, v22, s19
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_cndmask_b32_e64 v25, v23, v24, s19
	v_cndmask_b32_e64 v23, v24, v23, s19
	v_cndmask_b32_e64 v24, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v33, v31, s19
	v_cndmask_b32_e64 v31, v31, v33, s19
	v_cndmask_b32_e64 v33, v36, v34, s19
	v_cndmask_b32_e64 v34, v34, v36, s19
	v_cndmask_b32_e64 v36, v37, v35, s19
	v_cndmask_b32_e64 v35, v35, v37, s19
	v_cndmask_b32_e64 v37, v40, v38, s19
	v_cndmask_b32_e64 v38, v38, v40, s19
	v_cndmask_b32_e64 v40, v41, v39, s19
	v_cndmask_b32_e64 v39, v39, v41, s19
	v_cndmask_b32_e64 v41, v44, v42, s19
	v_cndmask_b32_e64 v42, v42, v44, s19
	v_cndmask_b32_e64 v44, v45, v43, s19
	v_cndmask_b32_e64 v43, v43, v45, s19
	v_cndmask_b32_e64 v45, v48, v46, s19
	v_cndmask_b32_e64 v46, v46, v48, s19
	v_cndmask_b32_e64 v48, v49, v47, s19
	v_cndmask_b32_e64 v47, v47, v49, s19
	v_cndmask_b32_e64 v49, v52, v50, s19
	v_cndmask_b32_e64 v50, v50, v52, s19
	v_cndmask_b32_e64 v52, v0, v51, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v51, v0, s19
	v_cndmask_b32_e64 v51, 0x1054, v54, s19
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v1, 1, v129
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v20, v112, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, s24, v1
	.loc	1 814 9                         ; ragged.py:814:9
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 8, v54
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_lshl_or_b32 v51, v51, 4, v51
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_lshl_or_b32 v54, v54, 4, v54
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v51, 0x5040504, v51
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v22, v22, v53, v54
	v_perm_b32 v53, v23, v25, v51
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v51
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v51
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v51
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v51
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v34, v33, v51
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v35, v36, v51
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v38, v37, v51
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v39, v40, v51
	v_perm_b32 v39, v39, v40, v54
	v_perm_b32 v40, v42, v41, v51
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v43, v44, v51
	v_perm_b32 v43, v43, v44, v54
	v_perm_b32 v44, v46, v45, v51
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v47, v48, v51
	v_perm_b32 v47, v47, v48, v54
	v_perm_b32 v48, v50, v49, v51
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v0, v52, v51
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v21.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 814 9                         ; ragged.py:814:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s14, s33, v13
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s15, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v52.h, v21.h
	v_mov_b16_e32 v56.h, v21.h
	v_mov_b16_e32 v57.h, v21.h
	v_mov_b16_e32 v58.h, v21.h
	v_mov_b16_e32 v59.h, v21.h
	v_mov_b16_e32 v60.h, v21.h
	v_mov_b16_e32 v61.h, v21.h
	v_mov_b16_e32 v62.h, v21.h
	v_mov_b16_e32 v63.h, v21.h
	v_mov_b16_e32 v64.h, v21.h
	v_mov_b16_e32 v65.h, v21.h
	v_mov_b16_e32 v66.h, v21.h
	v_mov_b16_e32 v67.h, v21.h
	v_mov_b16_e32 v68.h, v21.h
	v_mov_b16_e32 v69.h, v21.h
	v_mov_b16_e32 v70.h, v21.h
	v_mov_b16_e32 v71.h, v21.h
	v_mov_b16_e32 v72.h, v21.h
	v_mov_b16_e32 v73.h, v21.h
	v_mov_b16_e32 v74.h, v21.h
	v_mov_b16_e32 v75.h, v21.h
	v_mov_b16_e32 v76.h, v21.h
	v_mov_b16_e32 v77.h, v21.h
	v_mov_b16_e32 v78.h, v21.h
	v_mov_b16_e32 v79.h, v21.h
	v_mov_b16_e32 v80.h, v21.h
	v_mov_b16_e32 v81.h, v21.h
	v_mov_b16_e32 v82.h, v21.h
	v_mov_b16_e32 v83.h, v21.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v21, v51, s[20:23], 0 offen
	buffer_store_b16 v53, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s11, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v52.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s10, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v19, v114, s33
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s5
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s1, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s0, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s18, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s17, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s16, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s15, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s14, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s13, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s12, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s11, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s10, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s9, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s8, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v18, v115, s33
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s7, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s6, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s1, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s0, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v70.l, v39.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s8, s3
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v17, v116, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s1, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s0, s3
	s_and_b32 s3, vcc_lo, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v44, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v5, v5, v17, 1
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
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s1, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s0, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v45, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v46, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v47, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v48, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v49, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v50, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 679 5                         ; ragged.py:679:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 112
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 225
		.amdhsa_next_free_sgpr 62
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 225
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10808
; TotalNumSgprs: 64
; NumVgprs: 225
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 225
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     225
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
