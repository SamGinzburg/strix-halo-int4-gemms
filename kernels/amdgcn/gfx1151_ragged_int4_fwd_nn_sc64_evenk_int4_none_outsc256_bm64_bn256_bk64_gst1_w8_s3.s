	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v75, 15, v0
	v_lshlrev_b32_e32 v142, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s41, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s11, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s11
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s11
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s9, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_load_b64 s[12:13], s[0:1], 0x38
	s_xor_b32 s10, s3, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s41, s10, s9
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s41, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_mov_b32 s8, 0
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s12, s2
	s_addc_u32 s7, s13, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow340
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[6:7], 0x0
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v76, 0xf0, v0
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v77, 4, v75
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v139, 3, v0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_mov_b32_e32 v128, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v11, 2, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s24, s4, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[38:39], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s25, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s4, s[24:25], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[3:4]
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v2, 3, v139
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[9:10]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v1, 3, v76
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v9, 5, v75
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v4, 24, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v12, v3, v11
	v_and_or_b32 v14, v3, 24, v9
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v25, 28, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v10, v10, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[3:4], null, s11, s4, v[1:2]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v5, s34, v75
	s_and_b32 s3, s6, s8
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v3, s33, v3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s5, s40, s33
	s_lshl_b32 s6, s10, 8
	s_mul_i32 s5, s5, s4
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v24, 5, v0
	v_add3_u32 v4, s5, s6, v0
	v_xor_b32_e32 v13, v2, v1
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v15, 0xe00, v142
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v12, 24, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[7:8]
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v6, 16, v5
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v7, 32, v5
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v8, 48, v5
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_lshl_b32 s5, s9, 8
	v_add3_u32 v3, v3, s6, v77
	v_subrev_nc_u32_e32 v4, s5, v4
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v23, 2, v76
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v1, 32, v24
	v_lshl_or_b32 v13, v75, 9, v13
	v_or3_b32 v9, v15, v12, v9
	v_mul_lo_u32 v8, s40, v8
	v_mul_lo_u32 v7, s40, v7
	v_mul_lo_u32 v6, s40, v6
	v_mul_lo_u32 v5, s40, v5
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v11, s34, v11
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v143, 1, v4
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v4, s33, v3
	v_add3_u32 v1, 0, v23, v1
	v_xor_b32_e32 v16, 8, v14
	v_xor_b32_e32 v17, 16, v14
	v_xor_b32_e32 v12, 24, v14
	v_xor_b32_e32 v15, 0x88, v13
	v_xor_b32_e32 v18, 0x110, v13
	v_xor_b32_e32 v19, 0x198, v13
	v_xor_b32_e32 v20, 8, v9
	v_xor_b32_e32 v21, 16, v9
	v_xor_b32_e32 v22, 24, v9
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v23, 1, v76
	s_mov_b32 s4, 0
	v_mad_u64_u32 v[73:74], null, v11, s11, v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v148, s5, v4
	v_subrev_nc_u32_e32 v149, s5, v3
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v144, 1, v8
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v145, 1, v7
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v146, 1, v6
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v147, 1, v5
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v163, v1, v25
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v150, 0, v10
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v151, 0, v14
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v152, 0, v16
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v153, 0, v17
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v154, 0, v12
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v155, 0, v13
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v156, 0, v15
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v157, 0, v18
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v158, 0, v19
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v159, 0, v9
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v160, 0, v20
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v161, 0, v21
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v162, 0, v22
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v164, 0, v23
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s42, s33, 1
	s_lshl_b32 s43, s33, 5
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cndmask_b32_e32 v9, 0x80000000, v73, vcc_lo
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v73, 32, v73
	s_add_i32 s40, s40, -1
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	buffer_load_b64 v[17:18], v9, s[24:27], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[9:12], v149, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v148, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v148, s43, v148
	v_add_nc_u32_e32 v149, s43, v149
	s_cmp_lg_u32 s40, 0
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(2)
	ds_store_b64 v150, v[17:18]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v33, v13, v9, 0x5010400
	v_perm_b32 v34, v14, v10, 0x5010400
	v_perm_b32 v10, v14, v10, 0x7030602
	v_perm_b32 v14, v15, v11, 0x5010400
	v_perm_b32 v11, v15, v11, 0x7030602
	v_perm_b32 v15, v16, v12, 0x5010400
	v_perm_b32 v12, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v16, 8, v33
	v_perm_b32 v13, v13, v9, 0x7030602
	v_and_b16 v9.l, 0xff, v33.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_barrier
	ds_load_2addr_stride64_b64 v[17:20], v151 offset1:1
	ds_load_2addr_stride64_b64 v[165:168], v151 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[21:24], v152 offset1:1
	ds_load_2addr_stride64_b64 v[169:172], v152 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[25:28], v153 offset1:1
	ds_load_2addr_stride64_b64 v[173:176], v153 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[29:32], v154 offset1:1
	ds_load_2addr_stride64_b64 v[177:180], v154 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v9.h, 8, v16.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshrrev_b32_e32 v16, 8, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v155, v9
	v_lshrrev_b32_e32 v9, 24, v33
	v_and_b16 v9.h, 0xff, v33.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v16.l
	ds_store_b16 v155, v9 offset:32
	v_and_b16 v9.l, 0xff, v13.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v155, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v13
	v_and_b16 v9.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 8, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.h, 8, v13.l
	v_lshrrev_b32_e32 v13, 8, v10
	ds_store_b16 v155, v9 offset:96
	v_and_b16 v9.l, 0xff, v34.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v156, v9
	v_lshrrev_b32_e32 v9, 24, v34
	v_and_b16 v9.h, 0xff, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v13.l
	ds_store_b16 v156, v9 offset:32
	v_and_b16 v9.l, 0xff, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v156, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v10
	v_and_b16 v9.h, 0xff, v10.h
	v_lshrrev_b32_e32 v10, 8, v14
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v11
	ds_store_b16 v156, v9 offset:96
	v_and_b16 v9.l, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v157, v9
	v_lshrrev_b32_e32 v9, 24, v14
	v_and_b16 v9.h, 0xff, v14.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v15
	ds_store_b16 v157, v9 offset:32
	v_and_b16 v9.l, 0xff, v11.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v157, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v11
	v_and_b16 v9.h, 0xff, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	v_lshrrev_b32_e32 v10, 8, v12
	ds_store_b16 v157, v9 offset:96
	v_and_b16 v9.l, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v158, v9
	v_lshrrev_b32_e32 v9, 24, v15
	v_and_b16 v9.h, 0xff, v15.h
	v_lshlrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v9.h, v9.l
	v_lshlrev_b16 v9.h, 8, v10.l
	ds_store_b16 v158, v9 offset:32
	v_and_b16 v9.l, 0xff, v12.l
	v_or_b16 v9.l, v9.l, v9.h
	ds_store_b16 v158, v9 offset:64
	v_lshrrev_b32_e32 v9, 24, v12
	v_and_b16 v9.h, 0xff, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v9.l, 8, v9.l
	v_or_b16 v9.l, v9.h, v9.l
	ds_store_b16 v158, v9 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[181:184], v159 offset1:8
	ds_load_2addr_stride64_b64 v[185:188], v160 offset1:8
	ds_load_2addr_stride64_b64 v[189:192], v161 offset1:8
	ds_load_2addr_stride64_b64 v[193:196], v162 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[181:182], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[183:184], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[181:182], v[19:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[183:184], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[185:186], v[21:22], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[187:188], v[21:22], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[185:186], v[23:24], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[187:188], v[23:24], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[181:182], v[165:166], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[189:190], v[25:26], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[191:192], v[25:26], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[189:190], v[27:28], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[191:192], v[27:28], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[181:182], v[167:168], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[193:194], v[29:30], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[195:196], v[29:30], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[193:194], v[31:32], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[195:196], v[31:32], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[183:184], v[165:166], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v165, 0x80000000, v147, s0
	v_cndmask_b32_e64 v166, 0x80000000, v146, s1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[183:184], v[167:168], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v167, 0x80000000, v145, s2
	s_clause 0x1
	buffer_load_u16 v165, v165, s[28:31], 0 offen
	buffer_load_u16 v166, v166, s[28:31], 0 offen
	v_cndmask_b32_e64 v168, 0x80000000, v144, s3
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v167, v167, s[28:31], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[185:186], v[169:170], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[169:170], v[25:32] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v168, v168, s[28:31], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[185:186], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[187:188], v[171:172], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[189:190], v[173:174], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[173:174], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[175:176], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[175:176], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[193:194], v[177:178], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[177:178], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[193:194], v[179:180], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[195:196], v[179:180], v[9:16] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v144, 2, v144
	v_add_nc_u32_e32 v145, 2, v145
	v_add_nc_u32_e32 v146, 2, v146
	v_add_nc_u32_e32 v147, 2, v147
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v182, 16, v166
	v_lshlrev_b32_e32 v181, 16, v165
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v165, v143, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v46, v46, v182 :: v_dual_lshlrev_b32 v183, 16, v167
	v_mul_f32_e32 v62, v62, v181
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v57, v57, v181 :: v_dual_lshlrev_b32 v184, 16, v168
	v_dual_mul_f32 v63, v63, v181 :: v_dual_mul_f32 v48, v48, v182
	v_dual_mul_f32 v64, v64, v181 :: v_dual_mul_f32 v41, v41, v182
	v_dual_mul_f32 v47, v47, v182 :: v_dual_mul_f32 v30, v30, v183
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v25, v25, v183 :: v_dual_mul_f32 v14, v14, v184
	v_dual_mul_f32 v31, v31, v183 :: v_dual_mul_f32 v16, v16, v184
	v_dual_mul_f32 v32, v32, v183 :: v_dual_mul_f32 v9, v9, v184
	v_dual_mul_f32 v15, v15, v184 :: v_dual_mul_f32 v66, v181, v66
	v_dual_mul_f32 v67, v181, v67 :: v_dual_mul_f32 v52, v182, v52
	v_dual_mul_f32 v65, v181, v65 :: v_dual_mul_f32 v50, v182, v50
	v_dual_mul_f32 v72, v181, v72 :: v_dual_mul_f32 v51, v182, v51
	v_dual_mul_f32 v71, v181, v71 :: v_dual_mul_f32 v56, v182, v56
	v_dual_mul_f32 v70, v181, v70 :: v_dual_mul_f32 v49, v182, v49
	v_dual_mul_f32 v69, v181, v69 :: v_dual_mul_f32 v54, v182, v54
	v_dual_mul_f32 v61, v181, v61 :: v_dual_mul_f32 v44, v182, v44
	v_dual_mul_f32 v60, v181, v60 :: v_dual_mul_f32 v55, v182, v55
	v_dual_mul_f32 v59, v181, v59 :: v_dual_mul_f32 v42, v182, v42
	v_dual_mul_f32 v58, v181, v58 :: v_dual_mul_f32 v53, v182, v53
	v_dual_mul_f32 v45, v182, v45 :: v_dual_mul_f32 v36, v183, v36
	v_dual_mul_f32 v43, v182, v43 :: v_dual_mul_f32 v34, v183, v34
	v_dual_mul_f32 v35, v183, v35 :: v_dual_mul_f32 v20, v184, v20
	v_dual_mul_f32 v33, v183, v33 :: v_dual_mul_f32 v18, v184, v18
	v_dual_mul_f32 v40, v183, v40 :: v_dual_mul_f32 v19, v184, v19
	v_dual_mul_f32 v39, v183, v39 :: v_dual_mul_f32 v24, v184, v24
	v_dual_mul_f32 v38, v183, v38 :: v_dual_mul_f32 v17, v184, v17
	v_dual_mul_f32 v37, v183, v37 :: v_dual_mul_f32 v22, v184, v22
	v_dual_mul_f32 v29, v183, v29 :: v_dual_mul_f32 v12, v184, v12
	v_dual_mul_f32 v28, v183, v28 :: v_dual_mul_f32 v23, v184, v23
	v_dual_mul_f32 v27, v183, v27 :: v_dual_mul_f32 v10, v184, v10
	v_dual_mul_f32 v26, v183, v26 :: v_dual_mul_f32 v21, v184, v21
	v_dual_mul_f32 v68, v181, v68 :: v_dual_add_nc_u32 v143, s42, v143
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v163, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[165:168], v164
	ds_load_b128 v[169:172], v164 offset:16
	ds_load_b128 v[173:176], v164 offset:512
	ds_load_b128 v[177:180], v164 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v184, v13
	v_mul_f32_e32 v11, v184, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v141, v65, v165 :: v_dual_fmac_f32 v138, v67, v167
	v_dual_fmac_f32 v140, v66, v166 :: v_dual_fmac_f32 v137, v68, v168
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v134, v71, v171
	v_dual_fmac_f32 v136, v69, v169 :: v_dual_fmac_f32 v135, v70, v170
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v130, v60, v176
	v_dual_fmac_f32 v133, v72, v172 :: v_dual_fmac_f32 v132, v58, v174
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v123, v57, v173 :: v_dual_fmac_f32 v128, v62, v178
	v_dual_fmac_f32 v131, v59, v175 :: v_dual_fmac_f32 v126, v64, v180
	v_dual_fmac_f32 v129, v61, v177 :: v_dual_fmac_f32 v124, v50, v166
	v_dual_fmac_f32 v127, v63, v179 :: v_dual_fmac_f32 v120, v53, v169
	v_dual_fmac_f32 v125, v49, v165 :: v_dual_fmac_f32 v122, v51, v167
	v_dual_fmac_f32 v121, v52, v168 :: v_dual_fmac_f32 v118, v55, v171
	v_dual_fmac_f32 v119, v54, v170 :: v_dual_fmac_f32 v116, v41, v173
	v_dual_fmac_f32 v117, v56, v172 :: v_dual_fmac_f32 v114, v43, v175
	v_dual_fmac_f32 v115, v42, v174 :: v_dual_fmac_f32 v112, v45, v177
	v_dual_fmac_f32 v113, v44, v176 :: v_dual_fmac_f32 v110, v47, v179
	v_dual_fmac_f32 v111, v46, v178 :: v_dual_fmac_f32 v108, v33, v165
	v_dual_fmac_f32 v109, v48, v180 :: v_dual_fmac_f32 v106, v35, v167
	v_dual_fmac_f32 v107, v34, v166 :: v_dual_fmac_f32 v104, v37, v169
	v_dual_fmac_f32 v105, v36, v168 :: v_dual_fmac_f32 v102, v39, v171
	v_dual_fmac_f32 v103, v38, v170 :: v_dual_fmac_f32 v100, v25, v173
	v_dual_fmac_f32 v101, v40, v172 :: v_dual_fmac_f32 v98, v27, v175
	v_dual_fmac_f32 v99, v26, v174 :: v_dual_fmac_f32 v96, v29, v177
	v_dual_fmac_f32 v97, v28, v176 :: v_dual_fmac_f32 v94, v31, v179
	v_dual_fmac_f32 v95, v30, v178 :: v_dual_fmac_f32 v92, v17, v165
	v_dual_fmac_f32 v93, v32, v180 :: v_dual_fmac_f32 v90, v19, v167
	v_dual_fmac_f32 v91, v18, v166 :: v_dual_fmac_f32 v88, v21, v169
	v_dual_fmac_f32 v89, v20, v168 :: v_dual_fmac_f32 v86, v23, v171
	v_dual_fmac_f32 v87, v22, v170 :: v_dual_fmac_f32 v84, v9, v173
	v_dual_fmac_f32 v85, v24, v172 :: v_dual_fmac_f32 v82, v11, v175
	v_dual_fmac_f32 v83, v10, v174 :: v_dual_fmac_f32 v74, v13, v177
	v_dual_fmac_f32 v81, v12, v176 :: v_dual_fmac_f32 v80, v14, v178
	v_dual_fmac_f32 v79, v15, v179 :: v_dual_fmac_f32 v78, v16, v180
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v1, v142
.LBB0_7:                                ; %._crit_edge
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v140|, |v140|
	v_max_f32_e64 v3, |v141|, |v141|
	v_max3_f32 v4, |v137|, |v136|, |v135|
	v_max3_f32 v5, |v132|, |v131|, |v130|
	v_max3_f32 v6, |v129|, |v128|, |v127|
	v_max_f32_e64 v7, |v125|, |v125|
	v_max_f32_e32 v2, v3, v2
	v_max_f32_e64 v3, |v124|, |v124|
	v_max3_f32 v10, |v115|, |v114|, |v113|
	v_max3_f32 v5, v5, v6, |v126|
	v_max_f32_e64 v6, |v108|, |v108|
	v_max3_f32 v2, v2, |v138|, v4
	v_max_f32_e64 v4, |v107|, |v107|
	v_max_f32_e32 v3, v7, v3
	v_max3_f32 v7, |v121|, |v120|, |v119|
	v_max3_f32 v11, |v112|, |v111|, |v110|
	v_max3_f32 v12, |v99|, |v98|, |v97|
	v_max_f32_e32 v4, v6, v4
	v_max3_f32 v6, |v105|, |v104|, |v103|
	v_max3_f32 v13, |v96|, |v95|, |v94|
	v_max3_f32 v8, |v134|, |v133|, |v123|
	v_max3_f32 v9, |v118|, |v117|, |v116|
	v_max3_f32 v3, v3, |v122|, v7
	v_max3_f32 v7, v10, v11, |v109|
	v_max3_f32 v10, |v102|, |v101|, |v100|
	v_max3_f32 v4, v4, |v106|, v6
	v_max3_f32 v6, v12, v13, |v93|
	v_max_f32_e64 v11, |v91|, |v91|
	v_max_f32_e64 v12, |v92|, |v92|
	v_max3_f32 v2, v2, v8, v5
	v_max3_f32 v3, v3, v9, v7
	v_max3_f32 v4, v4, v10, v6
	v_max3_f32 v6, |v89|, |v88|, |v87|
	v_max_f32_e32 v5, v12, v11
	v_max3_f32 v8, |v83|, |v82|, |v81|
	v_max3_f32 v9, |v74|, |v80|, |v79|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v7, |v86|, |v85|, |v84|
	v_max3_f32 v5, v5, |v90|, v6
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, v8, v9, |v78|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v12, 8, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v10, v10 :: v_dual_max_f32 v10, v11, v11
	v_max_f32_e32 v6, v6, v6
	v_max3_f32 v5, v5, v7, v8
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v7, 4, v0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v9 :: v_dual_max_f32 v4, v4, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, v2, v6 :: v_dual_and_b32 v11, 0x80, v0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v6, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v9, v139, 9, 0
	v_and_b32_e32 v10, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b32_e32 v15, 3, v11
	v_lshl_add_u32 v16, v7, 6, 0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v7, 2, v9
	v_lshlrev_b32_e32 v9, 1, v11
	v_lshlrev_b32_e32 v8, 5, v139
	s_barrier
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v6
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v13, v12, 4, v13
	v_add_nc_u32_e32 v11, 0, v11
	v_and_or_b32 v1, 0x680, v1, v8
	v_xor_b32_e32 v14, v8, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v10
	v_add3_u32 v6, v13, v9, v14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v1, v16, v15, v1
	ds_store_b128 v6, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, v1 :: v_dual_mov_b32 v6, v2
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v13, v3 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v14, v4, v4 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v5 :: v_dual_max_f32 v2, v2, v6
	v_dual_max_f32 v5, v13, v13 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v13, v2
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v5 :: v_dual_max_f32 v4, v14, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v14, v4
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v13
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v1, v6
	v_max_f32_e32 v6, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v14, v2 :: v_dual_max_f32 v3, v3, v5
	v_dual_mov_b32 v13, v1 :: v_dual_max_f32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, v1, v13 :: v_dual_max_f32 v2, v2, v14
	v_max_f32_e32 v6, v6, v6
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v13, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v5 :: v_dual_lshlrev_b32 v12, 3, v12
	v_dual_max_f32 v4, v4, v6 :: v_dual_lshlrev_b32 v5, 5, v7
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v7, v139, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v11, v13, v12
.Ltmp39:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v10, v77, v10
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v7, v5, v12
	ds_store_b128 v6, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v7, 4, v76
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[11:14], v5
.Ltmp43:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v5, 63, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 48, v7
	v_or_b32_e32 v18, 16, v7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_max_f32_e32 v3, v13, v13
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 32, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, 0x2b8cbccc, v1
	v_dual_max_f32 v12, 0x2b8cbccc, v12 :: v_dual_max_f32 v19, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v17, v11
	v_rcp_f32_e32 v22, v21
	v_div_scale_f32 v20, vcc_lo, v6, 0x40e00000, v6
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v12
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s34, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v11, v17, 1.0
	v_fmac_f32_e32 v17, v3, v17
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	v_add_co_u32 v15, s0, s34, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v13, v14, v14
	v_fma_f32 v14, -v21, v22, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v22, v14, v22
	v_rcp_f32_e32 v14, v24
	v_mul_f32_e32 v23, v20, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[15:16]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v11, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v3, v17
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[15:16]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v15, -v24, v14, 1.0
	v_fma_f32 v11, -v11, v23, v20
	v_div_scale_f32 v18, s6, v19, 0x40e00000, v19
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v16.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, s7, v12, 0x40e00000, v12
	v_max_f32_e32 v13, 0x2b8cbccc, v13
	v_div_fmas_f32 v11, v11, v17, v23
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v26, v15, v14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v13
	v_div_fixup_f32 v6, v11, 0x40e00000, v6
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v23, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v20, v23, 1.0
	v_fmac_f32_e32 v23, v25, v23
	v_mul_f32_e32 v17, v18, v22
	v_div_scale_f32 v25, s8, v13, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v21, v17, v18
	v_fmac_f32_e32 v17, v11, v22
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v11.l, v6.h
	v_mov_b16_e32 v11.h, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v21, v17, v18
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v24, v26, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v3, v22, v17
	s_mov_b32 vcc_lo, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v6, v6, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v11, v14
	v_mul_f32_e32 v18, v25, v23
	v_div_fixup_f32 v17, v17, 0x40e00000, v19
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v7
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v29, 0xffff0000, v6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v20, v18, v25
	v_fma_f32 v15, -v24, v26, v15
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v17.h
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v18, v11, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v29, v29, v141
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v11, v15, v14, v26
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v15, -v20, v18, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v14, v19
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v11, v11, 0x40e00000, v12
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v12, v15, v23, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v15, null, v29, v29, v140
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v18, 1, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v24, s8, v140, v29, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v15
	v_fma_f32 v20, -v19, v14, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v12, v12, 0x40e00000, v13
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e32 v13.h, v16.h
	v_add3_u32 v3, v17, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v16.l, v12.h
	v_and_b32_e32 v4, 1, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v17, -v15, v21, 1.0
	v_fmac_f32_e32 v14, v20, v14
	v_div_scale_f32 v20, vcc_lo, v141, v29, v141
	v_dual_fmac_f32 v21, v17, v21 :: v_dual_and_b32 v16, 1, v16
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v11, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v13, v20, v14
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v12, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v22, -v19, v13, v20
	v_dual_fmac_f32 v13, v22, v14 :: v_dual_and_b32 v44, 0xffff0000, v11
	v_mul_f32_e32 v22, v24, v21
	v_div_scale_f32 v18, null, v29, v29, v138
	v_div_scale_f32 v23, null, v29, v29, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v19, v13, v20
	v_rcp_f32_e32 v17, v18
	v_fma_f32 v20, -v15, v22, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v16, v23
	v_div_scale_f32 v28, null, v29, v29, v136
	v_div_scale_f32 v30, null, v29, v29, v135
	v_dual_fmac_f32 v22, v20, v21 :: v_dual_and_b32 v25, 0xffff0000, v3
	v_div_fmas_f32 v13, v19, v14, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v26, -v18, v17, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v12, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v27, -v23, v16, 1.0
	v_rcp_f32_e32 v20, v28
	v_rcp_f32_e32 v31, v30
	v_fmac_f32_e32 v17, v26, v17
	v_div_scale_f32 v26, s9, v138, v29, v138
	v_fmac_f32_e32 v16, v27, v16
	v_div_scale_f32 v27, s10, v137, v29, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v19, v26, v17
	v_fma_f32 v14, -v15, v22, v24
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v32, -v28, v20, 1.0
	v_div_scale_f32 v33, null, v29, v29, v123
	v_fma_f32 v15, -v18, v19, v26
	v_div_fmas_f32 v14, v14, v21, v22
	v_fma_f32 v22, -v30, v31, 1.0
	v_mul_f32_e32 v24, v27, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v20, v32, v20 :: v_dual_fmac_f32 v19, v15, v17
	v_div_scale_f32 v21, s8, v136, v29, v136
	v_fmac_f32_e32 v31, v22, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v23, v24, v27
	v_fma_f32 v18, -v18, v19, v26
	v_div_scale_f32 v32, null, v29, v29, v134
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v22, s11, v135, v29, v135
	v_fmac_f32_e32 v24, v15, v16
	v_div_fmas_f32 v15, v18, v17, v19
	v_rcp_f32_e32 v19, v32
	v_mul_f32_e32 v26, v21, v20
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v17, -v23, v24, v27
	v_mul_f32_e32 v23, v22, v31
	v_div_scale_f32 v27, null, v29, v29, v133
	v_fma_f32 v18, -v28, v26, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v16, v17, v16, v24
	v_fma_f32 v17, -v30, v23, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v24, v27
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v26, v18, v20
	v_fma_f32 v18, -v32, v19, 1.0
	v_fmac_f32_e32 v23, v17, v31
	v_div_scale_f32 v39, null, v29, v29, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v28, v26, v21
	v_fmac_f32_e32 v19, v18, v19
	v_div_scale_f32 v28, s9, v134, v29, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v27, v24, 1.0
	v_div_fmas_f32 v18, v21, v20, v26
	v_fma_f32 v20, -v30, v23, v22
	v_rcp_f32_e32 v22, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v21, v28, v19 :: v_dual_fmac_f32 v24, v17, v24
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v26, s8, v133, v29, v133
	v_div_fmas_f32 v20, v20, v31, v23
	v_fma_f32 v23, -v32, v21, v28
	v_div_scale_f32 v30, null, v29, v29, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v33, v22, 1.0
	v_div_fixup_f32 v17, v18, v29, v136
	v_fmac_f32_e32 v21, v23, v19
	v_div_scale_f32 v23, s10, v123, v29, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v22, v34, v22
	v_mul_f32_e32 v31, v26, v24
	v_rcp_f32_e32 v35, v30
	v_div_fixup_f32 v18, v20, v29, v135
	v_fma_f32 v28, -v32, v21, v28
	v_mul_f32_e32 v32, v23, v22
	v_fma_f32 v20, -v27, v31, v26
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v34, null, v29, v29, v131
	v_div_fmas_f32 v19, v28, v19, v21
	v_fma_f32 v21, -v33, v32, v23
	v_fmac_f32_e32 v31, v20, v24
	v_fma_f32 v36, -v30, v35, 1.0
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v28, null, v29, v29, v130
	v_fmac_f32_e32 v32, v21, v22
	v_fma_f32 v20, -v27, v31, v26
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v38, null, v29, v29, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v33, v32, v23
	v_div_fmas_f32 v20, v20, v24, v31
	v_rcp_f32_e32 v24, v28
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, s11, v132, v29, v132
	v_fma_f32 v27, -v34, v37, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v33, null, v29, v29, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v26, v36, v35 :: v_dual_fmac_f32 v37, v27, v37
	v_div_scale_f32 v27, s8, v131, v29, v131
	v_div_fmas_f32 v22, v23, v22, v32
	v_fma_f32 v21, -v30, v26, v36
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v31, v27, v37
	v_rcp_f32_e32 v32, v33
	v_div_fixup_f32 v13, v13, v29, v141
	v_fmac_f32_e32 v26, v21, v35
	v_fma_f32 v21, -v28, v24, 1.0
	v_div_fixup_f32 v14, v14, v29, v140
	v_div_fixup_f32 v15, v15, v29, v138
	v_div_fixup_f32 v16, v16, v29, v137
	v_fma_f32 v23, -v30, v26, v36
	v_fma_f32 v30, -v34, v31, v27
	v_fmac_f32_e32 v24, v21, v24
	v_div_scale_f32 v36, s9, v130, v29, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v23, v23, v35, v26
	v_fmac_f32_e32 v31, v30, v37
	v_div_fixup_f32 v21, v22, v29, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v30, v36, v24
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v22, v23, v29, v132
	v_fma_f32 v23, -v34, v31, v27
	v_rcp_f32_e32 v26, v38
	v_fma_f32 v35, -v33, v32, 1.0
	v_fma_f32 v27, -v28, v30, v36
	v_div_scale_f32 v34, s10, v129, v29, v129
	v_div_fmas_f32 v23, v23, v37, v31
	v_rcp_f32_e32 v31, v39
	v_div_scale_f32 v37, null, v29, v29, v126
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v19, v19, v29, v134
	v_div_fixup_f32 v20, v20, v29, v133
	v_rcp_f32_e32 v41, v37
	v_fmac_f32_e32 v30, v27, v24
	v_div_fixup_f32 v23, v23, v29, v131
	v_div_scale_f32 v48, null, v44, v44, v117
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v42, -v39, v31, 1.0
	v_fmac_f32_e32 v32, v35, v32
	v_fma_f32 v35, -v38, v26, 1.0
	v_fma_f32 v28, -v28, v30, v36
	v_div_scale_f32 v49, null, v44, v44, v116
	v_fmac_f32_e32 v31, v42, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v34, v32 :: v_dual_fmac_f32 v26, v35, v26
	v_div_scale_f32 v35, s8, v128, v29, v128
	v_div_scale_f32 v42, null, v44, v44, v124
	v_fma_f32 v36, -v33, v27, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v35, v26
	v_div_scale_f32 v55, null, v44, v44, v110
	v_div_scale_f32 v57, null, v44, v44, v109
	v_fmac_f32_e32 v27, v36, v32
	v_fma_f32 v36, -v37, v41, 1.0
	v_div_scale_f32 v59, null, v25, v25, v106
	v_div_scale_f32 v64, null, v25, v25, v100
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v36, v41
	v_div_fmas_f32 v24, v28, v24, v30
	v_fma_f32 v28, -v38, v40, v35
	v_fma_f32 v33, -v33, v27, v34
	v_div_scale_f32 v36, null, v44, v44, v125
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v40, v28, v26
	v_div_scale_f32 v30, s9, v127, v29, v127
	v_div_fmas_f32 v27, v33, v32, v27
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v32, -v38, v40, v35
	v_rcp_f32_e32 v35, v36
	v_mul_f32_e32 v28, v30, v31
	v_div_scale_f32 v34, s11, v126, v29, v126
	v_div_fixup_f32 v24, v24, v29, v130
	v_rcp_f32_e32 v66, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v39, v28, v30
	v_div_scale_f32 v67, null, v25, v25, v97
	v_div_scale_f32 v68, null, v25, v25, v96
	v_fma_f32 v43, -v36, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v28, v33, v31
	v_rcp_f32_e32 v33, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v35, v43, v35
	v_div_fmas_f32 v32, v32, v26, v40
	v_div_fixup_f32 v26, v27, v29, v129
	v_fma_f32 v30, -v39, v28, v30
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v27, v32, v29, v128
	v_div_scale_f32 v32, s8, v125, v44, v125
	v_mul_f32_e32 v38, v34, v41
	v_div_fmas_f32 v28, v30, v31, v28
	v_fma_f32 v39, -v42, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v31, v32, v35
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v40, -v37, v38, v34
	v_div_fixup_f32 v28, v28, v29, v127
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v39, null, v44, v44, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v40, v41
	v_div_scale_f32 v40, null, v44, v44, v122
	v_rcp_f32_e32 v45, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v30, -v37, v38, v34
	v_rcp_f32_e32 v34, v40
	v_div_scale_f32 v37, s9, v124, v44, v124
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v30, v30, v41, v38
	v_fma_f32 v38, -v36, v31, v32
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v46, -v39, v45, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v29, v30, v29, v126
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v40, v34, 1.0
	v_mul_f32_e32 v41, v37, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v34, v43, v34
	v_div_scale_f32 v43, null, v44, v44, v120
	v_fmac_f32_e32 v31, v38, v35
	v_fma_f32 v30, -v42, v41, v37
	v_div_scale_f32 v38, s10, v122, v44, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v32, -v36, v31, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v30, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v30, v32, v35, v31
	v_fma_f32 v31, -v42, v41, v37
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v42, null, v44, v44, v119
	v_fma_f32 v37, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v31, v33, v41
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v41, v42
	v_div_fixup_f32 v30, v30, v44, v125
	v_fmac_f32_e32 v47, v37, v47
	v_div_scale_f32 v37, s8, v120, v44, v120
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, s11, v121, v44, v121
	v_div_fixup_f32 v31, v31, v44, v124
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v35, v46, v45
	v_mul_f32_e32 v36, v38, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v32, -v40, v36, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v32, v34
	v_fma_f32 v33, -v40, v36, v38
	v_mul_f32_e32 v38, v37, v47
	v_div_scale_f32 v40, null, v44, v44, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v34, v36
	v_fma_f32 v36, -v43, v38, v37
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v36, v47
	v_fma_f32 v32, -v39, v35, v46
	v_rcp_f32_e32 v36, v48
	v_fmac_f32_e32 v35, v32, v45
	v_fma_f32 v32, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v39, v35, v46
	v_rcp_f32_e32 v39, v40
	v_div_scale_f32 v46, s9, v119, v44, v119
	v_div_fmas_f32 v34, v34, v45, v35
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v40, v39, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_fma_f32 v45, -v48, v36, 1.0
	v_fmac_f32_e32 v41, v32, v41
	v_div_fixup_f32 v32, v33, v44, v122
	v_div_fixup_f32 v33, v34, v44, v121
	v_fma_f32 v34, -v43, v38, v37
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, s8, v117, v44, v117
	v_mul_f32_e32 v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v47, v38
	v_rcp_f32_e32 v38, v49
	v_mul_f32_e32 v50, v45, v36
	v_div_scale_f32 v43, s10, v118, v44, v118
	v_fma_f32 v37, -v42, v35, v46
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v47, null, v44, v44, v115
	v_div_fixup_f32 v34, v34, v44, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v37, v41
	v_fma_f32 v52, -v49, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v42, v35, v46
	v_fmac_f32_e32 v38, v52, v38
	v_div_scale_f32 v52, null, v44, v44, v113
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v42, v41, v35
	v_fma_f32 v41, -v48, v50, v45
	v_mul_f32_e32 v37, v43, v39
	v_div_scale_f32 v42, s9, v116, v44, v116
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v50, v41, v36
	v_fma_f32 v46, -v40, v37, v43
	v_mul_f32_e32 v41, v42, v38
	v_div_fixup_f32 v35, v35, v44, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v46, v39
	v_fma_f32 v46, -v47, v51, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v40, v37, v43
	v_div_scale_f32 v43, s11, v115, v44, v115
	v_div_fmas_f32 v37, v40, v39, v37
	v_fma_f32 v40, -v49, v41, v42
	v_fma_f32 v39, -v48, v50, v45
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v40, v38
	v_rcp_f32_e32 v40, v52
	v_div_fmas_f32 v39, v39, v36, v50
	v_div_fixup_f32 v36, v37, v44, v118
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v37, v39, v44, v117
	v_fma_f32 v39, -v49, v41, v42
	v_div_scale_f32 v42, s8, v114, v44, v114
	v_fma_f32 v49, -v52, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v44, v44, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v49
	v_fma_f32 v56, -v49, v54, 1.0
	v_fmac_f32_e32 v51, v46, v51
	v_div_scale_f32 v46, null, v44, v44, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v56, v54
	v_mul_f32_e32 v48, v43, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v46
	v_fma_f32 v50, -v47, v48, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v48, v50, v51
	v_div_scale_f32 v50, null, v44, v44, v112
	v_div_fmas_f32 v38, v39, v38, v41
	v_fma_f32 v53, -v46, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v47, v48, v43
	v_rcp_f32_e32 v43, v50
	v_div_scale_f32 v47, s9, v113, v44, v113
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v45, v53, v45
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v56, s11, v111, v44, v111
	v_div_fmas_f32 v39, v39, v51, v48
	v_mul_f32_e32 v51, v47, v40
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v50, v43, 1.0
	v_div_fixup_f32 v38, v38, v44, v116
	v_div_fixup_f32 v39, v39, v44, v115
	v_fmac_f32_e32 v43, v53, v43
	v_mul_f32_e32 v41, v42, v45
	v_div_scale_f32 v53, s10, v112, v44, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v48, -v46, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v48, v45
	v_fma_f32 v48, -v52, v51, v47
	v_fma_f32 v42, -v46, v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v48, v40
	v_rcp_f32_e32 v48, v55
	v_mul_f32_e32 v46, v53, v43
	v_div_fmas_f32 v41, v42, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v52, v51, v47
	v_mul_f32_e32 v47, v56, v54
	v_fma_f32 v45, -v50, v46, v53
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v42, v42, v40, v51
	v_fma_f32 v52, -v55, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v46, v45, v43
	v_fma_f32 v45, -v49, v47, v56
	v_div_fixup_f32 v40, v41, v44, v114
	v_div_fixup_f32 v41, v42, v44, v113
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s8, v110, v44, v110
	v_fma_f32 v42, -v50, v46, v53
	v_fmac_f32_e32 v47, v45, v54
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v52, v48
	v_rcp_f32_e32 v51, v57
	v_div_fmas_f32 v42, v42, v43, v46
	v_fma_f32 v43, -v49, v47, v56
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v46, -v55, v45, v52
	v_div_scale_f32 v53, null, v25, v25, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v43, v43, v54, v47
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v45, v46, v48
	v_div_scale_f32 v56, null, v25, v25, v107
	v_fma_f32 v50, -v57, v51, 1.0
	v_rcp_f32_e32 v49, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v55, v45, v52
	v_rcp_f32_e32 v46, v56
	v_div_fixup_f32 v42, v42, v44, v112
	v_fmac_f32_e32 v51, v50, v51
	v_div_scale_f32 v50, s9, v109, v44, v109
	v_div_fmas_f32 v45, v52, v48, v45
	v_rcp_f32_e32 v52, v59
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v54, -v53, v49, 1.0
	v_div_fixup_f32 v43, v43, v44, v111
	v_fma_f32 v58, -v56, v46, 1.0
	v_div_fixup_f32 v45, v45, v44, v110
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v49, v54, v49
	v_div_scale_f32 v54, s10, v108, v25, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v59, v52, 1.0
	v_fmac_f32_e32 v46, v58, v46
	v_div_scale_f32 v58, null, v25, v25, v105
	v_mul_f32_e32 v48, v54, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v62, v52
	v_mul_f32_e32 v47, v50, v51
	v_rcp_f32_e32 v61, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v57, v47, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v47, v55, v51
	v_div_scale_f32 v55, s8, v107, v25, v107
	v_fma_f32 v50, -v57, v47, v50
	v_fma_f32 v57, -v53, v48, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v60, v55, v46
	v_div_fmas_f32 v47, v50, v51, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v57, v49
	v_fma_f32 v50, -v56, v60, v55
	v_div_scale_f32 v51, s9, v106, v25, v106
	v_fma_f32 v57, -v58, v61, 1.0
	v_div_fixup_f32 v44, v47, v44, v109
	v_fma_f32 v47, -v53, v48, v54
	v_fmac_f32_e32 v60, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v50, v51, v52 :: v_dual_fmac_f32 v61, v57, v61
	v_div_scale_f32 v53, s11, v105, v25, v105
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v57, null, v25, v25, v103
	v_div_fmas_f32 v47, v47, v49, v48
	v_fma_f32 v48, -v56, v60, v55
	v_fma_f32 v49, -v59, v50, v51
	v_mul_f32_e32 v56, v53, v61
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v54, null, v25, v25, v104
	v_div_fmas_f32 v48, v48, v46, v60
	v_fmac_f32_e32 v50, v49, v52
	v_fma_f32 v49, -v58, v56, v53
	v_rcp_f32_e32 v60, v57
	v_div_fixup_f32 v46, v47, v25, v108
	v_div_fixup_f32 v47, v48, v25, v107
	v_fma_f32 v48, -v59, v50, v51
	v_fmac_f32_e32 v56, v49, v61
	v_div_scale_f32 v59, null, v25, v25, v102
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v55, v54
	v_div_fmas_f32 v48, v48, v52, v50
	v_fma_f32 v50, -v58, v56, v53
	v_rcp_f32_e32 v53, v59
	v_fma_f32 v49, -v57, v60, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v58, s9, v103, v25, v103
	v_div_scale_f32 v51, s8, v104, v25, v104
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v62, -v54, v55, 1.0
	v_fmac_f32_e32 v60, v49, v60
	v_div_fmas_f32 v49, v50, v61, v56
	v_fma_f32 v61, -v59, v53, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v48, v48, v25, v106
	v_mul_f32_e32 v56, v58, v60
	v_div_fixup_f32 v49, v49, v25, v105
	v_fmac_f32_e32 v53, v61, v53
	v_div_scale_f32 v61, s10, v102, v25, v102
	v_fmac_f32_e32 v55, v62, v55
	v_div_scale_f32 v62, null, v25, v25, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v52, v51, v55
	v_rcp_f32_e32 v63, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v50, -v54, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v52, v50, v55
	v_fma_f32 v50, -v57, v56, v58
	v_fma_f32 v65, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v54, v52, v51
	v_fmac_f32_e32 v56, v50, v60
	v_mul_f32_e32 v54, v61, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v51, v55, v52
	v_fma_f32 v51, -v57, v56, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v52, -v59, v54, v61
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v65, s11, v101, v25, v101
	v_div_scale_f32 v58, null, v25, v25, v99
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v54, v52, v53
	v_div_fmas_f32 v51, v51, v60, v56
	v_rcp_f32_e32 v56, v58
	v_mul_f32_e32 v55, v65, v63
	v_fma_f32 v57, -v64, v66, 1.0
	v_fma_f32 v59, -v59, v54, v61
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v61, null, v25, v25, v98
	v_fma_f32 v52, -v62, v55, v65
	v_fmac_f32_e32 v66, v57, v66
	v_div_scale_f32 v57, s8, v100, v25, v100
	v_div_fmas_f32 v53, v59, v53, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v55, v52, v63
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v52, -v58, v56, 1.0
	v_div_fixup_f32 v50, v50, v25, v104
	v_div_fixup_f32 v51, v51, v25, v103
	v_fma_f32 v54, -v62, v55, v65
	v_div_scale_f32 v65, s9, v99, v25, v99
	v_fmac_f32_e32 v56, v52, v56
	v_rcp_f32_e32 v62, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v54, v54, v63, v55
	v_rcp_f32_e32 v55, v67
	v_mul_f32_e32 v60, v57, v66
	v_div_fixup_f32 v52, v53, v25, v102
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v53, v54, v25, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v64, v60, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v63, -v61, v62, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v60, v59, v66 :: v_dual_mul_f32 v59, v65, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v64, v60, v57
	v_fma_f32 v57, -v58, v59, v65
	v_fma_f32 v64, -v67, v55, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v57, v56
	v_div_fmas_f32 v54, v54, v66, v60
	v_rcp_f32_e32 v60, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v64, v55
	v_div_scale_f32 v64, s8, v97, v25, v97
	v_fmac_f32_e32 v62, v63, v62
	v_fma_f32 v58, -v58, v59, v65
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v69, v64, v55
	v_div_scale_f32 v63, s10, v98, v25, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v68, v60, 1.0
	v_div_fmas_f32 v56, v58, v56, v59
	v_fma_f32 v58, -v67, v69, v64
	v_div_scale_f32 v59, s9, v96, v25, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v66, null, v25, v25, v95
	v_fmac_f32_e32 v69, v58, v55
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v58, v59, v60
	v_mul_f32_e32 v57, v63, v62
	v_rcp_f32_e32 v70, v66
	v_div_scale_f32 v71, null, v25, v25, v93
	v_div_fixup_f32 v54, v54, v25, v100
	v_fma_f32 v65, -v61, v57, v63
	v_div_fixup_f32 v56, v56, v25, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v57, v65, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v66, v70, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v61, v57, v63
	v_div_scale_f32 v63, s11, v95, v25, v95
	v_div_fmas_f32 v57, v61, v62, v57
	v_fma_f32 v61, -v67, v69, v64
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v62, -v68, v58, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v57, v57, v25, v98
	v_div_fmas_f32 v55, v61, v55, v69
	v_rcp_f32_e32 v61, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v62, v60
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v55, v25, v97
	v_fma_f32 v59, -v68, v58, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v68, -v71, v61, 1.0
	v_fmac_f32_e32 v70, v65, v70
	v_div_scale_f32 v65, null, v25, v25, v94
	v_div_fmas_f32 v58, v59, v60, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v61, v68, v61
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v64, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v58, v58, v25, v96
	v_div_scale_f32 v96, null, v12, v12, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v98, v96
	v_fma_f32 v69, -v65, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v67, v63, v70 :: v_dual_fmac_f32 v64, v69, v64
	v_fma_f32 v62, -v66, v67, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v67, v62, v70
	v_div_scale_f32 v62, s8, v94, v25, v94
	v_fma_f32 v59, -v66, v67, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v62, v64
	v_div_scale_f32 v63, null, v12, v12, v92
	v_div_scale_f32 v66, s9, v93, v25, v93
	v_div_fmas_f32 v59, v59, v70, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v63
	v_fma_f32 v68, -v65, v60, v62
	v_mul_f32_e32 v69, v66, v61
	v_div_scale_f32 v70, null, v12, v12, v91
	v_div_fixup_f32 v59, v59, v25, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v68, v64
	v_fma_f32 v68, -v71, v69, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v72, v70
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v73, -v63, v67, 1.0
	v_fma_f32 v62, -v65, v60, v62
	v_div_scale_f32 v65, null, v12, v12, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v73, v67
	v_div_fmas_f32 v60, v62, v64, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v73, v65
	v_fma_f32 v95, -v70, v72, 1.0
	v_fmac_f32_e32 v69, v68, v61
	v_div_scale_f32 v68, s10, v92, v12, v92
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v72, v95, v72
	v_fma_f32 v62, -v71, v69, v66
	v_div_scale_f32 v66, s8, v91, v12, v91
	v_mul_f32_e32 v64, v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v65, v73, 1.0
	v_div_fmas_f32 v61, v62, v61, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v97, v66, v72
	v_div_fixup_f32 v60, v60, v25, v94
	v_fma_f32 v95, -v63, v64, v68
	v_fmac_f32_e32 v73, v71, v73
	v_div_scale_f32 v71, s11, v90, v12, v90
	v_fma_f32 v62, -v70, v97, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v95, v67
	v_div_fixup_f32 v25, v61, v25, v93
	v_mul_f32_e32 v69, v71, v73
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v62, v72
	v_fma_f32 v61, -v63, v64, v68
	v_fma_f32 v63, -v96, v98, 1.0
	v_fma_f32 v62, -v65, v69, v71
	v_div_scale_f32 v68, null, v12, v12, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v63, v98
	v_div_scale_f32 v63, s9, v89, v12, v89
	v_fmac_f32_e32 v69, v62, v73
	v_rcp_f32_e32 v62, v68
	v_div_fmas_f32 v61, v61, v67, v64
	v_fma_f32 v64, -v70, v97, v66
	v_mul_f32_e32 v66, v63, v98
	v_fma_f32 v65, -v65, v69, v71
	v_div_scale_f32 v67, null, v12, v12, v87
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v96, v66, v63
	v_div_fmas_f32 v64, v64, v72, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v70, -v68, v62, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v61, v61, v12, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v64, v64, v12, v91
	v_fmac_f32_e32 v62, v70, v62
	v_div_fmas_f32 v65, v65, v73, v69
	v_rcp_f32_e32 v69, v67
	v_div_scale_f32 v70, s8, v88, v12, v88
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v65, v65, v12, v90
	v_div_scale_f32 v73, null, v12, v12, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v67, v69, 1.0
	v_fmac_f32_e32 v66, v71, v98
	v_rcp_f32_e32 v91, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v72, v69
	v_fma_f32 v63, -v96, v66, v63
	v_div_scale_f32 v72, s10, v87, v12, v87
	v_mul_f32_e32 v71, v70, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v63, v98, v66
	v_mul_f32_e32 v66, v72, v69
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v68, v71, v70
	v_div_fixup_f32 v63, v63, v12, v89
	v_fma_f32 v89, -v73, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v90, v62
	v_div_scale_f32 v90, null, v12, v12, v85
	v_fmac_f32_e32 v91, v89, v91
	v_div_scale_f32 v89, null, v12, v12, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v68, v71, v70
	v_fma_f32 v70, -v67, v66, v72
	v_rcp_f32_e32 v92, v90
	v_rcp_f32_e32 v94, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v62, v68, v62, v71
	v_div_scale_f32 v68, null, v12, v12, v84
	v_fmac_f32_e32 v66, v70, v69
	v_div_scale_f32 v70, s8, v86, v12, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v71, v68
	v_div_fixup_f32 v62, v62, v12, v88
	v_fma_f32 v88, -v90, v92, 1.0
	v_fma_f32 v67, -v67, v66, v72
	v_mul_f32_e32 v72, v70, v91
	v_fma_f32 v96, -v89, v94, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v88, s9, v85, v12, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v68, v71, 1.0
	v_div_fmas_f32 v66, v67, v69, v66
	v_fma_f32 v67, -v73, v72, v70
	v_mul_f32_e32 v69, v88, v92
	v_div_scale_f32 v95, s10, v84, v12, v84
	v_dual_fmac_f32 v71, v93, v71 :: v_dual_fmac_f32 v94, v96, v94
	v_div_scale_f32 v93, null, v12, v12, v82
	v_fmac_f32_e32 v72, v67, v91
	v_fma_f32 v67, -v90, v69, v88
	v_div_scale_f32 v96, s11, v83, v12, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v97, v93
	v_mul_f32_e32 v98, v95, v71
	v_div_fixup_f32 v66, v66, v12, v87
	v_fma_f32 v70, -v73, v72, v70
	v_fmac_f32_e32 v69, v67, v92
	v_mul_f32_e32 v73, v96, v94
	v_fma_f32 v67, -v68, v98, v95
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v91, v72
	v_fma_f32 v87, -v93, v97, 1.0
	v_fma_f32 v72, -v90, v69, v88
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v12, v12, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v97, v87, v97
	v_fmac_f32_e32 v98, v67, v71
	v_fma_f32 v67, -v89, v73, v96
	v_div_scale_f32 v87, s8, v82, v12, v82
	v_div_fmas_f32 v69, v72, v92, v69
	v_div_scale_f32 v72, null, v12, v12, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v67, v94
	v_mul_f32_e32 v67, v87, v97
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v69, v69, v12, v85
	v_div_scale_f32 v85, null, v12, v12, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v93, v67, v87
	v_div_fixup_f32 v70, v70, v12, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v88, v97
	v_fma_f32 v68, -v68, v98, v95
	v_rcp_f32_e32 v88, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v68, v68, v71, v98
	v_fma_f32 v71, -v89, v73, v96
	v_rcp_f32_e32 v89, v72
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v68, v68, v12, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v85, v88, 1.0
	v_div_fmas_f32 v71, v71, v94, v73
	v_fma_f32 v73, -v93, v67, v87
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v88, v95, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v72, v89, 1.0
	v_div_fixup_f32 v71, v71, v12, v83
	v_div_scale_f32 v83, null, v12, v12, v74
	v_div_scale_f32 v95, s10, v79, v12, v79
	v_fmac_f32_e32 v89, v84, v89
	v_div_scale_f32 v84, null, v12, v12, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v99, v95, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v84, v87, 1.0
	v_fmac_f32_e32 v87, v92, v87
	v_div_scale_f32 v92, s9, v80, v12, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v98, v92, v87
	v_div_fmas_f32 v67, v73, v97, v67
	v_div_scale_f32 v86, vcc_lo, v81, v12, v81
	v_rcp_f32_e32 v73, v83
	v_fma_f32 v97, -v91, v93, 1.0
	v_div_fixup_f32 v67, v67, v12, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v90, v86, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v72, v90, v86
	v_fma_f32 v82, -v83, v73, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v94, v89
	v_fmac_f32_e32 v73, v82, v73
	v_div_scale_f32 v82, s8, v74, v12, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v72, v90, v86
	v_fma_f32 v86, -v84, v98, v92
	v_mul_f32_e32 v96, v82, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v72, v89, v90
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v94, -v83, v96, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v72, v72, v12, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v94, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s11, v78, v12, v78
	v_fma_f32 v94, -v85, v99, v95
	v_fma_f32 v82, -v83, v96, v82
	v_fmac_f32_e32 v98, v86, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v100, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v94, v88
	v_div_fmas_f32 v73, v82, v73, v96
	v_fma_f32 v82, -v84, v98, v92
	v_fma_f32 v83, -v91, v100, v97
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v66, v66, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v87, v98
	v_fmac_f32_e32 v100, v83, v93
	v_fma_f32 v83, -v85, v99, v95
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v73, v73, v12, v74
	v_fma_f32 v84, -v91, v100, v97
	v_div_fmas_f32 v83, v83, v88, v99
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v74, v82, v12, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v93, v100
	v_div_fixup_f32 v79, v83, v12, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v12, v84, v12, v78
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v79
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v78, v78, s8, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v79, v25
	v_cvt_i32_f32_e32 v80, v62
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_and_b32_e32 v62, 15, v65
	v_and_b32_e32 v65, 15, v66
	v_and_b32_e32 v66, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v70, 10, v0
	v_and_b32_e32 v84, 16, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v81, v67
	v_cvt_i32_f32_e32 v82, v78
	v_and_b32_e32 v25, 15, v27
	v_and_b32_e32 v27, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v41
	v_and_b32_e32 v41, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v48, 15, v50
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v52, 15, v54
	v_and_b32_e32 v54, 15, v57
	v_and_b32_e32 v57, 15, v59
	v_and_b32_e32 v59, 15, v79
	v_and_b32_e32 v67, 15, v69
	v_and_b32_e32 v69, 15, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v78, 0x1800, v70
	v_lshlrev_b32_e32 v79, 6, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v83, v12
	v_and_b32_e32 v12, 15, v13
	v_and_b32_e32 v13, 15, v14
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v8, 0x1b00, v72, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v22
	v_and_b32_e32 v22, 15, v23
	v_and_b32_e32 v23, 15, v24
	v_and_b32_e32 v24, 15, v26
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v28, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v38, 15, v40
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v42, 15, v45
	v_and_b32_e32 v45, 15, v47
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v51, 15, v53
	v_and_b32_e32 v53, 15, v56
	v_and_b32_e32 v56, 15, v58
	v_and_b32_e32 v58, 15, v60
	v_and_b32_e32 v60, 15, v61
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v64, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v80, 0, v78, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v63, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v8, v8, v76, 0
	v_add3_u32 v9, v80, v10, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v55
	v_and_b32_e32 v68, 15, v68
	v_and_b32_e32 v70, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[12:15]
	ds_store_b128 v9, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v8
	ds_load_b128 v[20:23], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[28:31]
	ds_store_b128 v9, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v8
	ds_load_b128 v[36:39], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[44:47]
	ds_store_b128 v9, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v8
	ds_load_b128 v[52:55], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[60:63]
	ds_store_b128 v9, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v8
	ds_load_b128 v[68:71], v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[16:19]
	ds_store_b128 v9, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v8
	ds_load_b128 v[24:27], v8 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v74, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[32:35]
	ds_store_b128 v9, v[40:43] offset:512
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v8
	ds_load_b128 v[40:43], v8 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_and_b32_e32 v79, 15, v82
	v_and_b32_e32 v80, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v73
	v_and_b32_e32 v78, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v9, v[48:51]
	ds_store_b128 v9, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v8
	ds_load_b128 v[56:59], v8 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v25, v39, 4, v31
	v_lshl_or_b32 v31, v53, 4, v45
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v45, 3, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v9, v[64:67]
	ds_store_b128 v9, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v8
	ds_load_b128 v[76:79], v8 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, s34, v7
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s41, 7, v45
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v10, v22, 4, v14
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v12
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 32, v12
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v9, v21, 4, v13
	v_lshl_or_b32 v21, v24, 4, v16
	v_lshl_or_b32 v18, v26, 4, v18
	v_lshl_or_b32 v19, v27, 4, v19
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 48, v12
	v_mad_u64_u32 v[12:13], null, v12, s8, v[7:8]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[7:8]
	v_mad_u64_u32 v[14:15], null, v15, s8, v[7:8]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v22, v36, 4, v28
	v_lshl_or_b32 v23, v37, 4, v29
	v_lshl_or_b32 v26, v40, 4, v32
	v_lshl_or_b32 v27, v41, 4, v33
	v_lshl_or_b32 v28, v42, 4, v34
	v_lshl_or_b32 v29, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[15:16], null, v16, s8, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v10.l
	v_lshlrev_b16 v6.l, 8, v9.l
	v_and_b16 v7.l, 0xff, v8.l
	v_lshlrev_b16 v7.h, 8, v19.l
	v_and_b16 v8.l, 0xff, v18.l
	v_lshlrev_b16 v8.h, 8, v17.l
	v_and_b16 v9.l, 0xff, v21.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v38, 4, v30
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	v_lshl_or_b32 v36, v58, 4, v50
	v_lshl_or_b32 v37, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v4.l, v3.l
	v_or_b16 v16.l, v7.l, v6.l
	v_or_b16 v17.h, v8.l, v7.h
	v_or_b16 v17.l, v9.l, v8.h
	v_cndmask_b32_e32 v10, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v7.h, 8, v29.l
	v_and_b16 v8.l, 0xff, v28.l
	v_lshlrev_b16 v8.h, 8, v27.l
	v_and_b16 v9.l, 0xff, v26.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v52, 4, v44
	v_lshl_or_b32 v32, v54, 4, v46
	v_lshl_or_b32 v33, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v76, 4, v64
	v_lshl_or_b32 v43, v77, 4, v65
	v_lshl_or_b32 v44, v78, 4, v66
	v_lshl_or_b32 v46, v79, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v25.l
	v_and_b16 v4.l, 0xff, v24.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v7.l, 0xff, v22.l
	buffer_store_b64 v[16:17], v10, s[8:11], 0 offen
	v_or_b16 v17.h, v8.l, v7.h
	v_or_b16 v17.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v37.l
	v_and_b16 v8.l, 0xff, v36.l
	v_lshlrev_b16 v8.h, 8, v35.l
	v_and_b16 v9.l, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v68, 4, v60
	v_lshl_or_b32 v39, v69, 4, v61
	v_lshl_or_b32 v40, v70, 4, v62
	v_lshl_or_b32 v41, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v4.l, v3.l
	v_or_b16 v16.l, v7.l, v6.l
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	v_lshlrev_b16 v3.l, 8, v33.l
	v_and_b16 v4.l, 0xff, v32.l
	v_lshlrev_b16 v6.l, 8, v31.l
	v_and_b16 v7.l, 0xff, v30.l
	v_or_b16 v13.h, v8.l, v7.h
	v_or_b16 v13.l, v9.l, v8.h
	v_lshlrev_b16 v7.h, 8, v46.l
	v_and_b16 v8.l, 0xff, v44.l
	v_lshlrev_b16 v8.h, 8, v43.l
	v_and_b16 v9.l, 0xff, v42.l
	buffer_store_b64 v[16:17], v10, s[8:11], 0 offen
	v_or_b16 v12.h, v4.l, v3.l
	v_or_b16 v12.l, v7.l, v6.l
	v_lshlrev_b16 v3.l, 8, v41.l
	v_and_b16 v4.l, 0xff, v40.l
	v_lshlrev_b16 v6.l, 8, v39.l
	v_and_b16 v7.l, 0xff, v38.l
	v_or_b16 v17.h, v8.l, v7.h
	v_or_b16 v17.l, v9.l, v8.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v84
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.h, v4.l, v3.l
	v_cndmask_b32_e32 v10, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v16.l, v7.l, v6.l
	v_dual_cndmask_b32 v7, 0x80000000, v15 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[12:13], v10, s[8:11], 0 offen
	buffer_store_b64 v[16:17], v7, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v45
	v_mov_b16_e32 v4.l, v11.h
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v6, v9, v8, v45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v7, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s41, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_next_free_vgpr 197
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 197
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14204
; TotalNumSgprs: 46
; NumVgprs: 197
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 197
; Occupancy: 7
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     197
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
