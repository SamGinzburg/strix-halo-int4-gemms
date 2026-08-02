	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 679 0                         ; ragged.py:679:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 707 25 prologue_end           ; ragged.py:707:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 718 18                        ; ragged.py:718:18
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:705:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:705:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
.Ltmp2:
	.loc	1 707 25 is_stmt 1              ; ragged.py:707:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v126, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 709 33                        ; ragged.py:709:33
	s_sub_i32 s5, s35, s4
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
	s_lshl_b64 s[28:29], s[2:3], 3
	s_add_u32 s2, s20, s28
	s_addc_u32 s3, s21, s29
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s2, s22, s28
	s_addc_u32 s3, s23, s29
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s4, s24, s28
	s_addc_u32 s5, s25, s29
	.loc	1 716 24                        ; ragged.py:716:24
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 717 22                        ; ragged.py:717:22
	s_load_b64 s[24:25], s[4:5], 0x0
	v_mov_b32_e32 v109, 0
	.loc	1 719 18                        ; ragged.py:719:18
	s_lshl_b32 s35, s6, 8
	.loc	1 718 18                        ; ragged.py:718:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s2
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v110, s10, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[20:21], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s2, s[24:25], v[2:3]
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s3, s[20:21], v[4:5]
	v_cmp_le_i64_e64 s5, s[20:21], v[6:7]
	v_cmp_le_i64_e64 s6, s[20:21], v[8:9]
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[4:5]
	v_cmp_gt_i64_e64 s8, s[24:25], v[6:7]
	v_cmp_gt_i64_e64 s9, s[24:25], v[8:9]
	.loc	1 799 25 is_stmt 1              ; ragged.py:799:25
	v_add_nc_u32_e32 v113, 16, v110
	v_add_nc_u32_e32 v115, 32, v110
	v_add_nc_u32_e32 v116, 48, v110
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lt_i32 s34, 1
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s9, s[0:1], 0x50
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 719 18 is_stmt 1              ; ragged.py:719:18
	v_or_b32_e32 v41, s35, v0
	.loc	1 718 32                        ; ragged.py:718:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v6, 5, v1
	.loc	1 718 18 is_stmt 0              ; ragged.py:718:18
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v4, 3, v0
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v5, 24, v5
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v10, 24, v7
	v_xor_b32_e32 v11, v7, v3
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s28
	s_addc_u32 s1, s7, s29
	.loc	1 782 39                        ; ragged.py:782:39
	s_mul_i32 s7, s9, s33
	.loc	1 806 25                        ; ragged.py:806:25
	s_load_b32 s6, s[0:1], 0x0
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v1, s0, s10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s11, 0, s0
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v142, 24, v4
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v9, 0xe00, v9
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s1, s[20:21], v[1:2]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s5, s[24:25], v[1:2]
	v_xor_b32_e32 v1, v4, v5
	v_xor_b32_e32 v2, v10, v5
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v4, 24, v11
	v_or_b32_e32 v143, v6, v10
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v14, 2, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v144, v2, v8
	v_or3_b32 v145, v9, v4, v6
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[42:43], null, s7, s6, v[41:42]
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v8, 32, v8
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v3, s10, v3
	v_xor_b32_e32 v2, 8, v143
	v_xor_b32_e32 v5, 16, v143
	.loc	1 769 19 is_stmt 1              ; ragged.py:769:19
	v_mad_u64_u32 v[44:45], null, s33, 3, v[42:43]
	v_mad_u64_u32 v[45:46], null, s33, 5, v[42:43]
	v_mad_u64_u32 v[46:47], null, s33, 6, v[42:43]
	v_mad_u64_u32 v[47:48], null, s33, 7, v[42:43]
	v_mad_u64_u32 v[48:49], null, s33, 9, v[42:43]
	v_mad_u64_u32 v[49:50], null, s33, 10, v[42:43]
	v_mad_u64_u32 v[50:51], null, s33, 11, v[42:43]
	v_mad_u64_u32 v[51:52], null, s33, 12, v[42:43]
	v_mad_u64_u32 v[52:53], null, s33, 13, v[42:43]
	v_mad_u64_u32 v[53:54], null, s33, 14, v[42:43]
	v_mad_u64_u32 v[54:55], null, s33, 15, v[42:43]
	v_mad_u64_u32 v[55:56], null, s33, 17, v[42:43]
	v_mad_u64_u32 v[56:57], null, s33, 18, v[42:43]
	v_mad_u64_u32 v[57:58], null, s33, 19, v[42:43]
	v_mad_u64_u32 v[58:59], null, s33, 20, v[42:43]
	v_mad_u64_u32 v[59:60], null, s33, 21, v[42:43]
	v_mad_u64_u32 v[60:61], null, s33, 22, v[42:43]
	v_mad_u64_u32 v[61:62], null, s33, 23, v[42:43]
	v_mad_u64_u32 v[62:63], null, s33, 24, v[42:43]
	v_mad_u64_u32 v[63:64], null, s33, 25, v[42:43]
	v_mad_u64_u32 v[64:65], null, s33, 26, v[42:43]
	v_mad_u64_u32 v[65:66], null, s33, 27, v[42:43]
	v_mad_u64_u32 v[66:67], null, s33, 28, v[42:43]
	v_xor_b32_e32 v4, 24, v143
	v_xor_b32_e32 v6, 8, v144
	v_xor_b32_e32 v9, 16, v144
	v_xor_b32_e32 v10, 24, v144
	v_xor_b32_e32 v11, 8, v145
	v_xor_b32_e32 v12, 16, v145
	v_xor_b32_e32 v13, 24, v145
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v7, 28, v7
	v_add3_u32 v8, 0, v14, v8
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v14, 1, v126
	v_mad_u64_u32 v[67:68], null, s33, 29, v[42:43]
	v_mad_u64_u32 v[68:69], null, s33, 30, v[42:43]
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v138, v110, s34
	v_mul_lo_u32 v139, v113, s34
	v_mul_lo_u32 v140, v115, s34
	v_mul_lo_u32 v141, v116, s34
	v_mul_lo_u32 v146, v3, s9
	.loc	1 769 19                        ; ragged.py:769:19
	v_mad_u64_u32 v[69:70], null, s33, 31, v[42:43]
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v41
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v147, s33, v42
	.loc	1 769 19                        ; ragged.py:769:19
	v_lshl_add_u32 v148, s33, 1, v42
	v_lshl_add_u32 v149, s33, 2, v42
	v_lshl_add_u32 v150, s33, 3, v42
	v_lshl_add_u32 v151, s33, 4, v42
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v152, 0, v1
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v153, 0, v2
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v154, 0, v5
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v155, 0, v4
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v156, 0, v6
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v157, 0, v9
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v158, 0, v10
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v159, 0, v11
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v160, 0, v12
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v161, 0, v13
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v162, v8, v7
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v163, 0, v14
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
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v43, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	s_mov_b32 s28, s14
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s1, s1, s5
	s_and_b32 s21, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s5, s34, s6
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s6, s8
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 28 is_stmt 1              ; ragged.py:771:28
	s_lshl_b32 s7, s6, 5
	.loc	1 784 34                        ; ragged.py:784:34
	s_mov_b32 s30, s22
	v_or_b32_e32 v1, s7, v142
	s_mul_i32 s7, s7, s33
	s_mov_b32 s31, s23
	v_add_nc_u32_e32 v2, s7, v42
	v_add_nc_u32_e32 v3, s7, v147
	v_add_nc_u32_e32 v1, v146, v1
	v_add_nc_u32_e32 v4, s7, v148
	v_add_nc_u32_e32 v5, s7, v44
	v_add_nc_u32_e32 v6, s7, v149
	v_add_nc_u32_e32 v7, s7, v45
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	v_add_nc_u32_e32 v8, s7, v46
	v_add_nc_u32_e32 v9, s7, v47
	v_add_nc_u32_e32 v10, s7, v150
	v_add_nc_u32_e32 v11, s7, v48
	v_add_nc_u32_e32 v12, s7, v49
	v_add_nc_u32_e32 v13, s7, v50
	v_add_nc_u32_e32 v14, s7, v51
	v_add_nc_u32_e32 v15, s7, v52
	v_add_nc_u32_e32 v16, s7, v53
	v_add_nc_u32_e32 v17, s7, v54
	v_add_nc_u32_e32 v18, s7, v151
	v_add_nc_u32_e32 v19, s7, v55
	v_add_nc_u32_e32 v20, s7, v56
	v_add_nc_u32_e32 v21, s7, v57
	v_add_nc_u32_e32 v22, s7, v58
	v_add_nc_u32_e32 v23, s7, v59
	v_add_nc_u32_e32 v24, s7, v60
	v_add_nc_u32_e32 v25, s7, v61
	v_add_nc_u32_e32 v26, s7, v62
	v_add_nc_u32_e32 v27, s7, v63
	v_add_nc_u32_e32 v28, s7, v64
	v_add_nc_u32_e32 v29, s7, v65
	v_add_nc_u32_e32 v30, s7, v66
	v_add_nc_u32_e32 v31, s7, v67
	v_add_nc_u32_e32 v32, s7, v68
	v_add_nc_u32_e32 v33, s7, v69
	v_cndmask_b32_e64 v34, 0x80000000, v2, s0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 783 34                        ; ragged.py:783:34
	buffer_load_b64 v[1:2], v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	v_cndmask_b32_e64 v30, 0x80000000, v30, s0
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	.loc	1 784 34                        ; ragged.py:784:34
	s_clause 0x1f
	buffer_load_u8 v35, v34, s[28:31], 0 offen
	buffer_load_u8 v36, v3, s[28:31], 0 offen
	buffer_load_u8 v37, v4, s[28:31], 0 offen
	buffer_load_u8 v38, v5, s[28:31], 0 offen
	buffer_load_u8 v34, v6, s[28:31], 0 offen
	buffer_load_u8 v39, v7, s[28:31], 0 offen
	buffer_load_u8 v40, v8, s[28:31], 0 offen
	buffer_load_u8 v164, v9, s[28:31], 0 offen
	buffer_load_u8 v165, v10, s[28:31], 0 offen
	buffer_load_u8 v166, v11, s[28:31], 0 offen
	buffer_load_u8 v167, v12, s[28:31], 0 offen
	buffer_load_u8 v168, v13, s[28:31], 0 offen
	buffer_load_u8 v169, v14, s[28:31], 0 offen
	buffer_load_u8 v170, v15, s[28:31], 0 offen
	buffer_load_u8 v171, v16, s[28:31], 0 offen
	buffer_load_u8 v172, v17, s[28:31], 0 offen
	buffer_load_u8 v173, v18, s[28:31], 0 offen
	buffer_load_u8 v174, v19, s[28:31], 0 offen
	buffer_load_u8 v175, v20, s[28:31], 0 offen
	buffer_load_u8 v176, v21, s[28:31], 0 offen
	buffer_load_u8 v177, v22, s[28:31], 0 offen
	buffer_load_u8 v178, v23, s[28:31], 0 offen
	buffer_load_u8 v179, v24, s[28:31], 0 offen
	buffer_load_u8 v180, v25, s[28:31], 0 offen
	buffer_load_u8 v181, v26, s[28:31], 0 offen
	buffer_load_u8 v182, v27, s[28:31], 0 offen
	buffer_load_u8 v183, v28, s[28:31], 0 offen
	buffer_load_u8 v184, v29, s[28:31], 0 offen
	buffer_load_u8 v185, v30, s[28:31], 0 offen
	buffer_load_u8 v186, v31, s[28:31], 0 offen
	buffer_load_u8 v187, v32, s[28:31], 0 offen
	buffer_load_u8 v188, v33, s[28:31], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 798 40                        ; ragged.py:798:40
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 806 25                        ; ragged.py:806:25
	s_add_i32 s7, s6, s5
	.loc	1 805 40                        ; ragged.py:805:40
	s_mov_b32 s38, s22
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s7, s7, s33
	.loc	1 805 40                        ; ragged.py:805:40
	s_mov_b32 s39, s23
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt vmcnt(32)
	ds_store_b64 v152, v[1:2]
	v_add_nc_u32_e32 v1, 0, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[17:20], v1 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v1 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[21:24], v153 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v153 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[25:28], v154 offset1:1
	ds_load_2addr_stride64_b64 v[5:8], v154 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[29:32], v155 offset1:1
	ds_load_2addr_stride64_b64 v[1:4], v155 offset0:2 offset1:3
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(24)
	v_lshlrev_b16 v33.l, 8, v164.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v34.h, v40.l, v33.l
	v_lshlrev_b16 v33.l, 8, v39.l
	v_or_b16 v34.l, v34.l, v33.l
	v_lshlrev_b16 v33.l, 8, v38.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.h, v37.l, v33.l
	v_lshlrev_b16 v33.l, 8, v36.l
	v_or_b16 v33.l, v35.l, v33.l
	v_add_nc_u32_e32 v35, 0, v144
	ds_store_b64 v35, v[33:34]
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v33.l, 8, v172.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v34.h, v171.l, v33.l
	v_lshlrev_b16 v33.l, 8, v170.l
	v_or_b16 v34.l, v169.l, v33.l
	v_lshlrev_b16 v33.l, 8, v168.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.h, v167.l, v33.l
	v_lshlrev_b16 v33.l, 8, v166.l
	v_or_b16 v33.l, v165.l, v33.l
	.loc	1 785 31                        ; ragged.py:785:31
	v_dual_mov_b32 v171, s15 :: v_dual_mov_b32 v170, s14
	v_dual_mov_b32 v169, s13 :: v_dual_mov_b32 v168, s12
	.loc	1 784 34                        ; ragged.py:784:34
	ds_store_b64 v156, v[33:34]
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v33.l, 8, v180.l
	.loc	1 785 31                        ; ragged.py:785:31
	v_dual_mov_b32 v167, s11 :: v_dual_mov_b32 v166, s10
	v_dual_mov_b32 v165, s9 :: v_dual_mov_b32 v164, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 784 34                        ; ragged.py:784:34
	v_or_b16 v34.h, v179.l, v33.l
	v_lshlrev_b16 v33.l, 8, v178.l
	v_or_b16 v34.l, v177.l, v33.l
	v_lshlrev_b16 v33.l, 8, v176.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.h, v175.l, v33.l
	v_lshlrev_b16 v33.l, 8, v174.l
	v_or_b16 v33.l, v173.l, v33.l
	ds_store_b64 v157, v[33:34]
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v33.l, 8, v188.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v34.h, v187.l, v33.l
	v_lshlrev_b16 v33.l, 8, v186.l
	v_or_b16 v34.l, v185.l, v33.l
	v_lshlrev_b16 v33.l, 8, v184.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.h, v183.l, v33.l
	v_lshlrev_b16 v33.l, 8, v182.l
	v_or_b16 v33.l, v181.l, v33.l
	ds_store_b64 v158, v[33:34]
	v_add_nc_u32_e32 v33, 0, v145
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[218:221], v33 offset1:8
	ds_load_2addr_stride64_b64 v[222:225], v159 offset1:8
	ds_load_2addr_stride64_b64 v[37:40], v160 offset1:8
	ds_load_2addr_stride64_b64 v[33:36], v161 offset1:8
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[218:219], v[17:18], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[220:221], v[17:18], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[218:219], v[19:20], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[220:221], v[19:20], v[164:171] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[222:223], v[21:22], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[224:225], v[21:22], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[222:223], v[23:24], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[224:225], v[23:24], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[218:219], v[13:14], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[218:219], v[15:16], v[164:171] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[188:195], v[37:38], v[27:28], v[188:195] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[222:223], v[9:10], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[37:38], v[25:26], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[222:223], v[11:12], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[39:40], v[25:26], v[180:187] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[188:195], v[33:34], v[31:32], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[5:6], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[33:34], v[29:30], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[37:38], v[7:8], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[39:40], v[27:28], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[180:187], v[35:36], v[29:30], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[1:2], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[220:221], v[15:16], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[33:34], v[3:4], v[204:211] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v33, v188
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v188, s6, v138, 1
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[196:203], v[35:36], v[31:32], v[196:203] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[220:221], v[13:14], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[224:225], v[11:12], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v188, 0x80000000, v188, s4
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v34, v189
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[224:225], v[9:10], v[25:32] neg_lo:[1,1,0]
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v189, s6, v139, 1
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[212:219], v[39:40], v[7:8], v[212:219] neg_lo:[1,1,0]
	.loc	1 798 40                        ; ragged.py:798:40
	buffer_load_u16 v188, v188, s[16:19], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v37, v192
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[5:6], v[25:32] neg_lo:[1,1,0]
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v189, 0x80000000, v189, s3
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[212:219], v[35:36], v[3:4], v[212:219] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v167, v199
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[1:2], v[25:32] neg_lo:[1,1,0]
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v35, v190
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v190, s6, v140, 1
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v36, v191
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v191, s6, v141, 1
	buffer_load_u16 v189, v189, s[16:19], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v1, v172
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v13, v184
	v_cvt_f32_i32_e32 v166, v198
	v_cvt_f32_i32_e32 v184, v216
	v_cvt_f32_i32_e32 v2, v173
	.loc	1 798 40                        ; ragged.py:798:40
	buffer_load_u16 v190, v190, s[16:19], 0 offen
	v_cndmask_b32_e32 v191, 0x80000000, v191, vcc_lo
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v3, v174
	v_cvt_f32_i32_e32 v4, v175
	v_cvt_f32_i32_e32 v5, v176
	v_cvt_f32_i32_e32 v6, v177
	.loc	1 798 40                        ; ragged.py:798:40
	buffer_load_u16 v191, v191, s[16:19], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v7, v178
	v_cvt_f32_i32_e32 v8, v179
	v_cvt_f32_i32_e32 v9, v180
	v_cvt_f32_i32_e32 v10, v181
	v_cvt_f32_i32_e32 v11, v182
	v_cvt_f32_i32_e32 v12, v183
	v_cvt_f32_i32_e32 v14, v185
	v_cvt_f32_i32_e32 v15, v186
	v_cvt_f32_i32_e32 v16, v187
	v_cvt_f32_i32_e32 v38, v193
	v_cvt_f32_i32_e32 v39, v194
	v_cvt_f32_i32_e32 v40, v195
	v_cvt_f32_i32_e32 v164, v196
	v_cvt_f32_i32_e32 v165, v197
	v_cvt_f32_i32_e32 v168, v200
	v_cvt_f32_i32_e32 v169, v201
	v_cvt_f32_i32_e32 v170, v202
	v_cvt_f32_i32_e32 v171, v203
	v_cvt_f32_i32_e32 v172, v204
	v_cvt_f32_i32_e32 v173, v205
	v_cvt_f32_i32_e32 v174, v206
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
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
	v_cvt_f32_i32_e32 v175, v207
	v_cvt_f32_i32_e32 v176, v208
	v_cvt_f32_i32_e32 v177, v209
	v_cvt_f32_i32_e32 v178, v210
	v_cvt_f32_i32_e32 v179, v211
	v_cvt_f32_i32_e32 v180, v212
	v_cvt_f32_i32_e32 v181, v213
	v_cvt_f32_i32_e32 v182, v214
	v_cvt_f32_i32_e32 v183, v215
	v_cvt_f32_i32_e32 v185, v217
	v_cvt_f32_i32_e32 v186, v218
	v_cvt_f32_i32_e32 v187, v219
	.loc	1 812 17                        ; ragged.py:812:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lg_u32 s6, s34
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v188, 16, v188
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v192, v1, v188
	.loc	1 805 40                        ; ragged.py:805:40
	v_add_lshl_u32 v1, v41, s7, 1
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v193, v2, v188
	v_mul_f32_e32 v194, v3, v188
	v_mul_f32_e32 v195, v4, v188
	v_mul_f32_e32 v196, v5, v188
	.loc	1 805 40                        ; ragged.py:805:40
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v197, v6, v188
	v_mul_f32_e32 v198, v7, v188
	v_mul_f32_e32 v199, v8, v188
	v_mul_f32_e32 v200, v9, v188
	.loc	1 805 40                        ; ragged.py:805:40
	buffer_load_u16 v1, v1, s[36:39], 0 offen
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v201, v10, v188
	v_mul_f32_e32 v202, v11, v188
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v189, 16, v189
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v203, v12, v188
	v_mul_f32_e32 v204, v13, v188
	v_mul_f32_e32 v205, v14, v188
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v22, v22, v190 :: v_dual_lshlrev_b32 v191, 16, v191
	v_mul_f32_e32 v166, v166, v189
	v_mul_f32_e32 v206, v15, v188
	v_mul_f32_e32 v188, v16, v188
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v184, v184, v191
	.loc	1 810 21                        ; ragged.py:810:21
	s_barrier
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v33, v33, v189
	v_mul_f32_e32 v34, v34, v189
	v_mul_f32_e32 v35, v35, v189
	v_mul_f32_e32 v36, v36, v189
	v_mul_f32_e32 v37, v37, v189
	v_mul_f32_e32 v38, v38, v189
	v_mul_f32_e32 v39, v39, v189
	v_mul_f32_e32 v40, v40, v189
	v_mul_f32_e32 v164, v164, v189
	v_mul_f32_e32 v165, v165, v189
	v_mul_f32_e32 v167, v167, v189
	v_dual_mul_f32 v168, v168, v189 :: v_dual_mul_f32 v17, v17, v190
	v_dual_mul_f32 v169, v169, v189 :: v_dual_mul_f32 v24, v24, v190
	v_dual_mul_f32 v170, v170, v189 :: v_dual_mul_f32 v19, v19, v190
	v_dual_mul_f32 v171, v171, v189 :: v_dual_mul_f32 v26, v26, v190
	v_mul_f32_e32 v18, v18, v190
	v_mul_f32_e32 v20, v20, v190
	v_dual_mul_f32 v21, v21, v190 :: v_dual_mul_f32 v172, v172, v191
	v_dual_mul_f32 v23, v23, v190 :: v_dual_mul_f32 v174, v174, v191
	v_dual_mul_f32 v25, v25, v190 :: v_dual_mul_f32 v176, v176, v191
	v_dual_mul_f32 v27, v27, v190 :: v_dual_mul_f32 v178, v178, v191
	v_dual_mul_f32 v28, v28, v190 :: v_dual_mul_f32 v173, v173, v191
	v_dual_mul_f32 v29, v29, v190 :: v_dual_mul_f32 v180, v180, v191
	v_dual_mul_f32 v30, v30, v190 :: v_dual_mul_f32 v175, v175, v191
	v_dual_mul_f32 v31, v31, v190 :: v_dual_mul_f32 v182, v182, v191
	v_dual_mul_f32 v32, v32, v190 :: v_dual_mul_f32 v177, v177, v191
	.loc	1 805 40                        ; ragged.py:805:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 810 21                        ; ragged.py:810:21
	ds_store_b32 v162, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v163
	ds_load_b128 v[5:8], v163 offset:16
	ds_load_b128 v[9:12], v163 offset:512
	ds_load_b128 v[13:16], v163 offset:528
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v179, v179, v191
	v_mul_f32_e32 v181, v181, v191
	v_mul_f32_e32 v183, v183, v191
	v_mul_f32_e32 v185, v185, v191
	v_mul_f32_e32 v186, v186, v191
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v187, v187, v191 :: v_dual_fmac_f32 v120, v34, v2
	.loc	1 811 17                        ; ragged.py:811:17
	v_fmac_f32_e32 v109, v192, v1
	v_dual_fmac_f32 v137, v193, v2 :: v_dual_fmac_f32 v136, v194, v3
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v135, v195, v4 :: v_dual_fmac_f32 v132, v198, v7
	v_dual_fmac_f32 v134, v196, v5 :: v_dual_fmac_f32 v133, v197, v6
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v128, v202, v11 :: v_dual_fmac_f32 v131, v199, v8
	v_fmac_f32_e32 v114, v38, v6
	v_dual_fmac_f32 v130, v200, v9 :: v_dual_fmac_f32 v129, v201, v10
	v_fmac_f32_e32 v118, v36, v4
	v_dual_fmac_f32 v127, v203, v12 :: v_dual_fmac_f32 v108, v164, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v125, v204, v13 :: v_dual_fmac_f32 v112, v39, v7
	v_dual_fmac_f32 v124, v205, v14 :: v_dual_fmac_f32 v123, v206, v15
	v_fmac_f32_e32 v104, v168, v13
	v_dual_fmac_f32 v122, v188, v16 :: v_dual_fmac_f32 v121, v33, v1
	v_fmac_f32_e32 v106, v166, v11
	v_dual_fmac_f32 v119, v35, v3 :: v_dual_fmac_f32 v100, v17, v1
	v_dual_fmac_f32 v117, v37, v5 :: v_dual_fmac_f32 v102, v170, v15
	v_dual_fmac_f32 v111, v40, v8 :: v_dual_fmac_f32 v98, v19, v3
	v_dual_fmac_f32 v107, v165, v10 :: v_dual_fmac_f32 v94, v23, v7
	v_dual_fmac_f32 v105, v167, v12 :: v_dual_fmac_f32 v96, v21, v5
	v_dual_fmac_f32 v103, v169, v14 :: v_dual_fmac_f32 v90, v27, v11
	v_dual_fmac_f32 v101, v171, v16 :: v_dual_fmac_f32 v92, v25, v9
	v_dual_fmac_f32 v99, v18, v2 :: v_dual_fmac_f32 v88, v29, v13
	v_dual_fmac_f32 v97, v20, v4 :: v_dual_fmac_f32 v86, v31, v15
	v_dual_fmac_f32 v95, v22, v6 :: v_dual_fmac_f32 v84, v172, v1
	v_dual_fmac_f32 v93, v24, v8 :: v_dual_fmac_f32 v82, v174, v3
	v_dual_fmac_f32 v91, v26, v10 :: v_dual_fmac_f32 v80, v176, v5
	v_dual_fmac_f32 v89, v28, v12 :: v_dual_fmac_f32 v78, v178, v7
	v_dual_fmac_f32 v87, v30, v14 :: v_dual_fmac_f32 v76, v180, v9
	v_dual_fmac_f32 v85, v32, v16 :: v_dual_fmac_f32 v74, v181, v10
	v_dual_fmac_f32 v83, v173, v2 :: v_dual_fmac_f32 v72, v183, v12
	v_dual_fmac_f32 v81, v175, v4 :: v_dual_fmac_f32 v70, v186, v15
	v_fmac_f32_e32 v79, v177, v6
	v_fmac_f32_e32 v77, v179, v8
	v_fmac_f32_e32 v73, v182, v11
	v_fmac_f32_e32 v71, v184, v13
	v_fmac_f32_e32 v75, v185, v14
	v_fmac_f32_e32 v43, v187, v16
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v21, v109, 16, 1
	v_bfe_u32 v22, v137, 16, 1
	v_cmp_o_f32_e64 s19, v109, v109
	v_bfe_u32 v24, v136, 16, 1
	v_cmp_o_f32_e64 s20, v137, v137
	v_add3_u32 v23, v109, v21, 0x7fff
	v_add3_u32 v22, v137, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v136, v136
	v_add3_u32 v24, v136, v24, 0x7fff
	v_bfe_u32 v25, v134, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v135, 16, 1
	v_bfe_u32 v26, v133, 16, 1
	v_cmp_o_f32_e64 s19, v135, v135
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v135, v23, 0x7fff
	v_add3_u32 v25, v134, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v134, v134
	v_add3_u32 v26, v133, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v133, v133
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v132, 16, 1
	v_bfe_u32 v27, v131, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v130, 16, 1
	v_add3_u32 v23, v132, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v132, v132
	v_add3_u32 v27, v131, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v131, v131
	v_bfe_u32 v28, v129, 16, 1
	v_add3_u32 v26, v130, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v130, v130
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v128, 16, 1
	v_bfe_u32 v29, v127, 16, 1
	v_add3_u32 v28, v129, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v129, v129
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v128, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v128, v128
	v_add3_u32 v29, v127, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v127, v127
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v125, 16, 1
	v_bfe_u32 v30, v124, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v123, 16, 1
	v_add3_u32 v28, v125, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v125, v125
	v_add3_u32 v30, v124, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v124, v124
	v_bfe_u32 v31, v122, 16, 1
	v_add3_u32 v29, v123, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v123, v123
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v121, 16, 1
	v_bfe_u32 v32, v120, 16, 1
	v_add3_u32 v31, v122, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v122, v122
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v121, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v121, v121
	v_add3_u32 v32, v120, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v120, v120
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v119, 16, 1
	v_bfe_u32 v33, v118, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v117, 16, 1
	v_add3_u32 v31, v119, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v119, v119
	v_add3_u32 v33, v118, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v118, v118
	v_bfe_u32 v34, v114, 16, 1
	v_add3_u32 v32, v117, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v117, v117
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v112, 16, 1
	v_bfe_u32 v35, v111, 16, 1
	v_add3_u32 v34, v114, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v114, v114
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v112, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v112, v112
	v_add3_u32 v35, v111, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v111, v111
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v108, 16, 1
	v_bfe_u32 v36, v107, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v106, 16, 1
	v_add3_u32 v34, v108, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v108, v108
	v_add3_u32 v36, v107, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v107, v107
	v_bfe_u32 v37, v105, 16, 1
	v_add3_u32 v35, v106, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v106, v106
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v104, 16, 1
	v_bfe_u32 v38, v103, 16, 1
	v_add3_u32 v37, v105, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v105, v105
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v104, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v104, v104
	v_add3_u32 v38, v103, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v103, v103
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v102, 16, 1
	v_bfe_u32 v39, v101, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v100, 16, 1
	v_add3_u32 v37, v102, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v102, v102
	v_add3_u32 v39, v101, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v101, v101
	v_bfe_u32 v40, v99, 16, 1
	v_add3_u32 v38, v100, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v100, v100
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v98, 16, 1
	v_bfe_u32 v41, v97, 16, 1
	v_add3_u32 v40, v99, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v99, v99
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v98, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v98, v98
	v_add3_u32 v41, v97, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v97, v97
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v96, 16, 1
	v_bfe_u32 v42, v95, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v94, 16, 1
	v_add3_u32 v40, v96, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v96, v96
	v_add3_u32 v42, v95, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v95, v95
	v_bfe_u32 v44, v93, 16, 1
	v_add3_u32 v41, v94, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v94, v94
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v92, 16, 1
	v_bfe_u32 v45, v91, 16, 1
	v_add3_u32 v44, v93, v44, 0x7fff
	v_cmp_o_f32_e64 s19, v93, v93
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v92, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v92, v92
	v_add3_u32 v45, v91, v45, 0x7fff
	v_cmp_o_f32_e64 s21, v91, v91
	v_cndmask_b16 v41.h, 0x7fff, v44.h, s19
	v_bfe_u32 v44, v90, 16, 1
	v_bfe_u32 v46, v89, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s21
	v_bfe_u32 v45, v88, 16, 1
	v_add3_u32 v44, v90, v44, 0x7fff
	v_cmp_o_f32_e64 s19, v90, v90
	v_add3_u32 v46, v89, v46, 0x7fff
	v_cmp_o_f32_e64 s20, v89, v89
	v_bfe_u32 v47, v87, 16, 1
	v_add3_u32 v45, v88, v45, 0x7fff
	v_cmp_o_f32_e64 s21, v88, v88
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s19
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s20
	v_bfe_u32 v46, v86, 16, 1
	v_bfe_u32 v48, v85, 16, 1
	v_add3_u32 v47, v87, v47, 0x7fff
	v_cmp_o_f32_e64 s19, v87, v87
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s21
	v_add3_u32 v46, v86, v46, 0x7fff
	v_cmp_o_f32_e64 s20, v86, v86
	v_add3_u32 v48, v85, v48, 0x7fff
	v_cmp_o_f32_e64 s21, v85, v85
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s19
	v_bfe_u32 v47, v84, 16, 1
	v_bfe_u32 v49, v83, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s20
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s21
	v_bfe_u32 v48, v82, 16, 1
	v_add3_u32 v47, v84, v47, 0x7fff
	v_cmp_o_f32_e64 s19, v84, v84
	v_add3_u32 v49, v83, v49, 0x7fff
	v_cmp_o_f32_e64 s20, v83, v83
	v_bfe_u32 v50, v81, 16, 1
	v_add3_u32 v48, v82, v48, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s19
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s20
	v_bfe_u32 v49, v80, 16, 1
	v_bfe_u32 v51, v79, 16, 1
	v_add3_u32 v50, v81, v50, 0x7fff
	v_cmp_o_f32_e64 s19, v81, v81
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s21
	v_add3_u32 v49, v80, v49, 0x7fff
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v51, v79, v51, 0x7fff
	v_cmp_o_f32_e64 s21, v79, v79
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s19
	v_bfe_u32 v50, v78, 16, 1
	v_bfe_u32 v52, v77, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s20
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s21
	v_bfe_u32 v51, v76, 16, 1
	v_add3_u32 v50, v78, v50, 0x7fff
	v_cmp_o_f32_e64 s19, v78, v78
	v_add3_u32 v52, v77, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v77, v77
	v_add3_u32 v51, v76, v51, 0x7fff
	v_cmp_o_f32_e64 s21, v76, v76
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s19
	v_bfe_u32 v53, v74, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s20
	v_bfe_u32 v52, v73, 16, 1
	v_bfe_u32 v54, v72, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s21
	v_add3_u32 v53, v74, v53, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_add3_u32 v52, v73, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_add3_u32 v54, v72, v54, 0x7fff
	v_cmp_o_f32_e64 s21, v72, v72
	v_bfe_u32 v55, v71, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s19
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s20
	v_bfe_u32 v53, v75, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s21
	v_add3_u32 v54, v71, v55, 0x7fff
	v_bfe_u32 v55, v70, 16, 1
	v_bfe_u32 v56, v43, 16, 1
	v_cmp_o_f32_e64 s19, v71, v71
	v_add3_u32 v53, v75, v53, 0x7fff
	v_cmp_o_f32_e64 s20, v75, v75
	v_add3_u32 v55, v70, v55, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v70, v70
	v_add3_u32 v56, v43, v56, 0x7fff
	v_cmp_o_f32_e64 s22, v43, v43
	v_cndmask_b16 v43.l, 0x7fff, v54.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v43.h, 0x7fff, v53.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v55.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v56.h, s22
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
	v_cndmask_b32_e64 v41, v45, v42, s19
	v_cndmask_b32_e64 v42, v42, v45, s19
	v_cndmask_b32_e64 v45, v46, v44, s19
	v_cndmask_b32_e64 v44, v44, v46, s19
	v_cndmask_b32_e64 v46, v49, v47, s19
	v_cndmask_b32_e64 v47, v47, v49, s19
	v_cndmask_b32_e64 v49, v50, v48, s19
	v_cndmask_b32_e64 v48, v48, v50, s19
	v_cndmask_b32_e64 v50, v43, v51, s19
	v_cndmask_b32_e64 v43, v51, v43, s19
	v_cndmask_b32_e64 v51, v0, v52, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v52, v0, s19
	v_cndmask_b32_e64 v52, 0x1054, v54, s19
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v1, 1, v126
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v20, v110, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v52, v52, 8, v52
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, s35, v1
	.loc	1 814 9                         ; ragged.py:814:9
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 8, v54
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v52, 0x540054, v52
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_lshl_or_b32 v52, v52, 4, v52
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_lshl_or_b32 v54, v54, 4, v54
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v52, 0x5040504, v52
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
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v52
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v22, v22, v53, v54
	v_perm_b32 v53, v23, v25, v52
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v52
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v52
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v52
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v52
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v34, v33, v52
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v35, v36, v52
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v38, v37, v52
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v39, v40, v52
	v_perm_b32 v39, v39, v40, v54
	v_perm_b32 v40, v42, v41, v52
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v44, v45, v52
	v_perm_b32 v44, v44, v45, v54
	v_perm_b32 v45, v47, v46, v52
	v_perm_b32 v46, v47, v46, v54
	v_perm_b32 v47, v48, v49, v52
	v_perm_b32 v48, v48, v49, v54
	v_perm_b32 v49, v43, v50, v52
	v_perm_b32 v43, v43, v50, v54
	v_perm_b32 v50, v0, v51, v52
	v_perm_b32 v0, v0, v51, v54
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
	s_and_b32 s19, s15, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 814 9                         ; ragged.py:814:9
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
	s_and_b32 s19, s11, s4
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
	s_and_b32 s19, s10, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s4
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s4
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
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v19, v113, s33
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s4
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s5, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s1, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s0, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s8, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v18, v115, s33
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s5, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s1, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s0, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v70.l, v39.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s8, s2
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v17, v116, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s7, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s5, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v74.l, v44.h
	v_mov_b16_e32 v75.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v44, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v45, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v46.h
	v_mov_b16_e32 v77.l, v45.h
	v_mov_b16_e32 v78.l, v48.h
	v_mov_b16_e32 v79.l, v47.h
	v_mov_b16_e32 v80.l, v43.h
	v_mov_b16_e32 v81.l, v49.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v46, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v47, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v48, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v49, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v43, v6, s[20:23], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 226
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 226
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10560
; TotalNumSgprs: 42
; NumVgprs: 226
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 226
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     226
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
