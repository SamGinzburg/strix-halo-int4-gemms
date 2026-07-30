	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 652 0                         ; ragged.py:652:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s30, s[0:1], 0x4c
	s_load_b64 s[28:29], s[0:1], 0x54
.Ltmp0:
	.loc	1 680 25 prologue_end           ; ragged.py:680:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 691 18                        ; ragged.py:691:18
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:678:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s30, 0xff
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:678:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
.Ltmp2:
	.loc	1 680 25 is_stmt 1              ; ragged.py:680:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v162, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v168, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v172, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v176, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v178, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v180, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v182, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v184, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v179, 0 :: v_dual_and_b32 v166, 0xf0, v0
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 682 33                        ; ragged.py:682:33
	s_sub_i32 s5, s29, s4
	.loc	1 683 24                        ; ragged.py:683:24
	s_mul_i32 s3, s4, s3
	.loc	1 682 22                        ; ragged.py:682:22
	s_min_i32 s5, s5, 1
	.loc	1 683 24                        ; ragged.py:683:24
	s_sub_i32 s2, s2, s3
	.loc	1 685 17                        ; ragged.py:685:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 691 32                        ; ragged.py:691:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 685 17                        ; ragged.py:685:17
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
	.loc	1 684 34                        ; ragged.py:684:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 684 20 is_stmt 0              ; ragged.py:684:20
	s_add_i32 s2, s2, s4
	.loc	1 687 20 is_stmt 1              ; ragged.py:687:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 688 23                        ; ragged.py:688:23
	s_lshl_b64 s[12:13], s[2:3], 3
	s_add_u32 s2, s20, s12
	s_addc_u32 s3, s21, s13
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 689 24                        ; ragged.py:689:24
	s_add_u32 s2, s22, s12
	s_addc_u32 s3, s23, s13
	.loc	1 690 22                        ; ragged.py:690:22
	s_add_u32 s4, s24, s12
	s_addc_u32 s5, s25, s13
	.loc	1 689 24                        ; ragged.py:689:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 690 22                        ; ragged.py:690:22
	s_load_b64 s[18:19], s[4:5], 0x0
	v_mov_b32_e32 v181, 0
	.loc	1 692 18                        ; ragged.py:692:18
	s_lshl_b32 s24, s6, 8
	s_mov_b32 s25, 0
	.loc	1 691 18                        ; ragged.py:691:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s2
	.loc	1 772 25                        ; ragged.py:772:25
	v_add_nc_u32_e32 v150, s20, v1
	.loc	1 691 18                        ; ragged.py:691:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 693 48 is_stmt 0              ; ragged.py:693:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[2:3]
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s7, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s8, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s9, s[18:19], v[8:9]
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v152, 16, v150
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v154, 48, v150
	.loc	1 772 25 is_stmt 1              ; ragged.py:772:25
	v_add_nc_u32_e32 v153, 32, v150
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 742 19                        ; ragged.py:742:19
	s_cmp_lt_i32 s28, 1
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 691 32 is_stmt 1              ; ragged.py:691:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_clause 0x1
	s_load_b32 s22, s[0:1], 0x50
	s_load_b256 s[36:43], s[0:1], 0x0
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v89, s24, v0
	.loc	1 691 18                        ; ragged.py:691:18
	v_dual_mov_b32 v186, 0 :: v_dual_and_b32 v19, 0xe0, v0
	v_add_co_u32 v2, s0, s20, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s0
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v205, 0, v0
	v_add_co_u32 v4, s0, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, s0
	v_add_co_u32 v6, s0, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, s0
	.loc	1 687 20                        ; ragged.py:687:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s12, s6, s12
	.loc	1 691 18                        ; ragged.py:691:18
	v_add_co_u32 v8, s0, v2, 24
	.loc	1 687 20                        ; ragged.py:687:20
	s_addc_u32 s13, s7, s13
	.loc	1 691 18                        ; ragged.py:691:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, s0
	v_add_co_u32 v10, s0, v2, 32
	.loc	1 779 25                        ; ragged.py:779:25
	s_load_b32 s21, s[12:13], 0x0
	.loc	1 691 18                        ; ragged.py:691:18
	v_add_co_ci_u32_e64 v11, null, 0, v3, s0
	v_add_co_u32 v12, s0, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, s0
	v_add_co_u32 v14, s0, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, s0
	v_add_co_u32 v16, s0, v2, 56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v3, s0
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e64 s0, s[10:11], v[2:3]
	v_cmp_le_i64_e64 s1, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	v_cmp_le_i64_e64 s7, s[10:11], v[10:11]
	v_cmp_le_i64_e64 s8, s[10:11], v[12:13]
	v_cmp_le_i64_e64 s9, s[10:11], v[14:15]
	v_cmp_le_i64_e64 s10, s[10:11], v[16:17]
	.loc	1 693 48 is_stmt 0              ; ragged.py:693:48
	v_cmp_gt_i64_e64 s11, s[18:19], v[2:3]
	v_cmp_gt_i64_e64 s12, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s13, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s14, s[18:19], v[8:9]
	v_cmp_gt_i64_e64 s15, s[18:19], v[10:11]
	v_cmp_gt_i64_e64 s16, s[18:19], v[12:13]
	v_cmp_gt_i64_e64 s17, s[18:19], v[14:15]
	v_cmp_gt_i64_e64 s18, s[18:19], v[16:17]
	v_dual_mov_b32 v184, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_bfe_i32 v2, v0, 7, 1
	v_lshrrev_b32_e32 v11, 1, v19
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v17, s20, v18
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s10, s10, s18
	.loc	1 755 39 is_stmt 1              ; ragged.py:755:39
	s_mul_i32 s18, s22, s30
	v_dual_mov_b32 v182, 0 :: v_dual_and_b32 v5, 24, v3
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[90:91], null, s18, s21, v[89:90]
	v_dual_mov_b32 v185, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v183, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v181, 0 :: v_dual_lshlrev_b32 v14, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[91:92], null, s30, 3, v[90:91]
	v_lshl_or_b32 v188, v1, 5, v5
	v_add3_u32 v189, 0, v1, v11
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v1, 28, v3
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v3, 8, v17
	v_mad_u64_u32 v[92:93], null, s30, 5, v[90:91]
	v_mad_u64_u32 v[93:94], null, s30, 6, v[90:91]
	v_mad_u64_u32 v[94:95], null, s30, 7, v[90:91]
	v_mad_u64_u32 v[95:96], null, s30, 9, v[90:91]
	v_mad_u64_u32 v[96:97], null, s30, 10, v[90:91]
	v_mad_u64_u32 v[97:98], null, s30, 11, v[90:91]
	v_mad_u64_u32 v[98:99], null, s30, 12, v[90:91]
	v_mad_u64_u32 v[99:100], null, s30, 13, v[90:91]
	v_mad_u64_u32 v[100:101], null, s30, 14, v[90:91]
	v_mad_u64_u32 v[101:102], null, s30, 15, v[90:91]
	v_mad_u64_u32 v[102:103], null, s30, 17, v[90:91]
	v_mad_u64_u32 v[103:104], null, s30, 18, v[90:91]
	v_mad_u64_u32 v[104:105], null, s30, 19, v[90:91]
	v_mad_u64_u32 v[105:106], null, s30, 20, v[90:91]
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v11, 16, v17
	v_mad_u64_u32 v[106:107], null, s30, 21, v[90:91]
	v_mad_u64_u32 v[107:108], null, s30, 22, v[90:91]
	v_mad_u64_u32 v[108:109], null, s30, 23, v[90:91]
	v_xor_b32_e32 v187, v2, v4
	v_dual_mov_b32 v179, 0 :: v_dual_lshlrev_b32 v18, 2, v166
	v_dual_mov_b32 v177, 0 :: v_dual_and_b32 v14, 32, v14
	v_mad_u64_u32 v[109:110], null, s30, 24, v[90:91]
	v_mad_u64_u32 v[110:111], null, s30, 25, v[90:91]
	v_mul_lo_u32 v190, v17, s22
	v_mul_lo_u32 v191, v3, s22
	v_mul_lo_u32 v192, v11, s22
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v3, 24, v17
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v11, 32, v17
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v19, 40, v17
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v20, 48, v17
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v17, 56, v17
	v_mad_u64_u32 v[111:112], null, s30, 26, v[90:91]
	v_mad_u64_u32 v[112:113], null, s30, 27, v[90:91]
	v_mad_u64_u32 v[113:114], null, s30, 28, v[90:91]
	v_xor_b32_e32 v2, 0x110, v187
	v_xor_b32_e32 v4, 8, v188
	v_xor_b32_e32 v5, 16, v188
	v_xor_b32_e32 v6, 24, v188
	v_or_b32_e32 v7, 0x300, v0
	v_or_b32_e32 v8, 0x700, v0
	v_or_b32_e32 v9, 0xb00, v0
	v_or_b32_e32 v10, 0xf00, v0
	v_or_b32_e32 v12, 0x1300, v0
	v_or_b32_e32 v13, 0x1700, v0
	v_or_b32_e32 v15, 0x1b00, v0
	v_or_b32_e32 v16, 0x1f00, v0
	v_add3_u32 v14, 0, v18, v14
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v18, 1, v166
	v_mad_u64_u32 v[114:115], null, s30, 29, v[90:91]
	v_mad_u64_u32 v[115:116], null, s30, 30, v[90:91]
	v_mul_lo_u32 v193, v3, s22
	v_mul_lo_u32 v194, v11, s22
	v_mul_lo_u32 v195, v19, s22
	v_mul_lo_u32 v196, v20, s22
	v_mul_lo_u32 v197, v17, s22
	v_mad_u64_u32 v[116:117], null, s30, 31, v[90:91]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s0, s0, s11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s11, s30, v89
	v_lshl_add_u32 v198, s30, 2, v90
	v_lshl_add_u32 v199, s30, 3, v90
	v_lshl_add_u32 v200, s30, 4, v90
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v201, 0, v2
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v202, 0, v4
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v203, 0, v5
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v204, 0, v6
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v206, 0, v7
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v207, 0, v8
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v208, 0, v9
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v209, 0, v10
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v210, 0, v12
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v211, 0, v13
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v212, 0, v15
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v213, 0, v16
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v214, v14, v1
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v215, 0, v18
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v118, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v117, 0
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s1, s1, s12
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	.loc	1 779 25                        ; ragged.py:779:25
	s_mul_i32 s29, s28, s21
	s_and_b32 s13, s37, 0xffff
	s_mov_b32 s12, s36
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s17, s39, 0xffff
	s_mov_b32 s16, s38
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s20, s42
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v186
	v_mov_b32_e32 v3, v186
	v_dual_mov_b32 v4, v186 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v186
	v_dual_mov_b32 v6, v186 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v186
	v_dual_mov_b32 v8, v186 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v186 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v186
	v_dual_mov_b32 v12, v186 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v186
	v_dual_mov_b32 v14, v186 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v186
	v_dual_mov_b32 v16, v186 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v186
	v_mov_b32_e32 v19, v186
	v_mov_b32_e32 v20, v186
	v_mov_b32_e32 v21, v186
	v_mov_b32_e32 v22, v186
	v_mov_b32_e32 v23, v186
	v_mov_b32_e32 v24, v186
	v_mov_b32_e32 v26, v186
	v_mov_b32_e32 v27, v186
	v_mov_b32_e32 v28, v186
	v_mov_b32_e32 v29, v186
	v_mov_b32_e32 v30, v186
	v_mov_b32_e32 v31, v186
	v_mov_b32_e32 v32, v186
	v_mov_b32_e32 v34, v186
	v_mov_b32_e32 v35, v186
	v_mov_b32_e32 v36, v186
	v_mov_b32_e32 v37, v186
	v_mov_b32_e32 v38, v186
	v_mov_b32_e32 v39, v186
	v_mov_b32_e32 v40, v186
	v_mov_b32_e32 v42, v186
	v_mov_b32_e32 v43, v186
	v_mov_b32_e32 v44, v186
	v_mov_b32_e32 v45, v186
	v_mov_b32_e32 v46, v186
	v_mov_b32_e32 v47, v186
	v_mov_b32_e32 v48, v186
	v_mov_b32_e32 v50, v186
	v_mov_b32_e32 v51, v186
	v_mov_b32_e32 v52, v186
	v_mov_b32_e32 v53, v186
	v_mov_b32_e32 v54, v186
	v_mov_b32_e32 v55, v186
	v_mov_b32_e32 v56, v186
	v_mov_b32_e32 v58, v186
	v_mov_b32_e32 v59, v186
	v_mov_b32_e32 v60, v186
	v_mov_b32_e32 v61, v186
	v_mov_b32_e32 v62, v186
	v_mov_b32_e32 v63, v186
	v_mov_b32_e32 v64, v186
	.loc	1 744 28 is_stmt 1              ; ragged.py:744:28
	s_lshl_b32 s22, s25, 7
	s_mov_b32 s23, 0
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 739 28                        ; ragged.py:739:28
	v_and_b32_e32 v65, 31, v0
	.loc	1 747 26                        ; ragged.py:747:26
	s_add_i32 s31, s23, s22
	v_add_nc_u32_e32 v74, s30, v90
	v_lshl_add_u32 v75, s30, 1, v90
	.loc	1 755 65                        ; ragged.py:755:65
	s_mul_i32 s33, s31, s30
	.loc	1 747 26                        ; ragged.py:747:26
	v_or_b32_e32 v65, s31, v65
	.loc	1 757 42                        ; ragged.py:757:42
	v_add_nc_u32_e32 v73, s33, v90
	v_add_nc_u32_e32 v74, s33, v74
	v_add_nc_u32_e32 v75, s33, v75
	v_add_nc_u32_e32 v76, s33, v91
	.loc	1 756 42                        ; ragged.py:756:42
	v_add_nc_u32_e32 v66, v190, v65
	v_add_nc_u32_e32 v67, v191, v65
	v_add_nc_u32_e32 v68, v192, v65
	v_add_nc_u32_e32 v69, v193, v65
	v_add_nc_u32_e32 v70, v194, v65
	v_add_nc_u32_e32 v71, v195, v65
	v_add_nc_u32_e32 v72, v196, v65
	v_add_nc_u32_e32 v65, v197, v65
	v_add_nc_u32_e32 v77, s33, v198
	v_add_nc_u32_e32 v224, s33, v109
	v_add_nc_u32_e32 v225, s33, v110
	v_add_nc_u32_e32 v226, s33, v111
	v_add_nc_u32_e32 v227, s33, v112
	v_add_nc_u32_e32 v228, s33, v113
	v_add_nc_u32_e32 v229, s33, v114
	v_add_nc_u32_e32 v230, s33, v115
	v_add_nc_u32_e32 v231, s33, v116
	.loc	1 757 34                        ; ragged.py:757:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s11
	v_add_nc_u32_e32 v78, s33, v92
	v_add_nc_u32_e32 v79, s33, v93
	v_add_nc_u32_e32 v80, s33, v94
	v_add_nc_u32_e32 v81, s33, v199
	v_add_nc_u32_e32 v82, s33, v95
	v_add_nc_u32_e32 v83, s33, v96
	v_add_nc_u32_e32 v84, s33, v97
	v_add_nc_u32_e32 v85, s33, v98
	v_add_nc_u32_e32 v86, s33, v99
	v_add_nc_u32_e32 v87, s33, v100
	v_add_nc_u32_e32 v88, s33, v101
	v_add_nc_u32_e32 v216, s33, v200
	v_add_nc_u32_e32 v217, s33, v102
	v_add_nc_u32_e32 v218, s33, v103
	v_add_nc_u32_e32 v219, s33, v104
	v_add_nc_u32_e32 v220, s33, v105
	v_add_nc_u32_e32 v221, s33, v106
	v_add_nc_u32_e32 v222, s33, v107
	v_add_nc_u32_e32 v223, s33, v108
	v_cndmask_b32_e64 v74, 0x80000000, v74, s11
	v_cndmask_b32_e64 v75, 0x80000000, v75, s11
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	v_cndmask_b32_e64 v76, 0x80000000, v76, s11
	v_cndmask_b32_e64 v77, 0x80000000, v77, s11
	v_cndmask_b32_e64 v224, 0x80000000, v224, s11
	v_cndmask_b32_e64 v225, 0x80000000, v225, s11
	v_cndmask_b32_e64 v226, 0x80000000, v226, s11
	v_cndmask_b32_e64 v227, 0x80000000, v227, s11
	v_cndmask_b32_e64 v228, 0x80000000, v228, s11
	v_cndmask_b32_e64 v229, 0x80000000, v229, s11
	v_cndmask_b32_e64 v230, 0x80000000, v230, s11
	v_cndmask_b32_e64 v231, 0x80000000, v231, s11
	.loc	1 756 34                        ; ragged.py:756:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s5
	v_cndmask_b32_e64 v69, 0x80000000, v69, s6
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	v_cndmask_b32_e64 v71, 0x80000000, v71, s8
	v_cndmask_b32_e64 v72, 0x80000000, v72, s9
	v_cndmask_b32_e64 v65, 0x80000000, v65, s10
	.loc	1 757 34                        ; ragged.py:757:34
	v_cndmask_b32_e64 v78, 0x80000000, v78, s11
	v_cndmask_b32_e64 v79, 0x80000000, v79, s11
	v_cndmask_b32_e64 v80, 0x80000000, v80, s11
	v_cndmask_b32_e64 v81, 0x80000000, v81, s11
	v_cndmask_b32_e64 v82, 0x80000000, v82, s11
	v_cndmask_b32_e64 v83, 0x80000000, v83, s11
	v_cndmask_b32_e64 v84, 0x80000000, v84, s11
	v_cndmask_b32_e64 v85, 0x80000000, v85, s11
	v_cndmask_b32_e64 v86, 0x80000000, v86, s11
	v_cndmask_b32_e64 v87, 0x80000000, v87, s11
	v_cndmask_b32_e64 v88, 0x80000000, v88, s11
	v_cndmask_b32_e64 v216, 0x80000000, v216, s11
	v_cndmask_b32_e64 v217, 0x80000000, v217, s11
	v_cndmask_b32_e64 v218, 0x80000000, v218, s11
	v_cndmask_b32_e64 v219, 0x80000000, v219, s11
	v_cndmask_b32_e64 v220, 0x80000000, v220, s11
	v_cndmask_b32_e64 v221, 0x80000000, v221, s11
	v_cndmask_b32_e64 v222, 0x80000000, v222, s11
	v_cndmask_b32_e64 v223, 0x80000000, v223, s11
	s_clause 0x1f
	buffer_load_u8 v232, v73, s[16:19], 0 offen
	buffer_load_u8 v233, v74, s[16:19], 0 offen
	buffer_load_u8 v234, v75, s[16:19], 0 offen
	buffer_load_u8 v235, v76, s[16:19], 0 offen
	buffer_load_u8 v236, v77, s[16:19], 0 offen
	buffer_load_u8 v237, v78, s[16:19], 0 offen
	buffer_load_u8 v238, v79, s[16:19], 0 offen
	buffer_load_u8 v239, v80, s[16:19], 0 offen
	buffer_load_u8 v240, v81, s[16:19], 0 offen
	buffer_load_u8 v241, v82, s[16:19], 0 offen
	buffer_load_u8 v242, v83, s[16:19], 0 offen
	buffer_load_u8 v243, v84, s[16:19], 0 offen
	buffer_load_u8 v244, v85, s[16:19], 0 offen
	buffer_load_u8 v245, v86, s[16:19], 0 offen
	buffer_load_u8 v246, v87, s[16:19], 0 offen
	buffer_load_u8 v247, v88, s[16:19], 0 offen
	buffer_load_u8 v248, v216, s[16:19], 0 offen
	buffer_load_u8 v249, v217, s[16:19], 0 offen
	buffer_load_u8 v250, v218, s[16:19], 0 offen
	buffer_load_u8 v251, v219, s[16:19], 0 offen
	buffer_load_u8 v252, v220, s[16:19], 0 offen
	buffer_load_u8 v253, v221, s[16:19], 0 offen
	buffer_load_u8 v254, v222, s[16:19], 0 offen
	buffer_load_u8 v255, v223, s[16:19], 0 offen
	buffer_load_u8 v224, v224, s[16:19], 0 offen
	buffer_load_u8 v225, v225, s[16:19], 0 offen
	buffer_load_u8 v226, v226, s[16:19], 0 offen
	buffer_load_u8 v227, v227, s[16:19], 0 offen
	buffer_load_u8 v228, v228, s[16:19], 0 offen
	buffer_load_u8 v229, v229, s[16:19], 0 offen
	buffer_load_u8 v230, v230, s[16:19], 0 offen
	buffer_load_u8 v231, v231, s[16:19], 0 offen
	.loc	1 756 34                        ; ragged.py:756:34
	s_clause 0x7
	buffer_load_u8 v66, v66, s[12:15], 0 offen
	buffer_load_u8 v68, v68, s[12:15], 0 offen
	buffer_load_u8 v70, v70, s[12:15], 0 offen
	buffer_load_u8 v72, v72, s[12:15], 0 offen
	buffer_load_u8 v65, v65, s[12:15], 0 offen
	buffer_load_u8 v71, v71, s[12:15], 0 offen
	buffer_load_u8 v69, v69, s[12:15], 0 offen
	buffer_load_u8 v67, v67, s[12:15], 0 offen
	v_add_nc_u32_e32 v73, 0, v187
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 768 21                        ; ragged.py:768:21
	s_add_i32 s18, s23, 32
	.loc	1 746 23                        ; ragged.py:746:23
	s_cmpk_lt_u32 s23, 0x60
	s_mov_b32 s23, s18
	.loc	1 756 34                        ; ragged.py:756:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v73, v66
	s_waitcnt vmcnt(6)
	ds_store_b8 v73, v68 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v73, v70 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v73, v72 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v201, v67
	ds_store_b8 v201, v69 offset:512
	ds_store_b8 v201, v71 offset:1024
	ds_store_b8 v201, v65 offset:1536
	v_add_nc_u32_e32 v65, 0, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[216:219], v65 offset1:1
	ds_load_2addr_stride64_b64 v[220:223], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v202 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v202 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v203 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v203 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v204 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v204 offset0:2 offset1:3
	.loc	1 757 34                        ; ragged.py:757:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v205, v232
	ds_store_b8 v205, v233 offset:256
	ds_store_b8 v205, v234 offset:512
	ds_store_b8 v205, v236 offset:1024
	ds_store_b8 v205, v237 offset:1280
	ds_store_b8 v205, v238 offset:1536
	ds_store_b8 v205, v240 offset:2048
	ds_store_b8 v205, v241 offset:2304
	ds_store_b8 v205, v242 offset:2560
	ds_store_b8 v205, v244 offset:3072
	ds_store_b8 v205, v245 offset:3328
	ds_store_b8 v205, v246 offset:3584
	ds_store_b8 v205, v248 offset:4096
	ds_store_b8 v205, v249 offset:4352
	ds_store_b8 v205, v250 offset:4608
	ds_store_b8 v205, v252 offset:5120
	ds_store_b8 v205, v253 offset:5376
	ds_store_b8 v205, v254 offset:5632
	ds_store_b8 v205, v224 offset:6144
	ds_store_b8 v205, v225 offset:6400
	ds_store_b8 v205, v226 offset:6656
	ds_store_b8 v205, v228 offset:7168
	ds_store_b8 v205, v229 offset:7424
	ds_store_b8 v205, v230 offset:7680
	ds_store_b8 v206, v235
	ds_store_b8 v207, v239
	ds_store_b8 v208, v243
	ds_store_b8 v209, v247
	ds_store_b8 v210, v251
	ds_store_b8 v211, v255
	ds_store_b8 v212, v227
	ds_store_b8 v213, v231
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 758 31                        ; ragged.py:758:31
	ds_load_u8 v224, v189 offset:1280
	ds_load_u8 v225, v189 offset:1024
	ds_load_u8 v226, v189 offset:1920
	ds_load_u8 v227, v189 offset:1664
	ds_load_u8 v228, v189 offset:1408
	ds_load_u8 v229, v189 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	ds_load_u8 v225, v189 offset:1792
	ds_load_u8 v230, v189 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v226, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v227, v226, 16, v228
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v225, v230, v225, 0xc0c0004
	ds_load_u8 v230, v189 offset:256
	ds_load_u8 v231, v189
	ds_load_u8 v232, v189 offset:896
	ds_load_u8 v233, v189 offset:640
	ds_load_u8 v234, v189 offset:384
	ds_load_u8 v235, v189 offset:128
	v_lshl_or_b32 v225, v225, 16, v224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	ds_load_u8 v231, v189 offset:768
	ds_load_u8 v236, v189 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v229, v235, v234, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v231, v236, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v224, v231, 16, v230
	v_perm_b32 v230, v233, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[224:225], v[216:217], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v226, v230, 16, v229
	v_wmma_i32_16x16x16_iu4 v[17:24], v[224:225], v[218:219], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[224:225], v[220:221], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[224:225], v[222:223], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[226:227], v[216:217], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[226:227], v[218:219], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[226:227], v[220:221], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v216, v189 offset:3328
	ds_load_u8 v217, v189 offset:3072
	ds_load_u8 v218, v189 offset:3968
	ds_load_u8 v219, v189 offset:3712
	ds_load_u8 v220, v189 offset:3456
	ds_load_u8 v221, v189 offset:3200
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[222:223], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v216, v217, v216, 0xc0c0004
	ds_load_u8 v217, v189 offset:3840
	ds_load_u8 v222, v189 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v219, v218, 16, v220
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v222, v217, 0xc0c0004
	ds_load_u8 v222, v189 offset:2304
	ds_load_u8 v223, v189 offset:2048
	ds_load_u8 v224, v189 offset:2944
	ds_load_u8 v225, v189 offset:2688
	ds_load_u8 v226, v189 offset:2432
	ds_load_u8 v227, v189 offset:2176
	v_lshl_or_b32 v217, v217, 16, v216
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v222, v223, v222, 0xc0c0004
	ds_load_u8 v223, v189 offset:2816
	ds_load_u8 v228, v189 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v221, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v223, v228, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v216, v223, 16, v222
	v_perm_b32 v222, v225, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[216:217], v[85:86], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v218, v222, 16, v221
	v_wmma_i32_16x16x16_iu4 v[33:40], v[216:217], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[216:217], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[216:217], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[218:219], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[218:219], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[218:219], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v189 offset:5376
	ds_load_u8 v82, v189 offset:5120
	ds_load_u8 v83, v189 offset:6016
	ds_load_u8 v84, v189 offset:5760
	ds_load_u8 v85, v189 offset:5504
	ds_load_u8 v86, v189 offset:5248
	v_wmma_i32_16x16x16_iu4 v[25:32], v[218:219], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v189 offset:5888
	ds_load_u8 v87, v189 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v189 offset:4352
	ds_load_u8 v88, v189 offset:4096
	ds_load_u8 v216, v189 offset:4992
	ds_load_u8 v217, v189 offset:4736
	ds_load_u8 v218, v189 offset:4480
	ds_load_u8 v219, v189 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v189 offset:4864
	ds_load_u8 v220, v189 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v220, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v81, v88, 16, v87
	v_perm_b32 v87, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[77:78], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v83, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v73, v189 offset:7424
	ds_load_u8 v74, v189 offset:7168
	ds_load_u8 v75, v189 offset:8064
	ds_load_u8 v76, v189 offset:7808
	ds_load_u8 v77, v189 offset:7552
	ds_load_u8 v78, v189 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v189 offset:7936
	ds_load_u8 v79, v189 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v189 offset:6400
	ds_load_u8 v80, v189 offset:6144
	ds_load_u8 v81, v189 offset:7040
	ds_load_u8 v82, v189 offset:6784
	ds_load_u8 v83, v189 offset:6528
	ds_load_u8 v84, v189 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v189 offset:6912
	ds_load_u8 v85, v189 offset:6656
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
	.loc	1 746 23                        ; ragged.py:746:23
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 772 25                        ; ragged.py:772:25
	v_mul_lo_u32 v65, v150, s28
	v_mul_lo_u32 v66, v152, s28
	v_mul_lo_u32 v67, v153, s28
	v_mul_lo_u32 v68, v154, s28
	.loc	1 779 25                        ; ragged.py:779:25
	s_add_i32 s18, s25, s29
	.loc	1 778 40                        ; ragged.py:778:40
	s_mov_b32 s22, s14
	.loc	1 779 25                        ; ragged.py:779:25
	s_mul_i32 s18, s18, s30
	.loc	1 778 40                        ; ragged.py:778:40
	s_mov_b32 s23, s15
	v_add_lshl_u32 v69, v89, s18, 1
	.loc	1 771 40                        ; ragged.py:771:40
	v_add_lshl_u32 v65, s25, v65, 1
	v_add_lshl_u32 v66, s25, v66, 1
	v_add_lshl_u32 v67, s25, v67, 1
	v_add_lshl_u32 v68, s25, v68, 1
	.loc	1 778 40                        ; ragged.py:778:40
	v_cndmask_b32_e64 v69, 0x80000000, v69, s11
	.loc	1 771 40                        ; ragged.py:771:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	s_mov_b32 s42, s14
	s_mov_b32 s43, s15
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 778 40                        ; ragged.py:778:40
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 771 40                        ; ragged.py:771:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	buffer_load_u16 v67, v67, s[40:43], 0 offen
	buffer_load_u16 v68, v68, s[40:43], 0 offen
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	v_cvt_f32_i32_e32 v75, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v77, v8
	v_cvt_f32_i32_e32 v78, v9
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v80, v11
	v_cvt_f32_i32_e32 v81, v12
	v_cvt_f32_i32_e32 v82, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v84, v15
	v_cvt_f32_i32_e32 v85, v16
	.loc	1 783 21                        ; ragged.py:783:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 769 27                        ; ragged.py:769:27
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
	.loc	1 785 17                        ; ragged.py:785:17
	s_add_i32 s25, s25, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 742 19                        ; ragged.py:742:19
	s_cmp_lg_u32 s25, s28
	.loc	1 778 40                        ; ragged.py:778:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v69
	.loc	1 771 40                        ; ragged.py:771:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v66
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 783 21                        ; ragged.py:783:21
	ds_store_b32 v214, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v215
	ds_load_b128 v[5:8], v215 offset:16
	ds_load_b128 v[9:12], v215 offset:512
	ds_load_b128 v[13:16], v215 offset:528
	.loc	1 776 21                        ; ragged.py:776:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v18, v18, v66 :: v_dual_lshlrev_b32 v67, 16, v67
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v69, v70, v65 :: v_dual_lshlrev_b32 v68, 16, v68
	v_mul_f32_e32 v70, v71, v65
	v_mul_f32_e32 v71, v72, v65
	v_dual_mul_f32 v72, v73, v65 :: v_dual_mul_f32 v19, v19, v66
	v_dual_mul_f32 v73, v74, v65 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v74, v75, v65 :: v_dual_mul_f32 v17, v17, v66
	v_dual_mul_f32 v75, v76, v65 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v76, v77, v65 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v77, v78, v65 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v78, v79, v65 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v79, v80, v65 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v80, v81, v65 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v81, v82, v65 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v82, v83, v65 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v83, v84, v65 :: v_dual_mul_f32 v30, v30, v66
	v_dual_mul_f32 v65, v85, v65 :: v_dual_mul_f32 v32, v32, v66
	v_dual_mul_f32 v29, v29, v66 :: v_dual_mul_f32 v34, v34, v67
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v36, v36, v67
	v_dual_mul_f32 v33, v33, v67 :: v_dual_mul_f32 v50, v50, v68
	v_dual_mul_f32 v35, v35, v67 :: v_dual_mul_f32 v52, v52, v68
	v_dual_mul_f32 v37, v37, v67 :: v_dual_mul_f32 v54, v54, v68
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v49, v49, v68
	v_dual_mul_f32 v39, v39, v67 :: v_dual_mul_f32 v56, v56, v68
	v_dual_mul_f32 v40, v40, v67 :: v_dual_mul_f32 v51, v51, v68
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v58, v58, v68
	v_dual_mul_f32 v42, v42, v67 :: v_dual_mul_f32 v53, v53, v68
	v_dual_mul_f32 v43, v43, v67 :: v_dual_mul_f32 v60, v60, v68
	v_dual_mul_f32 v44, v44, v67 :: v_dual_mul_f32 v55, v55, v68
	v_dual_mul_f32 v45, v45, v67 :: v_dual_mul_f32 v62, v62, v68
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v64, v64, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v59, v59, v68
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v61, v61, v68 :: v_dual_fmac_f32 v184, v70, v2
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v63, v63, v68 :: v_dual_fmac_f32 v180, v74, v6
	.loc	1 784 17                        ; ragged.py:784:17
	v_dual_fmac_f32 v185, v69, v1 :: v_dual_fmac_f32 v182, v72, v4
	v_dual_fmac_f32 v183, v71, v3 :: v_dual_fmac_f32 v178, v76, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v181, v73, v5 :: v_dual_fmac_f32 v176, v78, v10
	v_dual_fmac_f32 v179, v75, v7 :: v_dual_fmac_f32 v174, v80, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v177, v77, v9 :: v_dual_fmac_f32 v172, v82, v14
	v_dual_fmac_f32 v175, v79, v11 :: v_dual_fmac_f32 v170, v65, v16
	v_dual_fmac_f32 v173, v81, v13 :: v_dual_fmac_f32 v168, v18, v2
	v_dual_fmac_f32 v171, v83, v15 :: v_dual_fmac_f32 v164, v21, v5
	v_dual_fmac_f32 v169, v17, v1 :: v_dual_fmac_f32 v162, v23, v7
	v_dual_fmac_f32 v167, v19, v3 :: v_dual_fmac_f32 v160, v25, v9
	v_dual_fmac_f32 v165, v20, v4 :: v_dual_fmac_f32 v158, v27, v11
	v_dual_fmac_f32 v163, v22, v6 :: v_dual_fmac_f32 v156, v29, v13
	v_dual_fmac_f32 v161, v24, v8 :: v_dual_fmac_f32 v148, v33, v1
	v_dual_fmac_f32 v159, v26, v10 :: v_dual_fmac_f32 v146, v35, v3
	v_dual_fmac_f32 v157, v28, v12 :: v_dual_fmac_f32 v144, v37, v5
	v_dual_fmac_f32 v155, v30, v14 :: v_dual_fmac_f32 v142, v39, v7
	v_dual_fmac_f32 v151, v31, v15 :: v_dual_fmac_f32 v140, v41, v9
	v_dual_fmac_f32 v149, v32, v16 :: v_dual_fmac_f32 v138, v43, v11
	v_dual_fmac_f32 v147, v34, v2 :: v_dual_fmac_f32 v136, v45, v13
	v_dual_fmac_f32 v145, v36, v4 :: v_dual_fmac_f32 v134, v47, v15
	v_dual_fmac_f32 v143, v38, v6 :: v_dual_fmac_f32 v132, v49, v1
	v_dual_fmac_f32 v141, v40, v8 :: v_dual_fmac_f32 v130, v51, v3
	v_dual_fmac_f32 v139, v42, v10 :: v_dual_fmac_f32 v128, v53, v5
	v_dual_fmac_f32 v137, v44, v12 :: v_dual_fmac_f32 v126, v55, v7
	v_dual_fmac_f32 v135, v46, v14 :: v_dual_fmac_f32 v124, v57, v9
	v_dual_fmac_f32 v133, v48, v16 :: v_dual_fmac_f32 v122, v58, v10
	v_dual_fmac_f32 v131, v50, v2 :: v_dual_fmac_f32 v120, v60, v12
	v_dual_fmac_f32 v129, v52, v4 :: v_dual_fmac_f32 v118, v63, v15
	v_fmac_f32_e32 v127, v54, v6
	v_fmac_f32_e32 v125, v56, v8
	v_fmac_f32_e32 v121, v59, v11
	v_fmac_f32_e32 v119, v61, v13
	v_fmac_f32_e32 v123, v62, v14
	v_fmac_f32_e32 v117, v64, v16
	.loc	1 742 19                        ; ragged.py:742:19
	s_cbranch_scc1 .LBB0_2
.LBB0_5:                                ; %._crit_edge
	.loc	1 787 9                         ; ragged.py:787:9
	v_bfe_u32 v21, v185, 16, 1
	v_bfe_u32 v22, v184, 16, 1
	v_cmp_o_f32_e64 s19, v185, v185
	v_bfe_u32 v24, v183, 16, 1
	v_cmp_o_f32_e64 s20, v184, v184
	v_add3_u32 v23, v185, v21, 0x7fff
	v_add3_u32 v22, v184, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v183, v183
	v_add3_u32 v24, v183, v24, 0x7fff
	v_bfe_u32 v25, v181, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v182, 16, 1
	v_bfe_u32 v26, v180, 16, 1
	v_cmp_o_f32_e64 s19, v182, v182
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v182, v23, 0x7fff
	v_add3_u32 v25, v181, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v181, v181
	v_add3_u32 v26, v180, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v180, v180
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v179, 16, 1
	v_bfe_u32 v27, v178, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v177, 16, 1
	v_add3_u32 v23, v179, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v179, v179
	v_add3_u32 v27, v178, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v178, v178
	v_bfe_u32 v28, v176, 16, 1
	v_add3_u32 v26, v177, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v177, v177
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v175, 16, 1
	v_bfe_u32 v29, v174, 16, 1
	v_add3_u32 v28, v176, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v176, v176
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v175, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v175, v175
	v_add3_u32 v29, v174, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v174, v174
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v173, 16, 1
	v_bfe_u32 v30, v172, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v171, 16, 1
	v_add3_u32 v28, v173, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v173, v173
	v_add3_u32 v30, v172, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v172, v172
	v_bfe_u32 v31, v170, 16, 1
	v_add3_u32 v29, v171, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v171, v171
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v169, 16, 1
	v_bfe_u32 v32, v168, 16, 1
	v_add3_u32 v31, v170, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v170, v170
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v169, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v169, v169
	v_add3_u32 v32, v168, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v168, v168
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v167, 16, 1
	v_bfe_u32 v33, v165, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v164, 16, 1
	v_add3_u32 v31, v167, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v167, v167
	v_add3_u32 v33, v165, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v165, v165
	v_bfe_u32 v34, v163, 16, 1
	v_add3_u32 v32, v164, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v164, v164
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v162, 16, 1
	v_bfe_u32 v35, v161, 16, 1
	v_add3_u32 v34, v163, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v163, v163
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v162, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v162, v162
	v_add3_u32 v35, v161, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v161, v161
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v160, 16, 1
	v_bfe_u32 v36, v159, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v158, 16, 1
	v_add3_u32 v34, v160, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v160, v160
	v_add3_u32 v36, v159, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v159, v159
	v_bfe_u32 v37, v157, 16, 1
	v_add3_u32 v35, v158, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v158, v158
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v156, 16, 1
	v_bfe_u32 v38, v155, 16, 1
	v_add3_u32 v37, v157, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v157, v157
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v156, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v156, v156
	v_add3_u32 v38, v155, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v155, v155
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v151, 16, 1
	v_bfe_u32 v39, v149, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v148, 16, 1
	v_add3_u32 v37, v151, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v151, v151
	v_add3_u32 v39, v149, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v149, v149
	v_bfe_u32 v40, v147, 16, 1
	v_add3_u32 v38, v148, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v148, v148
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v146, 16, 1
	v_bfe_u32 v41, v145, 16, 1
	v_add3_u32 v40, v147, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v147, v147
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v146, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v146, v146
	v_add3_u32 v41, v145, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v145, v145
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v144, 16, 1
	v_bfe_u32 v42, v143, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v142, 16, 1
	v_add3_u32 v40, v144, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v144, v144
	v_add3_u32 v42, v143, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v143, v143
	v_bfe_u32 v43, v141, 16, 1
	v_add3_u32 v41, v142, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v142, v142
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v140, 16, 1
	v_bfe_u32 v44, v139, 16, 1
	v_add3_u32 v43, v141, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v141, v141
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v140, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v140, v140
	v_add3_u32 v44, v139, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v139, v139
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v138, 16, 1
	v_bfe_u32 v45, v137, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v136, 16, 1
	v_add3_u32 v43, v138, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v138, v138
	v_add3_u32 v45, v137, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v137, v137
	v_bfe_u32 v46, v135, 16, 1
	v_add3_u32 v44, v136, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v136, v136
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s19
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v134, 16, 1
	v_bfe_u32 v47, v133, 16, 1
	v_add3_u32 v46, v135, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v135, v135
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v134, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v134, v134
	v_add3_u32 v47, v133, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v133, v133
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v132, 16, 1
	v_bfe_u32 v48, v131, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v130, 16, 1
	v_add3_u32 v46, v132, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v132, v132
	v_add3_u32 v48, v131, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v131, v131
	v_bfe_u32 v49, v129, 16, 1
	v_add3_u32 v47, v130, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v130, v130
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v128, 16, 1
	v_bfe_u32 v50, v127, 16, 1
	v_add3_u32 v49, v129, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v129, v129
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v128, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v128, v128
	v_add3_u32 v50, v127, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v127, v127
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v126, 16, 1
	v_bfe_u32 v51, v125, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v124, 16, 1
	v_add3_u32 v49, v126, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v126, v126
	v_add3_u32 v51, v125, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v125, v125
	v_add3_u32 v50, v124, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v124, v124
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_bfe_u32 v52, v122, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v121, 16, 1
	v_bfe_u32 v53, v120, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v122, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v122, v122
	v_add3_u32 v51, v121, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v121, v121
	v_add3_u32 v53, v120, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v120, v120
	v_bfe_u32 v54, v119, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v123, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v119, v54, 0x7fff
	v_bfe_u32 v54, v118, 16, 1
	v_bfe_u32 v55, v117, 16, 1
	v_cmp_o_f32_e64 s19, v119, v119
	v_add3_u32 v52, v123, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v123, v123
	v_add3_u32 v54, v118, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v118, v118
	v_add3_u32 v55, v117, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v117, v117
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
	.loc	1 692 36                        ; ragged.py:692:36
	v_lshrrev_b32_e32 v1, 1, v166
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v20, v150, s30
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v11, s24, v1
	.loc	1 787 9                         ; ragged.py:787:9
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 8, v54
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s18, s30, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_lshl_or_b32 v51, v51, 4, v51
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s17, s30, v16
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_lshl_or_b32 v54, v54, 4, v54
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 787 9                         ; ragged.py:787:9
	v_and_b32_e32 v51, 0x5040504, v51
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 787 9                         ; ragged.py:787:9
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
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s18, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s17, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s16, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s15, s30, v14
	.loc	1 787 9                         ; ragged.py:787:9
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
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 787 9                         ; ragged.py:787:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s14, s30, v13
	v_cmp_gt_i32_e64 s13, s30, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s15, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s12, s30, v10
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s14, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s13, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s11, s30, v9
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s12, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s10, s30, v8
	.loc	1 787 9                         ; ragged.py:787:9
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
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s9, s30, v7
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s11, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s8, s30, v6
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v52.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s10, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s9, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s7, s30, v5
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s8, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s6, s30, v4
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s5, s30, v3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v19, v152, s30
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s7, s4
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s1, s30, v2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s6, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s0, s30, v1
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s5, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s1, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s0, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s18, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s17, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s16, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s15, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s14, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s13, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s12, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s11, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s10, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s9, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s8, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v18, v153, s30
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s7, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s6, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s5, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s1, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s0, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s18, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s17, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s16, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s15, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s14, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s13, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v71.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s12, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s11, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s10, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v70.l, v39.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s9, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v73.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s8, s2
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v17, v154, s30
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s7, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s6, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s5, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v44, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
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
	.loc	1 652 5                         ; ragged.py:652:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12472
; TotalNumSgprs: 46
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
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
	.short	678                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
