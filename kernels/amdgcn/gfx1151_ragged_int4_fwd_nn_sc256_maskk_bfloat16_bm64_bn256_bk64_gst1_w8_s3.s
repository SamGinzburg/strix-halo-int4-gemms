	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 702 0                         ; ragged.py:702:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s30, s[0:1], 0x4c
	s_load_b64 s[28:29], s[0:1], 0x54
.Ltmp0:
	.loc	1 730 25 prologue_end           ; ragged.py:730:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 741 18                        ; ragged.py:741:18
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:728:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s30, 0xff
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:728:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
.Ltmp2:
	.loc	1 730 25 is_stmt 1              ; ragged.py:730:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v152, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 732 33                        ; ragged.py:732:33
	s_sub_i32 s5, s29, s4
	.loc	1 733 24                        ; ragged.py:733:24
	s_mul_i32 s3, s4, s3
	.loc	1 732 22                        ; ragged.py:732:22
	s_min_i32 s5, s5, 1
	.loc	1 733 24                        ; ragged.py:733:24
	s_sub_i32 s2, s2, s3
	.loc	1 735 17                        ; ragged.py:735:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	.loc	1 741 32                        ; ragged.py:741:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 735 17                        ; ragged.py:735:17
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
	.loc	1 734 34                        ; ragged.py:734:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 734 20 is_stmt 0              ; ragged.py:734:20
	s_add_i32 s2, s2, s4
	.loc	1 737 20 is_stmt 1              ; ragged.py:737:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 738 23                        ; ragged.py:738:23
	s_lshl_b64 s[12:13], s[2:3], 3
	s_add_u32 s2, s20, s12
	s_addc_u32 s3, s21, s13
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 739 24                        ; ragged.py:739:24
	s_add_u32 s2, s22, s12
	s_addc_u32 s3, s23, s13
	.loc	1 740 22                        ; ragged.py:740:22
	s_add_u32 s4, s24, s12
	s_addc_u32 s5, s25, s13
	.loc	1 739 24                        ; ragged.py:739:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 740 22                        ; ragged.py:740:22
	s_load_b64 s[18:19], s[4:5], 0x0
	v_mov_b32_e32 v167, 0
	.loc	1 742 18                        ; ragged.py:742:18
	s_lshl_b32 s22, s6, 8
	s_mov_b32 s23, 0
	.loc	1 741 18                        ; ragged.py:741:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s2
	.loc	1 824 25                        ; ragged.py:824:25
	v_add_nc_u32_e32 v136, s20, v1
	.loc	1 741 18                        ; ragged.py:741:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[2:3]
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	.loc	1 743 48                        ; ragged.py:743:48
	v_cmp_gt_i64_e64 s7, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s8, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s9, s[18:19], v[8:9]
	.loc	1 824 25 is_stmt 1              ; ragged.py:824:25
	v_add_nc_u32_e32 v137, 16, v136
	v_add_nc_u32_e32 v140, 32, v136
	v_add_nc_u32_e32 v141, 48, v136
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lt_i32 s28, 1
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 741 32                        ; ragged.py:741:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s24, s[0:1], 0x50
	s_load_b256 s[36:43], s[0:1], 0x0
	.loc	1 741 18 is_stmt 0              ; ragged.py:741:18
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v19, 0xe0, v0
	v_add_co_u32 v2, s0, s20, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s0
	.loc	1 742 18 is_stmt 1              ; ragged.py:742:18
	v_or_b32_e32 v97, s22, v0
	.loc	1 741 18                        ; ragged.py:741:18
	v_add_co_u32 v4, s0, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, s0
	v_add_co_u32 v6, s0, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, s0
	v_add_co_u32 v8, s0, v2, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, s0
	v_add_co_u32 v10, s0, v2, 32
	v_add_co_ci_u32_e64 v11, null, 0, v3, s0
	v_add_co_u32 v12, s0, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, s0
	v_add_co_u32 v14, s0, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, s0
	v_add_co_u32 v16, s0, v2, 56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v3, s0
	.loc	1 737 20                        ; ragged.py:737:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s16, s6, s12
	s_addc_u32 s17, s7, s13
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s0, s[10:11], v[2:3]
	v_cmp_le_i64_e64 s1, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	v_cmp_le_i64_e64 s7, s[10:11], v[10:11]
	v_cmp_le_i64_e64 s8, s[10:11], v[12:13]
	v_cmp_le_i64_e64 s9, s[10:11], v[14:15]
	v_cmp_le_i64_e64 s10, s[10:11], v[16:17]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s11, s[18:19], v[2:3]
	.loc	1 831 25 is_stmt 1              ; ragged.py:831:25
	s_load_b32 s44, s[16:17], 0x0
	v_dual_mov_b32 v164, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_bfe_i32 v2, v0, 7, 1
	.loc	1 743 48                        ; ragged.py:743:48
	v_cmp_gt_i64_e64 s12, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s13, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s14, s[18:19], v[8:9]
	v_cmp_gt_i64_e64 s15, s[18:19], v[10:11]
	v_cmp_gt_i64_e64 s16, s[18:19], v[12:13]
	v_cmp_gt_i64_e64 s17, s[18:19], v[14:15]
	v_cmp_gt_i64_e64 s18, s[18:19], v[16:17]
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v5, 24, v3
	v_lshrrev_b32_e32 v11, 1, v19
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v17, s20, v18
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v163, 0 :: v_dual_lshlrev_b32 v14, 5, v0
	v_lshl_or_b32 v175, v1, 5, v5
	v_add3_u32 v176, 0, v1, v11
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v1, 28, v3
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v3, 8, v17
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v11, 16, v17
	v_xor_b32_e32 v174, v2, v4
	v_dual_mov_b32 v161, 0 :: v_dual_lshlrev_b32 v18, 2, v152
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v14, 32, v14
	v_mul_lo_u32 v177, v17, s24
	v_mul_lo_u32 v178, v3, s24
	v_mul_lo_u32 v179, v11, s24
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v3, 24, v17
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v11, 32, v17
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v19, 40, v17
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v20, 48, v17
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v17, 56, v17
	.loc	1 743 20 is_stmt 0              ; ragged.py:743:20
	s_and_b32 s25, s1, s12
	.loc	1 807 39 is_stmt 1              ; ragged.py:807:39
	s_mul_i32 s1, s24, s30
	v_xor_b32_e32 v2, 0x110, v174
	v_xor_b32_e32 v4, 8, v175
	v_xor_b32_e32 v5, 16, v175
	v_xor_b32_e32 v6, 24, v175
	v_or_b32_e32 v7, 0x300, v0
	v_or_b32_e32 v8, 0x700, v0
	v_or_b32_e32 v9, 0xb00, v0
	v_or_b32_e32 v10, 0xf00, v0
	v_or_b32_e32 v12, 0x1300, v0
	v_or_b32_e32 v13, 0x1700, v0
	v_or_b32_e32 v15, 0x1b00, v0
	v_or_b32_e32 v16, 0x1f00, v0
	v_add3_u32 v14, 0, v18, v14
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v18, 1, v152
	.loc	1 824 25                        ; ragged.py:824:25
	v_mul_lo_u32 v170, v136, s28
	v_mul_lo_u32 v171, v137, s28
	v_mul_lo_u32 v172, v140, s28
	v_mul_lo_u32 v173, v141, s28
	v_mul_lo_u32 v180, v3, s24
	v_mul_lo_u32 v181, v11, s24
	v_mul_lo_u32 v182, v19, s24
	v_mul_lo_u32 v183, v20, s24
	v_mul_lo_u32 v184, v17, s24
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[98:99], null, s1, s44, v[97:98]
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s21, s0, s11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s30, v97
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v169, 31, v0
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v185, 0, v2
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v186, 0, v4
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v187, 0, v5
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v188, 0, v6
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v189, 0, v0
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v190, 0, v7
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v191, 0, v8
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v192, 0, v9
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v193, 0, v10
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v194, 0, v12
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v195, 0, v13
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v196, 0, v15
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v197, 0, v16
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v198, v14, v1
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v199, 0, v18
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v99, 0
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s29, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s31, s8, s16
	s_and_b32 s33, s9, s17
	s_and_b32 s34, s10, s18
	.loc	1 831 25                        ; ragged.py:831:25
	s_mul_i32 s35, s28, s44
	s_and_b32 s9, s37, 0xffff
	s_mov_b32 s8, s36
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s13, s39, 0xffff
	s_mov_b32 s12, s38
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s17, s43, 0xffff
	s_mov_b32 s16, s42
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v168
	v_mov_b32_e32 v3, v168
	v_dual_mov_b32 v4, v168 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v168
	v_dual_mov_b32 v6, v168 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v168
	v_dual_mov_b32 v8, v168 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v168 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v168
	v_dual_mov_b32 v12, v168 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v168
	v_dual_mov_b32 v14, v168 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v168
	v_dual_mov_b32 v16, v168 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v168
	v_mov_b32_e32 v19, v168
	v_mov_b32_e32 v20, v168
	v_mov_b32_e32 v21, v168
	v_mov_b32_e32 v22, v168
	v_mov_b32_e32 v23, v168
	v_mov_b32_e32 v24, v168
	v_mov_b32_e32 v26, v168
	v_mov_b32_e32 v27, v168
	v_mov_b32_e32 v28, v168
	v_mov_b32_e32 v29, v168
	v_mov_b32_e32 v30, v168
	v_mov_b32_e32 v31, v168
	v_mov_b32_e32 v32, v168
	v_mov_b32_e32 v34, v168
	v_mov_b32_e32 v35, v168
	v_mov_b32_e32 v36, v168
	v_mov_b32_e32 v37, v168
	v_mov_b32_e32 v38, v168
	v_mov_b32_e32 v39, v168
	v_mov_b32_e32 v40, v168
	v_mov_b32_e32 v42, v168
	v_mov_b32_e32 v43, v168
	v_mov_b32_e32 v44, v168
	v_mov_b32_e32 v45, v168
	v_mov_b32_e32 v46, v168
	v_mov_b32_e32 v47, v168
	v_mov_b32_e32 v48, v168
	v_mov_b32_e32 v50, v168
	v_mov_b32_e32 v51, v168
	v_mov_b32_e32 v52, v168
	v_mov_b32_e32 v53, v168
	v_mov_b32_e32 v54, v168
	v_mov_b32_e32 v55, v168
	v_mov_b32_e32 v56, v168
	v_mov_b32_e32 v58, v168
	v_mov_b32_e32 v59, v168
	v_mov_b32_e32 v60, v168
	v_mov_b32_e32 v61, v168
	v_mov_b32_e32 v62, v168
	v_mov_b32_e32 v63, v168
	v_mov_b32_e32 v64, v168
	.loc	1 795 28 is_stmt 1              ; ragged.py:795:28
	s_lshl_b32 s18, s23, 7
	s_mov_b32 s19, 0
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 798 26 is_stmt 1              ; ragged.py:798:26
	s_or_b32 s5, s19, s18
	s_or_b32 s95, s5, 1
	s_or_b32 s86, s5, 2
	s_or_b32 s84, s5, 3
	s_or_b32 s82, s5, 4
	s_or_b32 s80, s5, 5
	s_or_b32 s78, s5, 6
	s_or_b32 s75, s5, 7
	s_or_b32 s73, s5, 8
	s_or_b32 s71, s5, 9
	s_or_b32 s69, s5, 10
	s_or_b32 s67, s5, 11
	s_or_b32 s64, s5, 12
	s_or_b32 s62, s5, 13
	s_or_b32 s60, s5, 14
	s_or_b32 s58, s5, 15
	s_or_b32 s56, s5, 16
	s_or_b32 s53, s5, 17
	s_or_b32 s51, s5, 18
	s_or_b32 s49, s5, 19
	s_or_b32 s47, s5, 20
	s_or_b32 s45, s5, 21
	s_or_b32 s44, s5, 22
	s_or_b32 s43, s5, 23
	s_or_b32 s42, s5, 24
	s_or_b32 s39, s5, 25
	s_or_b32 s38, s5, 26
	s_or_b32 s37, s5, 27
	s_or_b32 s36, s5, 28
	s_or_b32 s20, s5, 29
	s_or_b32 s15, s5, 30
	s_or_b32 s14, s5, 31
	.loc	1 799 31                        ; ragged.py:799:31
	s_cmp_lt_i32 s5, s24
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s5, s30, v[98:99]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s95, s24
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s86, s24
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s84, s24
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s82, s24
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s80, s24
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s78, s24
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s75, s24
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s73, s24
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s71, s24
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s69, s24
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s67, s24
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s64, s24
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s62, s24
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s60, s24
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s58, s24
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s56, s24
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s53, s24
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s51, s24
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s49, s24
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s47, s24
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s45, s24
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s44, s24
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s43, s24
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s42, s24
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s39, s24
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s38, s24
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s37, s24
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s36, s24
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s20, s24
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s15, s24
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s14, s24
	s_cselect_b32 s46, -1, 0
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34 is_stmt 0              ; ragged.py:809:34
	v_cndmask_b32_e64 v67, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s95, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s96
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v68, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s86, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v69, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s84, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s93
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v70, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s82, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v71, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s80, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s91
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v72, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s78, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v73, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s75, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s89
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v74, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s73, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s88
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v75, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s71, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s87
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v76, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s69, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s85
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v77, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s67, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s83
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v78, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s64, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v79, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s62, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s79
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v80, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s60, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v81, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s58, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s76
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v82, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s56, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v83, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s53, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s72
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v84, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s51, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v85, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s49, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s68
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v86, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s47, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v87, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s45, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s65
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v88, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s44, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v89, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s43, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s61
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v90, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s42, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v91, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s39, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s57
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v92, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s38, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v93, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s37, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s54
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v94, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s36, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v95, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s20, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s50
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v96, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s15, s30, v[98:99]
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s48
	.loc	1 809 34                        ; ragged.py:809:34
	s_mov_b32 s15, s11
	v_cndmask_b32_e64 v200, 0x80000000, v65, s1
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[65:66], null, s14, s30, v[98:99]
	.loc	1 798 26 is_stmt 1              ; ragged.py:798:26
	v_or_b32_e32 v66, s5, v169
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 s1, s0, s46
	.loc	1 809 34 is_stmt 0              ; ragged.py:809:34
	s_mov_b32 s14, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 808 42 is_stmt 1              ; ragged.py:808:42
	v_add_nc_u32_e32 v201, v177, v66
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 799 31                        ; ragged.py:799:31
	v_cmp_gt_i32_e64 s1, s24, v66
	.loc	1 808 42                        ; ragged.py:808:42
	v_add_nc_u32_e32 v202, v178, v66
	v_add_nc_u32_e32 v203, v179, v66
	v_add_nc_u32_e32 v204, v180, v66
	v_add_nc_u32_e32 v205, v181, v66
	.loc	1 808 66 is_stmt 0              ; ragged.py:808:66
	s_and_b32 s5, s21, s1
	.loc	1 808 42                        ; ragged.py:808:42
	v_add_nc_u32_e32 v206, v182, v66
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e64 v201, 0x80000000, v201, s5
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 s5, s25, s1
	.loc	1 808 42                        ; ragged.py:808:42
	v_add_nc_u32_e32 v207, v183, v66
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e64 v202, 0x80000000, v202, s5
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 s5, s29, s1
	.loc	1 808 42                        ; ragged.py:808:42
	v_add_nc_u32_e32 v66, v184, v66
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e64 v203, 0x80000000, v203, s5
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 s5, s6, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e64 v204, 0x80000000, v204, s5
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 s5, s7, s1
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e64 v205, 0x80000000, v205, s5
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 s5, s31, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e64 v206, 0x80000000, v206, s5
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 s5, s33, s1
	s_and_b32 s1, s34, s1
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e64 v207, 0x80000000, v207, s5
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	s_clause 0x7
	buffer_load_u8 v201, v201, s[8:11], 0 offen
	buffer_load_u8 v203, v203, s[8:11], 0 offen
	buffer_load_u8 v205, v205, s[8:11], 0 offen
	buffer_load_u8 v207, v207, s[8:11], 0 offen
	buffer_load_u8 v202, v202, s[8:11], 0 offen
	buffer_load_u8 v204, v204, s[8:11], 0 offen
	buffer_load_u8 v206, v206, s[8:11], 0 offen
	buffer_load_u8 v66, v66, s[8:11], 0 offen
	.loc	1 809 34 is_stmt 1              ; ragged.py:809:34
	s_clause 0x1f
	buffer_load_u8 v208, v67, s[12:15], 0 offen
	buffer_load_u8 v209, v68, s[12:15], 0 offen
	buffer_load_u8 v210, v69, s[12:15], 0 offen
	buffer_load_u8 v211, v71, s[12:15], 0 offen
	buffer_load_u8 v212, v72, s[12:15], 0 offen
	buffer_load_u8 v213, v73, s[12:15], 0 offen
	buffer_load_u8 v214, v75, s[12:15], 0 offen
	buffer_load_u8 v215, v76, s[12:15], 0 offen
	buffer_load_u8 v216, v77, s[12:15], 0 offen
	buffer_load_u8 v217, v79, s[12:15], 0 offen
	buffer_load_u8 v218, v80, s[12:15], 0 offen
	buffer_load_u8 v219, v81, s[12:15], 0 offen
	buffer_load_u8 v220, v83, s[12:15], 0 offen
	buffer_load_u8 v221, v84, s[12:15], 0 offen
	buffer_load_u8 v222, v85, s[12:15], 0 offen
	buffer_load_u8 v223, v87, s[12:15], 0 offen
	buffer_load_u8 v224, v88, s[12:15], 0 offen
	buffer_load_u8 v225, v89, s[12:15], 0 offen
	buffer_load_u8 v226, v91, s[12:15], 0 offen
	buffer_load_u8 v227, v92, s[12:15], 0 offen
	buffer_load_u8 v228, v93, s[12:15], 0 offen
	buffer_load_u8 v229, v95, s[12:15], 0 offen
	buffer_load_u8 v230, v96, s[12:15], 0 offen
	buffer_load_u8 v200, v200, s[12:15], 0 offen
	buffer_load_u8 v231, v70, s[12:15], 0 offen
	buffer_load_u8 v232, v74, s[12:15], 0 offen
	buffer_load_u8 v233, v78, s[12:15], 0 offen
	buffer_load_u8 v234, v82, s[12:15], 0 offen
	buffer_load_u8 v235, v86, s[12:15], 0 offen
	buffer_load_u8 v236, v90, s[12:15], 0 offen
	buffer_load_u8 v237, v94, s[12:15], 0 offen
	buffer_load_u8 v238, v65, s[12:15], 0 offen
	.loc	1 808 34                        ; ragged.py:808:34
	v_add_nc_u32_e32 v65, 0, v174
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 820 21                        ; ragged.py:820:21
	s_add_i32 s1, s19, 32
	.loc	1 797 23                        ; ragged.py:797:23
	s_cmpk_lt_u32 s19, 0x60
	s_mov_b32 s19, s1
	.loc	1 808 34                        ; ragged.py:808:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v65, v201
	s_waitcnt vmcnt(38)
	ds_store_b8 v65, v203 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v65, v205 offset:1024
	s_waitcnt vmcnt(36)
	ds_store_b8 v65, v207 offset:1536
	s_waitcnt vmcnt(35)
	ds_store_b8 v185, v202
	s_waitcnt vmcnt(34)
	ds_store_b8 v185, v204 offset:512
	s_waitcnt vmcnt(33)
	ds_store_b8 v185, v206 offset:1024
	s_waitcnt vmcnt(32)
	ds_store_b8 v185, v66 offset:1536
	v_add_nc_u32_e32 v65, 0, v175
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[93:96], v65 offset1:1
	ds_load_2addr_stride64_b64 v[89:92], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v186 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v186 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v187 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v187 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v188 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v188 offset0:2 offset1:3
	.loc	1 809 34                        ; ragged.py:809:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v189, v208
	s_waitcnt vmcnt(30)
	ds_store_b8 v189, v209 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b8 v189, v210 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b8 v189, v211 offset:1024
	s_waitcnt vmcnt(27)
	ds_store_b8 v189, v212 offset:1280
	s_waitcnt vmcnt(26)
	ds_store_b8 v189, v213 offset:1536
	s_waitcnt vmcnt(25)
	ds_store_b8 v189, v214 offset:2048
	s_waitcnt vmcnt(24)
	ds_store_b8 v189, v215 offset:2304
	s_waitcnt vmcnt(23)
	ds_store_b8 v189, v216 offset:2560
	s_waitcnt vmcnt(22)
	ds_store_b8 v189, v217 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b8 v189, v218 offset:3328
	s_waitcnt vmcnt(20)
	ds_store_b8 v189, v219 offset:3584
	s_waitcnt vmcnt(19)
	ds_store_b8 v189, v220 offset:4096
	s_waitcnt vmcnt(18)
	ds_store_b8 v189, v221 offset:4352
	s_waitcnt vmcnt(17)
	ds_store_b8 v189, v222 offset:4608
	s_waitcnt vmcnt(16)
	ds_store_b8 v189, v223 offset:5120
	s_waitcnt vmcnt(15)
	ds_store_b8 v189, v224 offset:5376
	s_waitcnt vmcnt(14)
	ds_store_b8 v189, v225 offset:5632
	s_waitcnt vmcnt(13)
	ds_store_b8 v189, v226 offset:6144
	s_waitcnt vmcnt(12)
	ds_store_b8 v189, v227 offset:6400
	s_waitcnt vmcnt(11)
	ds_store_b8 v189, v228 offset:6656
	s_waitcnt vmcnt(10)
	ds_store_b8 v189, v229 offset:7168
	s_waitcnt vmcnt(9)
	ds_store_b8 v189, v230 offset:7424
	s_waitcnt vmcnt(8)
	ds_store_b8 v189, v200 offset:7680
	s_waitcnt vmcnt(7)
	ds_store_b8 v190, v231
	s_waitcnt vmcnt(6)
	ds_store_b8 v191, v232
	s_waitcnt vmcnt(5)
	ds_store_b8 v192, v233
	s_waitcnt vmcnt(4)
	ds_store_b8 v193, v234
	s_waitcnt vmcnt(3)
	ds_store_b8 v194, v235
	s_waitcnt vmcnt(2)
	ds_store_b8 v195, v236
	s_waitcnt vmcnt(1)
	ds_store_b8 v196, v237
	s_waitcnt vmcnt(0)
	ds_store_b8 v197, v238
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 810 31                        ; ragged.py:810:31
	ds_load_u8 v200, v176 offset:1280
	ds_load_u8 v201, v176 offset:1024
	ds_load_u8 v202, v176 offset:1920
	ds_load_u8 v203, v176 offset:1664
	ds_load_u8 v204, v176 offset:1408
	ds_load_u8 v205, v176 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	ds_load_u8 v201, v176 offset:1792
	ds_load_u8 v206, v176 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v204, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v203, v202, 16, v204
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v201, v206, v201, 0xc0c0004
	ds_load_u8 v206, v176 offset:256
	ds_load_u8 v207, v176
	ds_load_u8 v208, v176 offset:896
	ds_load_u8 v209, v176 offset:640
	ds_load_u8 v210, v176 offset:384
	ds_load_u8 v211, v176 offset:128
	v_lshl_or_b32 v201, v201, 16, v200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v206, v207, v206, 0xc0c0004
	ds_load_u8 v207, v176 offset:768
	ds_load_u8 v212, v176 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v205, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v207, v212, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v200, v207, 16, v206
	v_perm_b32 v206, v209, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[93:94], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v202, v206, 16, v205
	v_wmma_i32_16x16x16_iu4 v[33:40], v[200:201], v[89:90], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[200:201], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[200:201], v[95:96], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[202:203], v[93:94], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[202:203], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[202:203], v[91:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v176 offset:3328
	ds_load_u8 v90, v176 offset:3072
	ds_load_u8 v91, v176 offset:3968
	ds_load_u8 v92, v176 offset:3712
	ds_load_u8 v93, v176 offset:3456
	ds_load_u8 v94, v176 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[202:203], v[95:96], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v176 offset:3840
	ds_load_u8 v95, v176 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v91, 16, v93
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	ds_load_u8 v95, v176 offset:2304
	ds_load_u8 v96, v176 offset:2048
	ds_load_u8 v200, v176 offset:2944
	ds_load_u8 v201, v176 offset:2688
	ds_load_u8 v202, v176 offset:2432
	ds_load_u8 v203, v176 offset:2176
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v176 offset:2816
	ds_load_u8 v204, v176 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v204, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v89, v96, 16, v95
	v_perm_b32 v95, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[85:86], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v91, v95, 16, v94
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[89:90], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[91:92], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v176 offset:5376
	ds_load_u8 v82, v176 offset:5120
	ds_load_u8 v83, v176 offset:6016
	ds_load_u8 v84, v176 offset:5760
	ds_load_u8 v85, v176 offset:5504
	ds_load_u8 v86, v176 offset:5248
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v176 offset:5888
	ds_load_u8 v87, v176 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v176 offset:4352
	ds_load_u8 v88, v176 offset:4096
	ds_load_u8 v89, v176 offset:4992
	ds_load_u8 v90, v176 offset:4736
	ds_load_u8 v91, v176 offset:4480
	ds_load_u8 v92, v176 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v176 offset:4864
	ds_load_u8 v93, v176 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v93, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v81, v88, 16, v87
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[77:78], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v83, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v73, v176 offset:7424
	ds_load_u8 v74, v176 offset:7168
	ds_load_u8 v75, v176 offset:8064
	ds_load_u8 v76, v176 offset:7808
	ds_load_u8 v77, v176 offset:7552
	ds_load_u8 v78, v176 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v176 offset:7936
	ds_load_u8 v79, v176 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v176 offset:6400
	ds_load_u8 v80, v176 offset:6144
	ds_load_u8 v81, v176 offset:7040
	ds_load_u8 v82, v176 offset:6784
	ds_load_u8 v83, v176 offset:6528
	ds_load_u8 v84, v176 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v176 offset:6912
	ds_load_u8 v85, v176 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v85, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v80, 16, v79
	v_perm_b32 v79, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v75, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[75:76], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 797 23                        ; ragged.py:797:23
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 823 40                        ; ragged.py:823:40
	v_add_lshl_u32 v65, s23, v170, 1
	.loc	1 831 25                        ; ragged.py:831:25
	s_add_i32 s1, s23, s35
	.loc	1 823 40                        ; ragged.py:823:40
	v_add_lshl_u32 v66, s23, v171, 1
	v_add_lshl_u32 v67, s23, v172, 1
	.loc	1 831 25                        ; ragged.py:831:25
	s_mul_i32 s1, s1, s30
	.loc	1 823 40                        ; ragged.py:823:40
	v_add_lshl_u32 v68, s23, v173, 1
	.loc	1 830 40                        ; ragged.py:830:40
	v_add_lshl_u32 v69, v97, s1, 1
	.loc	1 823 40                        ; ragged.py:823:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	s_mov_b32 s42, s10
	s_mov_b32 s43, s11
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 830 40                        ; ragged.py:830:40
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	.loc	1 823 40                        ; ragged.py:823:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	buffer_load_u16 v67, v67, s[40:43], 0 offen
	buffer_load_u16 v68, v68, s[40:43], 0 offen
	.loc	1 830 40                        ; ragged.py:830:40
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v2, v2
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
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
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
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 835 21                        ; ragged.py:835:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v31, v31
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
	.loc	1 837 17                        ; ragged.py:837:17
	s_add_i32 s23, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lg_u32 s23, s28
	.loc	1 823 40                        ; ragged.py:823:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v65
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 828 21                        ; ragged.py:828:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v73, v4, v65 :: v_dual_lshlrev_b32 v68, 16, v68
	v_mul_f32_e32 v71, v2, v65
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v18, v18, v66 :: v_dual_lshlrev_b32 v69, 16, v69
	v_mul_f32_e32 v70, v1, v65
	v_dual_mul_f32 v72, v3, v65 :: v_dual_mul_f32 v17, v17, v66
	v_dual_mul_f32 v74, v5, v65 :: v_dual_mul_f32 v19, v19, v66
	v_dual_mul_f32 v75, v6, v65 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v76, v7, v65 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v77, v8, v65 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v78, v9, v65 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v79, v10, v65 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v80, v11, v65 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v81, v12, v65 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v82, v13, v65 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v83, v14, v65 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v84, v15, v65 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v65, v16, v65 :: v_dual_mul_f32 v30, v30, v66
	.loc	1 835 21                        ; ragged.py:835:21
	ds_store_b32 v198, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v199
	ds_load_b128 v[5:8], v199 offset:16
	ds_load_b128 v[9:12], v199 offset:512
	ds_load_b128 v[13:16], v199 offset:528
	.loc	1 828 21                        ; ragged.py:828:21
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v34, v34, v67
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v33, v33, v67
	v_dual_mul_f32 v35, v35, v67 :: v_dual_mul_f32 v50, v50, v68
	v_dual_mul_f32 v36, v36, v67 :: v_dual_mul_f32 v49, v49, v68
	v_dual_mul_f32 v37, v37, v67 :: v_dual_mul_f32 v52, v52, v68
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v51, v51, v68
	v_dual_mul_f32 v39, v39, v67 :: v_dual_mul_f32 v54, v54, v68
	v_dual_mul_f32 v40, v40, v67 :: v_dual_mul_f32 v53, v53, v68
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v56, v56, v68
	v_dual_mul_f32 v42, v42, v67 :: v_dual_mul_f32 v55, v55, v68
	v_dual_mul_f32 v43, v43, v67 :: v_dual_mul_f32 v58, v58, v68
	v_dual_mul_f32 v44, v44, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v45, v45, v67 :: v_dual_mul_f32 v60, v60, v68
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v59, v59, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v62, v62, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v61, v61, v68
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v63, v63, v68 :: v_dual_fmac_f32 v150, v17, v1
	v_dual_mul_f32 v64, v64, v68 :: v_dual_fmac_f32 v167, v70, v1
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v166, v71, v2 :: v_dual_fmac_f32 v165, v72, v3
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v164, v73, v4 :: v_dual_fmac_f32 v163, v74, v5
	v_dual_fmac_f32 v162, v75, v6 :: v_dual_fmac_f32 v161, v76, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v160, v77, v8 :: v_dual_fmac_f32 v159, v78, v9
	v_dual_fmac_f32 v158, v79, v10 :: v_dual_fmac_f32 v157, v80, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v156, v81, v12 :: v_dual_fmac_f32 v155, v82, v13
	v_dual_fmac_f32 v154, v83, v14 :: v_dual_fmac_f32 v153, v84, v15
	v_dual_fmac_f32 v151, v65, v16 :: v_dual_fmac_f32 v148, v19, v3
	v_dual_fmac_f32 v149, v18, v2 :: v_dual_fmac_f32 v146, v21, v5
	v_dual_fmac_f32 v147, v20, v4 :: v_dual_fmac_f32 v144, v23, v7
	v_dual_fmac_f32 v145, v22, v6 :: v_dual_fmac_f32 v142, v25, v9
	v_dual_fmac_f32 v143, v24, v8 :: v_dual_fmac_f32 v138, v27, v11
	v_dual_fmac_f32 v139, v26, v10 :: v_dual_fmac_f32 v134, v29, v13
	v_dual_fmac_f32 v135, v28, v12 :: v_dual_fmac_f32 v132, v31, v15
	v_dual_fmac_f32 v133, v30, v14 :: v_dual_fmac_f32 v130, v33, v1
	v_dual_fmac_f32 v131, v32, v16 :: v_dual_fmac_f32 v128, v35, v3
	v_dual_fmac_f32 v129, v34, v2 :: v_dual_fmac_f32 v126, v37, v5
	v_dual_fmac_f32 v127, v36, v4 :: v_dual_fmac_f32 v124, v39, v7
	v_dual_fmac_f32 v125, v38, v6 :: v_dual_fmac_f32 v122, v41, v9
	v_dual_fmac_f32 v123, v40, v8 :: v_dual_fmac_f32 v120, v43, v11
	v_dual_fmac_f32 v121, v42, v10 :: v_dual_fmac_f32 v118, v45, v13
	v_dual_fmac_f32 v119, v44, v12 :: v_dual_fmac_f32 v116, v47, v15
	v_dual_fmac_f32 v117, v46, v14 :: v_dual_fmac_f32 v114, v49, v1
	v_dual_fmac_f32 v115, v48, v16 :: v_dual_fmac_f32 v112, v51, v3
	v_dual_fmac_f32 v113, v50, v2 :: v_dual_fmac_f32 v110, v53, v5
	v_dual_fmac_f32 v111, v52, v4 :: v_dual_fmac_f32 v108, v55, v7
	v_dual_fmac_f32 v109, v54, v6 :: v_dual_fmac_f32 v106, v57, v9
	v_dual_fmac_f32 v107, v56, v8 :: v_dual_fmac_f32 v104, v59, v11
	v_dual_fmac_f32 v105, v58, v10 :: v_dual_fmac_f32 v102, v61, v13
	v_dual_fmac_f32 v103, v60, v12 :: v_dual_fmac_f32 v100, v63, v15
	v_fmac_f32_e32 v101, v62, v14
	v_fmac_f32_e32 v99, v64, v16
	.loc	1 793 19                        ; ragged.py:793:19
	s_cbranch_scc1 .LBB0_2
.LBB0_5:                                ; %._crit_edge
	.loc	1 839 9                         ; ragged.py:839:9
	v_bfe_u32 v21, v167, 16, 1
	v_bfe_u32 v22, v166, 16, 1
	v_cmp_o_f32_e64 s19, v167, v167
	v_bfe_u32 v24, v165, 16, 1
	v_cmp_o_f32_e64 s20, v166, v166
	v_add3_u32 v23, v167, v21, 0x7fff
	v_add3_u32 v22, v166, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v165, v165
	v_add3_u32 v24, v165, v24, 0x7fff
	v_bfe_u32 v25, v163, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v164, 16, 1
	v_bfe_u32 v26, v162, 16, 1
	v_cmp_o_f32_e64 s19, v164, v164
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v164, v23, 0x7fff
	v_add3_u32 v25, v163, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v163, v163
	v_add3_u32 v26, v162, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v162, v162
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v161, 16, 1
	v_bfe_u32 v27, v160, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v159, 16, 1
	v_add3_u32 v23, v161, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v161, v161
	v_add3_u32 v27, v160, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v160, v160
	v_bfe_u32 v28, v158, 16, 1
	v_add3_u32 v26, v159, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v159, v159
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v157, 16, 1
	v_bfe_u32 v29, v156, 16, 1
	v_add3_u32 v28, v158, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v158, v158
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v157, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v157, v157
	v_add3_u32 v29, v156, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v156, v156
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v155, 16, 1
	v_bfe_u32 v30, v154, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v153, 16, 1
	v_add3_u32 v28, v155, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v155, v155
	v_add3_u32 v30, v154, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v154, v154
	v_bfe_u32 v31, v151, 16, 1
	v_add3_u32 v29, v153, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v153, v153
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v150, 16, 1
	v_bfe_u32 v32, v149, 16, 1
	v_add3_u32 v31, v151, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v151, v151
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v150, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v150, v150
	v_add3_u32 v32, v149, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v149, v149
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v148, 16, 1
	v_bfe_u32 v33, v147, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v146, 16, 1
	v_add3_u32 v31, v148, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v148, v148
	v_add3_u32 v33, v147, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v147, v147
	v_bfe_u32 v34, v145, 16, 1
	v_add3_u32 v32, v146, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v146, v146
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v144, 16, 1
	v_bfe_u32 v35, v143, 16, 1
	v_add3_u32 v34, v145, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v145, v145
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v144, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v144, v144
	v_add3_u32 v35, v143, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v143, v143
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v142, 16, 1
	v_bfe_u32 v36, v139, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v138, 16, 1
	v_add3_u32 v34, v142, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v142, v142
	v_add3_u32 v36, v139, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v139, v139
	v_bfe_u32 v37, v135, 16, 1
	v_add3_u32 v35, v138, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v138, v138
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v134, 16, 1
	v_bfe_u32 v38, v133, 16, 1
	v_add3_u32 v37, v135, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v135, v135
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v134, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v134, v134
	v_add3_u32 v38, v133, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v133, v133
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v132, 16, 1
	v_bfe_u32 v39, v131, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v130, 16, 1
	v_add3_u32 v37, v132, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v132, v132
	v_add3_u32 v39, v131, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v131, v131
	v_bfe_u32 v40, v129, 16, 1
	v_add3_u32 v38, v130, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v130, v130
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v128, 16, 1
	v_bfe_u32 v41, v127, 16, 1
	v_add3_u32 v40, v129, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v129, v129
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v128, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v128, v128
	v_add3_u32 v41, v127, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v127, v127
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v126, 16, 1
	v_bfe_u32 v42, v125, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v124, 16, 1
	v_add3_u32 v40, v126, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v126, v126
	v_add3_u32 v42, v125, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v125, v125
	v_bfe_u32 v43, v123, 16, 1
	v_add3_u32 v41, v124, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v124, v124
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v122, 16, 1
	v_bfe_u32 v44, v121, 16, 1
	v_add3_u32 v43, v123, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v123, v123
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v122, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v122, v122
	v_add3_u32 v44, v121, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v121, v121
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v120, 16, 1
	v_bfe_u32 v45, v119, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v118, 16, 1
	v_add3_u32 v43, v120, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v120, v120
	v_add3_u32 v45, v119, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v119, v119
	v_bfe_u32 v46, v117, 16, 1
	v_add3_u32 v44, v118, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v118, v118
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s19
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v116, 16, 1
	v_bfe_u32 v47, v115, 16, 1
	v_add3_u32 v46, v117, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v117, v117
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v116, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v116, v116
	v_add3_u32 v47, v115, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v115, v115
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v114, 16, 1
	v_bfe_u32 v48, v113, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v112, 16, 1
	v_add3_u32 v46, v114, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v114, v114
	v_add3_u32 v48, v113, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v113, v113
	v_bfe_u32 v49, v111, 16, 1
	v_add3_u32 v47, v112, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v112, v112
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v110, 16, 1
	v_bfe_u32 v50, v109, 16, 1
	v_add3_u32 v49, v111, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v111, v111
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v110, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v110, v110
	v_add3_u32 v50, v109, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v109, v109
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v108, 16, 1
	v_bfe_u32 v51, v107, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v106, 16, 1
	v_add3_u32 v49, v108, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v108, v108
	v_add3_u32 v51, v107, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v107, v107
	v_add3_u32 v50, v106, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v106, v106
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_bfe_u32 v52, v105, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v104, 16, 1
	v_bfe_u32 v53, v103, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v105, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v105, v105
	v_add3_u32 v51, v104, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v104, v104
	v_add3_u32 v53, v103, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v103, v103
	v_bfe_u32 v54, v102, 16, 1
	.loc	1 742 36                        ; ragged.py:742:36
	v_lshrrev_b32_e32 v1, 1, v152
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v101, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v102, v54, 0x7fff
	v_bfe_u32 v54, v100, 16, 1
	v_bfe_u32 v55, v99, 16, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v11, s22, v1
	.loc	1 839 9                         ; ragged.py:839:9
	v_cmp_o_f32_e64 s19, v102, v102
	v_add3_u32 v52, v101, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v101, v101
	v_add3_u32 v54, v100, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v100, v100
	v_add3_u32 v55, v99, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v99, v99
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
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v20, v136, s30
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v16, 1, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v15, 2, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s18, s30, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_lshl_or_b32 v54, v54, 8, v54
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s17, s30, v16
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 839 9                         ; ragged.py:839:9
	v_lshl_or_b32 v51, v51, 4, v51
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_lshl_or_b32 v54, v54, 4, v54
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v51, 0x5040504, v51
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
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s18, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s17, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s16, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s15, s30, v14
	.loc	1 839 9                         ; ragged.py:839:9
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
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 839 9                         ; ragged.py:839:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s14, s30, v13
	v_cmp_gt_i32_e64 s13, s30, v12
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s15, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s12, s30, v10
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s14, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s13, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s11, s30, v9
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s12, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s10, s30, v8
	.loc	1 839 9                         ; ragged.py:839:9
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
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s9, s30, v7
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s11, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s8, s30, v6
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v52.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s10, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s9, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s7, s30, v5
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s8, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s6, s30, v4
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s5, s30, v3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v19, v137, s30
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s7, s4
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s1, s30, v2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s6, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s30, v1
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s5, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s1, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s0, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s18, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s17, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s16, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s15, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s14, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s13, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s12, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s11, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s10, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s9, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s8, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v18, v140, s30
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s7, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s6, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s5, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s1, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s0, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s18, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s17, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s16, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s15, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s14, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s13, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v71.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s12, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s11, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s10, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v70.l, v39.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s9, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v73.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s8, s2
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v17, v141, s30
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s7, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s6, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s5, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v44, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
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
	.loc	1 702 5                         ; ragged.py:702:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 239
		.amdhsa_next_free_sgpr 97
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 239
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13120
; TotalNumSgprs: 99
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 99
; NumVGPRsForWavesPerEU: 239
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
	.short	728                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
