	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v165, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v0, 1, v165
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 24
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s48, s13, s15
	s_sub_i32 s33, s48, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[12:13], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s12
	s_addc_u32 s3, s5, s13
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s4, s6, s12
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[38:39], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_addc_u32 s5, s7, s13
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s12
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[36:37], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s3, s9, s13
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s12
	s_addc_u32 s5, s11, s13
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s7, s28, 1
	s_mov_b32 s6, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s29, 0
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s39, s38, s7
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v14, s39 :: v_dual_lshlrev_b32 v1, 1, v165
	v_dual_mov_b32 v3, s36 :: v_dual_and_b32 v2, 0x80, v165
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr14
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x40
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[30:31], s[2:3], 0x0
	s_load_b64 s[34:35], s[4:5], 0x0
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v166, 15, v165
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v142, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v165
	s_load_b128 s[24:27], s[0:1], 0x0
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s37, 0, s0
	v_add_co_u32 v4, vcc_lo, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e64 s0, s[30:31], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[34:35], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[34:35], v[6:7]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s41, s0, s8
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s0, s38, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[34:35], v[2:3]
	v_bfe_i32 v2, v165, 7, 1
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_or_b32 s0, s0, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s42, s1, s9
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_mul_i32 s0, s28, s0
	s_lshl_b32 s1, s48, 8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_and_b32_e32 v3, 0x7f, v165
	v_and_b32_e32 v4, 24, v0
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add3_u32 v7, s0, s1, v18
	s_lshl_b32 s0, s15, 8
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v165
	v_xor_b32_e32 v0, v2, v3
	v_lshl_or_b32 v238, v166, 5, v4
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_subrev_nc_u32_e32 v7, s0, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[30:31], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[34:35], v[10:11]
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_and_b32_e32 v161, 31, v165
	v_xor_b32_e32 v2, 0x110, v0
	v_xor_b32_e32 v4, 16, v238
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v10, 0xf8, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[30:31], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[34:35], v[12:13]
	v_dual_mov_b32 v65, v1 :: v_dual_add_nc_u32 v240, 0, v2
	v_dual_mov_b32 v67, v1 :: v_dual_add_nc_u32 v242, 0, v4
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v239, v19, 4, v238
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v19, v1
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v11, 0xf0, v7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v165, off offset:172
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v10, 0xe8, v7
	scratch_store_b64 off, v[12:13], off offset:4 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	scratch_store_b32 off, v166, off offset:176 ; 4-byte Folded Spill
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v30, v1
	scratch_store_b64 off, v[11:12], off offset:12 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xe0, v7
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v10, 0xd8, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[34:35], v[8:9]
	v_xor_b32_e32 v9, 24, v239
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	scratch_store_b64 off, v[12:13], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[30:31], v[14:15]
	v_dual_mov_b32 v71, v1 :: v_dual_add_nc_u32 v246, 0, v9
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v31, v1
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[34:35], v[14:15]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	scratch_store_b64 off, v[11:12], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xd0, v7
	v_add_nc_u32_e32 v10, 0xc8, v7
	v_add_nc_u32_e32 v129, s36, v18
	v_xor_b32_e32 v8, 16, v239
	v_mov_b32_e32 v21, v1
	v_xor_b32_e32 v5, 24, v238
	scratch_store_b64 off, v[12:13], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v33, v1
	v_dual_mov_b32 v68, v1 :: v_dual_add_nc_u32 v245, 0, v8
	v_mov_b32_e32 v8, v1
	v_add_nc_u32_e32 v136, 56, v129
	scratch_store_b64 off, v[11:12], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xc0, v7
	v_add_nc_u32_e32 v10, 0xb8, v7
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v135, 48, v129
	v_add_nc_u32_e32 v134, 40, v129
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v133, 32, v129
	scratch_store_b64 off, v[12:13], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_mov_b32_e32 v36, v1
	v_dual_mov_b32 v35, v1 :: v_dual_add_nc_u32 v132, 24, v129
	v_add_nc_u32_e32 v131, 16, v129
	v_add_nc_u32_e32 v130, 8, v129
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[30:31], v[16:17]
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[11:12], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xb0, v7
	v_add_nc_u32_e32 v10, 0xa8, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[34:35], v[16:17]
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v37, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b64 off, v[12:13], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_xor_b32_e32 v3, 8, v238
	v_xor_b32_e32 v6, 8, v239
	v_dual_mov_b32 v66, v1 :: v_dual_add_nc_u32 v243, 0, v5
	v_mov_b32_e32 v5, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v241, 0, v3
	scratch_store_b64 off, v[11:12], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0xa0, v7
	v_add_nc_u32_e32 v10, 0x98, v7
	v_mov_b32_e32 v40, v1
	v_dual_mov_b32 v39, v1 :: v_dual_add_nc_u32 v244, 0, v6
	v_mov_b32_e32 v69, v1
	scratch_store_b64 off, v[12:13], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v82, v1
	v_mov_b32_e32 v84, v1
	v_mov_b32_e32 v86, v1
	scratch_store_b64 off, v[11:12], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x90, v7
	v_add_nc_u32_e32 v10, 0x88, v7
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v87, v1
	v_mov_b32_e32 v88, v1
	scratch_store_b64 off, v[12:13], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_mov_b32_e32 v89, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v91, v1
	v_mov_b32_e32 v92, v1
	v_mov_b32_e32 v93, v1
	v_mov_b32_e32 v94, v1
	scratch_store_b64 off, v[11:12], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x80, v7
	v_add_nc_u32_e32 v10, 0x78, v7
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v45, v1
	scratch_store_b64 off, v[12:13], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v95, v1
	scratch_store_b64 off, v[11:12], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x70, v7
	v_dual_mov_b32 v53, v1 :: v_dual_add_nc_u32 v10, 0x68, v7
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v97, v1
	v_mov_b32_e32 v98, v1
	scratch_store_b64 off, v[12:13], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v57, v1
	scratch_store_b64 off, v[11:12], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v11, 0x60, v7
	v_add_nc_u32_e32 v10, 0x58, v7
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v100, v1
	scratch_store_b64 off, v[12:13], off offset:148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[11:12], null, s29, v11, v[161:162]
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v102, v1
	scratch_store_b64 off, v[11:12], off offset:156 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v11, 0x50, v7
	v_mad_u64_u32 v[12:13], null, s29, v10, v[161:162]
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v10, 0x48, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[183:184], null, s29, v11, v[161:162]
	v_add_nc_u32_e32 v11, 64, v7
	v_mad_u64_u32 v[184:185], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 56, v7
	scratch_store_b64 off, v[12:13], off offset:164 ; 8-byte Folded Spill
	v_mad_u64_u32 v[185:186], null, s29, v11, v[161:162]
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[186:187], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 40, v7
	v_add_nc_u32_e32 v12, 16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[187:188], null, s29, v11, v[161:162]
	v_add_nc_u32_e32 v11, 32, v7
	v_mad_u64_u32 v[188:189], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 24, v7
	v_mov_b32_e32 v62, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[189:190], null, s29, v11, v[161:162]
	v_add3_u32 v11, s39, s1, v18
	v_mad_u64_u32 v[190:191], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 8, v7
	v_mad_u64_u32 v[191:192], null, s29, v12, v[161:162]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v137, s0, v11
	v_mov_b32_e32 v64, v1
	v_mad_u64_u32 v[192:193], null, s29, v10, v[161:162]
	v_mad_u64_u32 v[193:194], null, s29, v7, v[161:162]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v10, 0xf8, v137
	v_add_nc_u32_e32 v7, 0xf0, v137
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v11, 0x78, v137
	v_add_nc_u32_e32 v138, 0x70, v137
	v_mad_u64_u32 v[194:195], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xe8, v137
	v_mad_u64_u32 v[195:196], null, s29, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0xe0, v137
	v_mov_b32_e32 v13, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[196:197], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xd8, v137
	v_mad_u64_u32 v[197:198], null, s29, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0xd0, v137
	v_add_nc_u32_e32 v139, 0x68, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[198:199], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xc8, v137
	v_mad_u64_u32 v[199:200], null, s29, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0xc0, v137
	v_mov_b32_e32 v73, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[200:201], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xb8, v137
	v_mad_u64_u32 v[201:202], null, s29, v7, v[161:162]
	v_dual_mov_b32 v70, v1 :: v_dual_add_nc_u32 v7, 0xb0, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[202:203], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0xa8, v137
	v_mad_u64_u32 v[203:204], null, s29, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0xa0, v137
	v_mov_b32_e32 v75, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[204:205], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0x98, v137
	v_mad_u64_u32 v[205:206], null, s29, v7, v[161:162]
	v_dual_mov_b32 v72, v1 :: v_dual_add_nc_u32 v7, 0x90, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[206:207], null, s29, v10, v[161:162]
	v_add_nc_u32_e32 v10, 0x88, v137
	v_mad_u64_u32 v[207:208], null, s29, v7, v[161:162]
	v_add_nc_u32_e32 v7, 0x80, v137
	v_mov_b32_e32 v77, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[208:209], null, s29, v10, v[161:162]
	v_mov_b32_e32 v10, v1
	v_mad_u64_u32 v[209:210], null, s29, v7, v[161:162]
	v_mad_u64_u32 v[210:211], null, s29, v11, v[161:162]
	v_mad_u64_u32 v[211:212], null, s29, v138, v[161:162]
	v_add_nc_u32_e32 v138, 0x60, v137
	v_mad_u64_u32 v[212:213], null, s29, v139, v[161:162]
	v_dual_mov_b32 v74, v1 :: v_dual_add_nc_u32 v139, 0x58, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[213:214], null, s29, v138, v[161:162]
	v_add_nc_u32_e32 v138, 0x50, v137
	v_mad_u64_u32 v[214:215], null, s29, v139, v[161:162]
	v_add_nc_u32_e32 v139, 0x48, v137
	v_mov_b32_e32 v79, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[215:216], null, s29, v138, v[161:162]
	v_add_nc_u32_e32 v138, 64, v137
	v_mad_u64_u32 v[216:217], null, s29, v139, v[161:162]
	v_dual_mov_b32 v76, v1 :: v_dual_add_nc_u32 v139, 56, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[217:218], null, s29, v138, v[161:162]
	v_add_nc_u32_e32 v138, 48, v137
	v_mad_u64_u32 v[218:219], null, s29, v139, v[161:162]
	v_add_nc_u32_e32 v139, 40, v137
	v_mov_b32_e32 v81, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[219:220], null, s29, v138, v[161:162]
	v_add_nc_u32_e32 v138, 32, v137
	v_mov_b32_e32 v78, v1
	v_mad_u64_u32 v[220:221], null, s29, v139, v[161:162]
	v_add_nc_u32_e32 v139, 24, v137
	v_mov_b32_e32 v83, v1
	v_mad_u64_u32 v[221:222], null, s29, v138, v[161:162]
	v_dual_mov_b32 v85, v1 :: v_dual_add_nc_u32 v138, 16, v137
	v_add_nc_u32_e32 v140, 8, v137
	v_mad_u64_u32 v[222:223], null, s29, v139, v[161:162]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[223:224], null, s29, v138, v[161:162]
	v_mad_u64_u32 v[224:225], null, s29, v140, v[161:162]
	v_mad_u64_u32 v[225:226], null, s29, v137, v[161:162]
	v_mad_u64_u32 v[226:227], null, v136, s29, v[161:162]
	v_mad_u64_u32 v[227:228], null, v135, s29, v[161:162]
	v_mad_u64_u32 v[228:229], null, v134, s29, v[161:162]
	v_mad_u64_u32 v[229:230], null, v133, s29, v[161:162]
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[230:231], null, v132, s29, v[161:162]
	v_mov_b32_e32 v18, v1
	v_mad_u64_u32 v[231:232], null, v131, s29, v[161:162]
	v_mad_u64_u32 v[232:233], null, v130, s29, v[161:162]
	v_mad_u64_u32 v[233:234], null, v129, s29, v[161:162]
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v103, v1
	v_mov_b32_e32 v104, v1
	v_mov_b32_e32 v105, v1
	v_mov_b32_e32 v106, v1
	v_mov_b32_e32 v107, v1
	v_mov_b32_e32 v108, v1
	v_mov_b32_e32 v109, v1
	v_mov_b32_e32 v110, v1
	v_mov_b32_e32 v111, v1
	v_mov_b32_e32 v112, v1
	v_mov_b32_e32 v113, v1
	v_mov_b32_e32 v114, v1
	v_mov_b32_e32 v115, v1
	v_mov_b32_e32 v116, v1
	v_mov_b32_e32 v117, v1
	v_mov_b32_e32 v118, v1
	v_mov_b32_e32 v119, v1
	v_mov_b32_e32 v120, v1
	v_mov_b32_e32 v121, v1
	v_mov_b32_e32 v122, v1
	v_mov_b32_e32 v123, v1
	v_mov_b32_e32 v124, v1
	v_mov_b32_e32 v125, v1
	v_mov_b32_e32 v126, v1
	v_mov_b32_e32 v127, v1
	v_mov_b32_e32 v128, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s40, vcc_lo, s7
	s_and_b32 s43, s2, s10
	s_and_b32 s44, s3, s11
	s_and_b32 s45, s4, s12
	s_and_b32 s46, s5, s13
	s_and_b32 s47, s6, s14
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s8, s24
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_mov_b32 s24, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_add_nc_u32_e32 v129, s24, v161
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v147, s24, v225
	v_add_nc_u32_e32 v146, s24, v203
	v_add_nc_u32_e32 v148, s24, v224
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	s_mov_b32 s14, s10
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s29, v129
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_mov_b32 s15, s11
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	v_add_nc_u32_e32 v149, s24, v223
	v_add_nc_u32_e32 v142, s24, v199
	v_add_nc_u32_e32 v150, s24, v222
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_cndmask_b32 v146, 0x80000000, v146
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v144, s24, v201
	v_add_nc_u32_e32 v151, s24, v221
	v_add_nc_u32_e32 v140, s24, v197
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_u8 v247, v147, s[12:15], 0 offen
	buffer_load_u8 v237, v146, s[12:15], 0 offen
	v_dual_cndmask_b32 v147, 0x80000000, v148 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v152, s24, v220
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v144, 0x80000000, v144, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v138, s24, v195
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v236, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v149, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v153, s24, v219
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v154, s24, v218
	v_add_nc_u32_e32 v155, s24, v217
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v248, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v150, vcc_lo
	v_cndmask_b32_e32 v138, 0x80000000, v138, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v156, s24, v216
	v_add_nc_u32_e32 v157, s24, v215
	v_add_nc_u32_e32 v158, s24, v214
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v249, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v151, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v159, s24, v213
	v_add_nc_u32_e32 v160, s24, v212
	v_add_nc_u32_e32 v162, s24, v211
	v_add_nc_u32_e32 v163, s24, v210
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v250, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v152, vcc_lo
	.loc	1 1069 38 is_stmt 1             ; ragged.py:1069:38
	v_add_nc_u32_e32 v129, s24, v233
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v164, s24, v209
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s40, vcc_lo
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_add_nc_u32_e32 v131, s24, v232
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	buffer_load_u8 v251, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v153, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v132, s24, v231
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v165, s24, v208
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s41, vcc_lo
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v252, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v154, vcc_lo
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s2, s42, vcc_lo
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_add_nc_u32_e32 v133, s24, v230
	v_add_nc_u32_e32 v134, s24, v229
	.loc	1 1069 30                       ; ragged.py:1069:30
	buffer_load_u8 v130, v129, s[8:11], 0 offen
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	buffer_load_u8 v253, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v155, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v129, 0x80000000, v131, s1
	v_cndmask_b32_e64 v131, 0x80000000, v132, s2
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v166, s24, v207
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s3, s43, vcc_lo
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v254, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v156, vcc_lo
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s4, s44, vcc_lo
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_add_nc_u32_e32 v135, s24, v228
	v_add_nc_u32_e32 v136, s24, v227
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v129, v129, s[8:11], 0 offen
	buffer_load_u8 v132, v131, s[8:11], 0 offen
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	buffer_load_u8 v255, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v157, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v131, 0x80000000, v133, s3
	v_cndmask_b32_e64 v133, 0x80000000, v134, s4
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v167, s24, v206
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s5, s45, vcc_lo
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v235, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v158, vcc_lo
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s6, s46, vcc_lo
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_add_nc_u32_e32 v137, s24, v226
	s_clause 0x1
	buffer_load_u8 v131, v131, s[8:11], 0 offen
	buffer_load_u8 v134, v133, s[8:11], 0 offen
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	buffer_load_u8 v170, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v159, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v133, 0x80000000, v135, s5
	v_cndmask_b32_e64 v135, 0x80000000, v136, s6
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v168, s24, v205
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s7, s47, vcc_lo
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v171, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v160, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v133, v133, s[8:11], 0 offen
	buffer_load_u8 v136, v135, s[8:11], 0 offen
	v_cndmask_b32_e64 v135, 0x80000000, v137, s7
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v169, s24, v204
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	buffer_load_u8 v172, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v162, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v145, s24, v202
	v_add_nc_u32_e32 v143, s24, v200
	v_add_nc_u32_e32 v141, s24, v198
	v_add_nc_u32_e32 v139, s24, v196
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v162, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v163, vcc_lo
	v_add_nc_u32_e32 v137, s24, v194
	v_cndmask_b32_e32 v145, 0x80000000, v145, vcc_lo
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	buffer_load_u8 v163, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v164, vcc_lo
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	v_cndmask_b32_e32 v137, 0x80000000, v137, vcc_lo
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	buffer_load_u8 v135, v135, s[8:11], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_u8 v0, v145, s[12:15], 0 offen
	buffer_load_u8 v164, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v165, vcc_lo
	s_clause 0x8
	buffer_load_u8 v173, v144, s[12:15], 0 offen
	buffer_load_u8 v174, v143, s[12:15], 0 offen
	buffer_load_u8 v175, v142, s[12:15], 0 offen
	buffer_load_u8 v176, v141, s[12:15], 0 offen
	buffer_load_u8 v177, v140, s[12:15], 0 offen
	buffer_load_u8 v178, v139, s[12:15], 0 offen
	buffer_load_u8 v179, v138, s[12:15], 0 offen
	buffer_load_u8 v180, v137, s[12:15], 0 offen
	buffer_load_u8 v165, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v166, vcc_lo
	buffer_load_u8 v166, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v167, vcc_lo
	buffer_load_u8 v167, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v168, vcc_lo
	buffer_load_u8 v168, v147, s[12:15], 0 offen
	v_cndmask_b32_e32 v147, 0x80000000, v169, vcc_lo
	buffer_load_u8 v169, v147, s[12:15], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v137, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, 0, v137
	ds_store_b8 v234, v130
	ds_store_b8 v234, v132 offset:512
	ds_store_b8 v234, v134 offset:1024
	ds_store_b8 v234, v136 offset:1536
	ds_store_b8 v240, v129
	ds_store_b8 v240, v131 offset:512
	ds_store_b8 v240, v133 offset:1024
	ds_store_b8 v240, v135 offset:1536
	v_add_nc_u32_e32 v129, 0, v238
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[145:148], v129 offset1:1
	ds_load_2addr_stride64_b64 v[141:144], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v241 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v241 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[153:156], v242 offset1:1
	ds_load_2addr_stride64_b64 v[133:136], v242 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[157:160], v243 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v243 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v234, v247
	ds_store_b8 v234, v248 offset:512
	ds_store_b8 v234, v250 offset:1024
	ds_store_b8 v234, v252 offset:1536
	ds_store_b8 v234, v254 offset:2048
	ds_store_b8 v234, v235 offset:2560
	ds_store_b8 v234, v171 offset:3072
	ds_store_b8 v234, v162 offset:3584
	ds_store_b8 v234, v164 offset:4096
	ds_store_b8 v234, v166 offset:4608
	ds_store_b8 v234, v168 offset:5120
	ds_store_b8 v234, v237 offset:5632
	ds_store_b8 v234, v173 offset:6144
	ds_store_b8 v234, v175 offset:6656
	ds_store_b8 v234, v177 offset:7168
	ds_store_b8 v234, v179 offset:7680
	ds_store_b8 v240, v236
	ds_store_b8 v240, v249 offset:512
	ds_store_b8 v240, v251 offset:1024
	ds_store_b8 v240, v253 offset:1536
	ds_store_b8 v240, v255 offset:2048
	ds_store_b8 v240, v170 offset:2560
	ds_store_b8 v240, v172 offset:3072
	ds_store_b8 v240, v163 offset:3584
	ds_store_b8 v240, v165 offset:4096
	ds_store_b8 v240, v167 offset:4608
	ds_store_b8 v240, v169 offset:5120
	ds_store_b8 v240, v0 offset:5632
	ds_store_b8 v240, v174 offset:6144
	ds_store_b8 v240, v176 offset:6656
	ds_store_b8 v240, v178 offset:7168
	ds_store_b8 v240, v180 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_clause 0x9                            ; 80-byte Folded Reload
	scratch_load_b64 v[172:173], off, off offset:164
	scratch_load_b64 v[173:174], off, off offset:156
	scratch_load_b64 v[174:175], off, off offset:148
	scratch_load_b64 v[175:176], off, off offset:140
	scratch_load_b64 v[176:177], off, off offset:132
	scratch_load_b64 v[177:178], off, off offset:124
	scratch_load_b64 v[178:179], off, off offset:116
	scratch_load_b64 v[179:180], off, off offset:108
	scratch_load_b64 v[180:181], off, off offset:100
	scratch_load_b64 v[181:182], off, off offset:92
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v247, 0, v239
	ds_load_2addr_stride64_b64 v[248:251], v247 offset1:8
	ds_load_2addr_stride64_b64 v[252:255], v244 offset1:8
	ds_load_2addr_stride64_b64 v[162:165], v245 offset1:8
	ds_load_2addr_stride64_b64 v[166:169], v246 offset1:8
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v0, s24, v193
	v_add_nc_u32_e32 v170, s24, v184
	v_add_nc_u32_e32 v171, s24, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_dual_cndmask_b32 v170, 0x80000000, v170 :: v_dual_cndmask_b32 v171, 0x80000000, v171
	s_clause 0x2
	buffer_load_u8 v0, v0, s[12:15], 0 offen
	buffer_load_u8 v170, v170, s[12:15], 0 offen
	buffer_load_u8 v171, v171, s[12:15], 0 offen
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[248:249], v[145:146], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[248:249], v[147:148], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[248:249], v[141:142], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[248:249], v[143:144], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[250:251], v[145:146], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[250:251], v[147:148], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[250:251], v[141:142], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[250:251], v[143:144], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[252:253], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[252:253], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[252:253], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[252:253], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[254:255], v[149:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[254:255], v[151:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[254:255], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[254:255], v[139:140], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[162:163], v[153:154], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[162:163], v[155:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[162:163], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[162:163], v[135:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[164:165], v[153:154], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[164:165], v[155:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[164:165], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[164:165], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v162, s24, v192
	v_add_nc_u32_e32 v163, s24, v191
	v_add_nc_u32_e32 v164, s24, v190
	v_add_nc_u32_e32 v165, s24, v189
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[166:167], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[166:167], v[159:160], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[166:167], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[166:167], v[131:132], v[113:120] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v166, s24, v188
	v_add_nc_u32_e32 v167, s24, v187
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[168:169], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[168:169], v[159:160], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[168:169], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[168:169], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v169, s24, v185
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v162, 0x80000000, v162 :: v_dual_cndmask_b32 v163, 0x80000000, v163
	v_dual_cndmask_b32 v164, 0x80000000, v164 :: v_dual_cndmask_b32 v165, 0x80000000, v165
	v_dual_cndmask_b32 v166, 0x80000000, v166 :: v_dual_cndmask_b32 v167, 0x80000000, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v169, 0x80000000, v169, vcc_lo
	s_clause 0x6
	buffer_load_u8 v162, v162, s[12:15], 0 offen
	buffer_load_u8 v163, v163, s[12:15], 0 offen
	buffer_load_u8 v164, v164, s[12:15], 0 offen
	buffer_load_u8 v165, v165, s[12:15], 0 offen
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v167, v167, s[12:15], 0 offen
	buffer_load_u8 v169, v169, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v168, s24, v186
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v168, 0x80000000, v168, vcc_lo
	buffer_load_u8 v168, v168, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v172, s24, v172
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v173, s24, v173
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v174, s24, v174
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v175, s24, v175
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v176, s24, v176
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v177, s24, v177
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v178, s24, v178
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v179, s24, v179
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v172, 0x80000000, v172, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v235, s24, v181
	scratch_load_b64 v[181:182], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v173, 0x80000000, v173 :: v_dual_cndmask_b32 v174, 0x80000000, v174
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	v_dual_cndmask_b32 v177, 0x80000000, v177 :: v_dual_cndmask_b32 v178, 0x80000000, v178
	v_cndmask_b32_e32 v179, 0x80000000, v179, vcc_lo
	v_cndmask_b32_e32 v235, 0x80000000, v235, vcc_lo
	s_clause 0x7
	buffer_load_u8 v172, v172, s[12:15], 0 offen
	buffer_load_u8 v173, v173, s[12:15], 0 offen
	buffer_load_u8 v174, v174, s[12:15], 0 offen
	buffer_load_u8 v175, v175, s[12:15], 0 offen
	buffer_load_u8 v177, v177, s[12:15], 0 offen
	buffer_load_u8 v178, v178, s[12:15], 0 offen
	buffer_load_u8 v179, v179, s[12:15], 0 offen
	buffer_load_u8 v235, v235, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v180, s24, v180
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v176, 0x80000000, v176, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v180, 0x80000000, v180, vcc_lo
	s_clause 0x1
	buffer_load_u8 v176, v176, s[12:15], 0 offen
	buffer_load_u8 v180, v180, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v236, s24, v181
	scratch_load_b64 v[181:182], off, off offset:76 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v236, 0x80000000, v236, vcc_lo
	buffer_load_u8 v236, v236, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v237, s24, v181
	scratch_load_b64 v[181:182], off, off offset:68 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v237, 0x80000000, v237, vcc_lo
	buffer_load_u8 v237, v237, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v248, s24, v181
	scratch_load_b64 v[181:182], off, off offset:60 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v248, 0x80000000, v248, vcc_lo
	buffer_load_u8 v248, v248, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v249, s24, v181
	scratch_load_b64 v[181:182], off, off offset:52 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v249, 0x80000000, v249, vcc_lo
	buffer_load_u8 v249, v249, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v250, s24, v181
	scratch_load_b64 v[181:182], off, off offset:44 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v250, 0x80000000, v250, vcc_lo
	buffer_load_u8 v250, v250, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v251, s24, v181
	scratch_load_b64 v[181:182], off, off offset:36 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v251, 0x80000000, v251, vcc_lo
	buffer_load_u8 v251, v251, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v252, s24, v181
	scratch_load_b64 v[181:182], off, off offset:28 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v252, 0x80000000, v252, vcc_lo
	buffer_load_u8 v252, v252, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v253, s24, v181
	scratch_load_b64 v[181:182], off, off offset:20 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v253, 0x80000000, v253, vcc_lo
	buffer_load_u8 v253, v253, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v254, s24, v181
	scratch_load_b64 v[181:182], off, off offset:12 ; 8-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v254, 0x80000000, v254, vcc_lo
	buffer_load_u8 v254, v254, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v255, s24, v181
	.loc	1 1095 35                       ; ragged.py:1095:35
	scratch_load_b64 v[181:182], off, off offset:4 ; 8-byte Folded Reload
	v_cndmask_b32_e32 v255, 0x80000000, v255, vcc_lo
	buffer_load_u8 v255, v255, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v181, s24, v181
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s24, s24, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s24, s29
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v181, 0x80000000, v181, vcc_lo
	buffer_load_u8 v181, v181, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v234, v0
	ds_store_b8 v234, v163 offset:512
	ds_store_b8 v234, v165 offset:1024
	ds_store_b8 v234, v167 offset:1536
	ds_store_b8 v234, v169 offset:2048
	ds_store_b8 v234, v171 offset:2560
	ds_store_b8 v234, v173 offset:3072
	ds_store_b8 v234, v175 offset:3584
	ds_store_b8 v234, v177 offset:4096
	ds_store_b8 v234, v179 offset:4608
	ds_store_b8 v234, v235 offset:5120
	ds_store_b8 v234, v237 offset:5632
	ds_store_b8 v234, v249 offset:6144
	ds_store_b8 v234, v251 offset:6656
	ds_store_b8 v234, v253 offset:7168
	s_waitcnt vmcnt(1)
	ds_store_b8 v234, v255 offset:7680
	ds_store_b8 v240, v162
	ds_store_b8 v240, v164 offset:512
	ds_store_b8 v240, v166 offset:1024
	ds_store_b8 v240, v168 offset:1536
	ds_store_b8 v240, v170 offset:2048
	ds_store_b8 v240, v172 offset:2560
	ds_store_b8 v240, v174 offset:3072
	ds_store_b8 v240, v176 offset:3584
	ds_store_b8 v240, v178 offset:4096
	ds_store_b8 v240, v180 offset:4608
	ds_store_b8 v240, v236 offset:5120
	ds_store_b8 v240, v248 offset:5632
	ds_store_b8 v240, v250 offset:6144
	ds_store_b8 v240, v252 offset:6656
	ds_store_b8 v240, v254 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b8 v240, v181 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[162:165], v247 offset1:8
	ds_load_2addr_stride64_b64 v[166:169], v244 offset1:8
	ds_load_2addr_stride64_b64 v[247:250], v245 offset1:8
	ds_load_2addr_stride64_b64 v[251:254], v246 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[162:163], v[145:146], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[145:146], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[162:163], v[147:148], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[147:148], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[162:163], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[164:165], v[141:142], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[162:163], v[143:144], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[164:165], v[143:144], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[166:167], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[168:169], v[149:150], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[151:152], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[168:169], v[151:152], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[168:169], v[137:138], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[166:167], v[139:140], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[139:140], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[247:248], v[153:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[249:250], v[153:154], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[247:248], v[155:156], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[249:250], v[155:156], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[247:248], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[249:250], v[133:134], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[247:248], v[135:136], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[249:250], v[135:136], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[251:252], v[157:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[253:254], v[157:158], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[251:252], v[159:160], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[253:254], v[159:160], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[251:252], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[253:254], v[129:130], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[251:252], v[131:132], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[253:254], v[131:132], v[9:16] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v165, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1111 19 is_stmt 1             ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v145, v86
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v86, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:180
	scratch_load_b32 v166, off, off offset:176
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v161, v65
	v_cvt_f32_i32_e32 v162, v66
	v_cvt_f32_i32_e32 v164, v67
	v_cvt_f32_i32_e32 v163, v68
	v_cvt_f32_i32_e32 v139, v69
	v_cvt_f32_i32_e32 v140, v70
	v_cvt_f32_i32_e32 v141, v71
	v_cvt_f32_i32_e32 v143, v72
	v_cvt_f32_i32_e32 v142, v73
	v_cvt_f32_i32_e32 v136, v74
	v_cvt_f32_i32_e32 v137, v75
	v_cvt_f32_i32_e32 v138, v76
	v_cvt_f32_i32_e32 v129, v77
	v_cvt_f32_i32_e32 v132, v78
	v_cvt_f32_i32_e32 v131, v79
	v_cvt_f32_i32_e32 v130, v80
	v_cvt_f32_i32_e32 v158, v81
	v_cvt_f32_i32_e32 v157, v82
	v_cvt_f32_i32_e32 v160, v83
	v_cvt_f32_i32_e32 v159, v84
	v_cvt_f32_i32_e32 v146, v85
	v_cvt_f32_i32_e32 v147, v87
	v_cvt_f32_i32_e32 v148, v88
	v_cvt_f32_i32_e32 v144, v89
	v_cvt_f32_i32_e32 v134, v90
	v_cvt_f32_i32_e32 v133, v91
	v_cvt_f32_i32_e32 v135, v92
	v_cvt_f32_i32_e32 v79, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v92, v96
	v_cvt_f32_i32_e32 v154, v97
	v_cvt_f32_i32_e32 v153, v98
	v_cvt_f32_i32_e32 v156, v99
	v_cvt_f32_i32_e32 v155, v100
	v_cvt_f32_i32_e32 v150, v101
	v_cvt_f32_i32_e32 v149, v102
	v_cvt_f32_i32_e32 v151, v103
	v_cvt_f32_i32_e32 v152, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v102, v107
	v_cvt_f32_i32_e32 v104, v108
	v_cvt_f32_i32_e32 v78, v109
	v_cvt_f32_i32_e32 v98, v110
	v_cvt_f32_i32_e32 v97, v111
	v_cvt_f32_i32_e32 v96, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v107, v117
	v_cvt_f32_i32_e32 v108, v118
	v_cvt_f32_i32_e32 v109, v119
	v_cvt_f32_i32_e32 v110, v120
	v_cvt_f32_i32_e32 v106, v121
	v_cvt_f32_i32_e32 v90, v122
	v_cvt_f32_i32_e32 v91, v123
	v_cvt_f32_i32_e32 v95, v124
	v_cvt_f32_i32_e32 v77, v125
	v_cvt_f32_i32_e32 v101, v126
	v_cvt_f32_i32_e32 v100, v127
	v_cvt_f32_i32_e32 v99, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v87, v2
	v_cvt_f32_i32_e32 v89, v3
	v_cvt_f32_i32_e32 v88, v4
	v_cvt_f32_i32_e32 v69, v5
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v71, v7
	v_cvt_f32_i32_e32 v72, v8
	v_cvt_f32_i32_e32 v73, v17
	v_cvt_f32_i32_e32 v66, v18
	v_cvt_f32_i32_e32 v67, v19
	v_cvt_f32_i32_e32 v68, v20
	v_cvt_f32_i32_e32 v7, v21
	v_cvt_f32_i32_e32 v65, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v21, v24
	v_cvt_f32_i32_e32 v84, v25
	v_cvt_f32_i32_e32 v85, v26
	v_cvt_f32_i32_e32 v82, v27
	v_cvt_f32_i32_e32 v83, v28
	v_cvt_f32_i32_e32 v76, v29
	v_cvt_f32_i32_e32 v75, v30
	v_cvt_f32_i32_e32 v74, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v24, v34
	v_cvt_f32_i32_e32 v22, v35
	v_cvt_f32_i32_e32 v20, v36
	v_cvt_f32_i32_e32 v6, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v81, v41
	v_cvt_f32_i32_e32 v80, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v37, v45
	v_cvt_f32_i32_e32 v36, v46
	v_cvt_f32_i32_e32 v35, v47
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v19, v50
	v_cvt_f32_i32_e32 v18, v51
	v_cvt_f32_i32_e32 v17, v52
	v_cvt_f32_i32_e32 v5, v53
	v_cvt_f32_i32_e32 v30, v54
	v_cvt_f32_i32_e32 v29, v55
	v_cvt_f32_i32_e32 v28, v56
	v_cvt_f32_i32_e32 v42, v57
	v_cvt_f32_i32_e32 v41, v58
	v_cvt_f32_i32_e32 v38, v59
	v_cvt_f32_i32_e32 v39, v60
	v_cvt_f32_i32_e32 v48, v61
	v_cvt_f32_i32_e32 v47, v62
	v_cvt_f32_i32_e32 v46, v63
	v_cvt_f32_i32_e32 v45, v64
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v11
	v_cvt_f32_i32_e32 v8, v12
	v_cvt_f32_i32_e32 v4, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v11, v15
	v_cvt_f32_i32_e32 v13, v16
	v_dual_mov_b32 v14, s39 :: v_dual_mov_b32 v3, s36
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v2, 0x80, v165
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v0, 28, v1
	v_lshlrev_b32_e32 v1, 5, v165
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v15, 32, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 0xf0, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v16, v1, 2, 0
	v_add3_u32 v50, v16, v15, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v15, s0, s36, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v16, null, s37, 0, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[15:16]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v15, 16, v166
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v15, s1, s36, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v16, null, s37, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_lshlrev_b32 v49, 1, v15
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[34:35], v[15:16]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v15, 32, v166
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v15, s3, s36, v15
	v_add_co_ci_u32_e64 v16, null, s37, 0, s3
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v52, 1, v15
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s1, s28, 31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[30:31], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[34:35], v[15:16]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v15, 48, v166
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s1, s28, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s5, s36, v15
	v_add_co_ci_u32_e64 v16, null, s37, 0, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[30:31], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[34:35], v[15:16]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_lshl_or_b32 v16, s33, 8, v165
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v15, 1, v15
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_add_nc_u32_e32 v51, v16, v14
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v14, 0x80000000, v49, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v16, 0x80000000, v52, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s5, s1, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v52, v16, s[8:11], 0 offen
	buffer_load_u16 v53, v15, s[8:11], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v49, 16, v0
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v53
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v54, v162, v49 :: v_dual_lshlrev_b32 v15, 1, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v62, v157, v16
	v_mul_f32_e32 v0, v114, v14
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v50, v15
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v15, 16, v52
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v63, v156, v15
	v_mul_f32_e32 v58, v160, v16
	v_dual_mul_f32 v57, v159, v16 :: v_dual_mul_f32 v116, v153, v15
	v_mul_f32_e32 v111, v111, v14
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v153, v1, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v64, v155, v15
	v_dual_mul_f32 v115, v154, v15 :: v_dual_mul_f32 v122, v112, v14
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[117:120], v153
	ds_load_b128 v[154:157], v153 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v52, v164, v49
	v_mul_f32_e32 v53, v163, v49
	v_dual_mul_f32 v55, v161, v49 :: v_dual_mul_f32 v56, v158, v16
	v_mul_f32_e32 v121, v113, v14
	v_mul_f32_e32 v127, v152, v15
	v_mul_f32_e32 v128, v151, v15
	v_dual_mul_f32 v136, v136, v49 :: v_dual_mul_f32 v105, v105, v15
	v_dual_mul_f32 v133, v133, v16 :: v_dual_mul_f32 v90, v90, v14
	v_dual_mul_f32 v92, v92, v16 :: v_dual_mul_f32 v97, v97, v15
	v_dual_mul_f32 v131, v131, v49 :: v_dual_mul_f32 v94, v94, v16
	v_dual_mul_f32 v93, v93, v16 :: v_dual_mul_f32 v86, v86, v49
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v81, v81, v15
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v59, v55, v117 :: v_dual_mul_f32 v54, v54, v118
	v_dual_mul_f32 v60, v53, v120 :: v_dual_mul_f32 v61, v52, v119
	v_dual_mul_f32 v55, v56, v117 :: v_dual_mul_f32 v56, v62, v118
	v_dual_mul_f32 v57, v57, v120 :: v_dual_mul_f32 v52, v115, v117
	v_mul_f32_e32 v58, v58, v119
	v_dual_mul_f32 v112, v116, v118 :: v_dual_mul_f32 v53, v111, v117
	v_dual_mul_f32 v113, v64, v120 :: v_dual_mul_f32 v114, v63, v119
	v_dual_mul_f32 v62, v122, v118 :: v_dual_mul_f32 v63, v121, v120
	v_dual_mul_f32 v111, v0, v119 :: v_dual_mul_f32 v0, v143, v49
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v64, v141, v49 :: v_dual_mul_f32 v117, v148, v16
	v_dual_mul_f32 v115, v140, v49 :: v_dual_mul_f32 v118, v147, v16
	v_dual_mul_f32 v116, v139, v49 :: v_dual_mul_f32 v119, v146, v16
	v_dual_mul_f32 v120, v145, v16 :: v_dual_mul_f32 v139, v150, v15
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v126, v0, v157
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v140, v149, v15 :: v_dual_mul_f32 v145, v108, v14
	v_mul_f32_e32 v141, v110, v14
	v_dual_mul_f32 v143, v109, v14 :: v_dual_mul_f32 v124, v115, v155
	v_dual_mul_f32 v107, v107, v14 :: v_dual_mul_f32 v120, v120, v155
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v123, v116, v154 :: v_dual_mul_f32 v122, v117, v157
	v_dual_mul_f32 v125, v64, v156 :: v_dual_mul_f32 v108, v139, v154
	v_dual_mul_f32 v119, v119, v154 :: v_dual_mul_f32 v110, v128, v156
	v_dual_mul_f32 v121, v118, v156 :: v_dual_mul_f32 v116, v127, v157
	v_dual_mul_f32 v109, v140, v155 :: v_dual_mul_f32 v118, v141, v157
	v_dual_mul_f32 v107, v107, v154 :: v_dual_mul_f32 v0, v142, v49
	v_mul_f32_e32 v115, v145, v155
	v_dual_mul_f32 v117, v143, v156 :: v_dual_mul_f32 v128, v137, v49
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v127, v138, v49
	v_dual_mul_f32 v145, v144, v16 :: v_dual_mul_f32 v146, v106, v14
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[137:140], v153 offset:512
	ds_load_b128 v[141:144], v153 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v103, v103, v15
	v_mul_f32_e32 v147, v135, v16
	v_dual_mul_f32 v148, v134, v16 :: v_dual_mul_f32 v91, v91, v14
	v_mul_f32_e32 v149, v104, v15
	v_dual_mul_f32 v104, v102, v15 :: v_dual_mul_f32 v95, v95, v14
	v_mul_f32_e32 v98, v98, v15
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v84, v84, v16 :: v_dual_mul_f32 v69, v69, v49
	v_mul_f32_e32 v37, v37, v15
	v_mul_f32_e32 v36, v36, v15
	v_mul_f32_e32 v35, v35, v15
	v_dual_mul_f32 v67, v67, v49 :: v_dual_mul_f32 v32, v32, v16
	v_dual_mul_f32 v66, v66, v49 :: v_dual_mul_f32 v33, v33, v15
	v_dual_mul_f32 v40, v40, v14 :: v_dual_mul_f32 v17, v17, v15
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v64, v0, v137 :: v_dual_mul_f32 v103, v103, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v132, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v134, v145, v137
	v_mul_f32_e32 v106, v105, v137
	v_dual_mul_f32 v102, v146, v137 :: v_dual_mul_f32 v135, v136, v138
	v_dual_mul_f32 v136, v128, v139 :: v_dual_mul_f32 v137, v127, v140
	v_mul_f32_e32 v104, v104, v139
	v_dual_mul_f32 v127, v148, v138 :: v_dual_mul_f32 v132, v130, v49
	v_dual_mul_f32 v128, v133, v139 :: v_dual_mul_f32 v133, v147, v140
	v_dual_mul_f32 v90, v90, v138 :: v_dual_mul_f32 v91, v91, v139
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v138, v129, v49 :: v_dual_mul_f32 v129, v0, v142
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v51, s28, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v105, v149, v140
	v_dual_mul_f32 v95, v95, v140 :: v_dual_mul_f32 v140, v101, v14
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v139, v96, v15
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v145, v100, v14 :: v_dual_mul_f32 v148, v78, v15
	v_mul_f32_e32 v146, v99, v14
	v_dual_mul_f32 v147, v79, v16 :: v_dual_mul_f32 v100, v93, v143
	v_dual_mul_f32 v149, v77, v14 :: v_dual_mul_f32 v130, v131, v143
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v77, v140, v142
	v_dual_mul_f32 v131, v132, v144 :: v_dual_mul_f32 v78, v145, v143
	v_mul_f32_e32 v99, v94, v142
	v_dual_mul_f32 v101, v92, v144 :: v_dual_mul_f32 v132, v138, v141
	v_mul_f32_e32 v94, v98, v142
	v_dual_mul_f32 v96, v97, v143 :: v_dual_mul_f32 v97, v139, v144
	v_dual_mul_f32 v92, v149, v141 :: v_dual_mul_f32 v79, v146, v144
	v_mul_f32_e32 v98, v147, v141
	v_mul_f32_e32 v93, v148, v141
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v145, v44, v15 :: v_dual_mul_f32 v148, v41, v14
	v_dual_mul_f32 v146, v43, v15 :: v_dual_mul_f32 v147, v42, v14
	v_dual_mul_f32 v51, v87, v49 :: v_dual_mul_f32 v24, v24, v16
	v_dual_mul_f32 v9, v9, v14 :: v_dual_mul_f32 v6, v6, v16
	v_mul_f32_e32 v13, v13, v14
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v85, v85, v16 :: v_dual_mul_f32 v80, v80, v15
	v_mul_f32_e32 v74, v74, v16
	v_mul_f32_e32 v31, v31, v16
	v_dual_mul_f32 v22, v22, v16 :: v_dual_mul_f32 v19, v19, v15
	v_mul_f32_e32 v21, v21, v49
	v_mul_f32_e32 v5, v5, v15
	v_mul_f32_e32 v7, v7, v49
	v_mul_f32_e32 v25, v25, v16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v11, v14 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v50, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v153
	ds_load_b128 v[141:144], v153 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v89, v49
	v_mul_f32_e32 v50, v88, v49
	v_mul_f32_e32 v88, v83, v16
	v_mul_f32_e32 v89, v82, v16
	v_mul_f32_e32 v39, v39, v14
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v149, v38, v14 :: v_dual_mul_f32 v82, v84, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v140, v86, v41 :: v_dual_mul_f32 v139, v51, v42
	v_dual_mul_f32 v138, v50, v44 :: v_dual_mul_f32 v87, v0, v43
	v_mul_f32_e32 v50, v81, v41
	v_dual_mul_f32 v83, v85, v42 :: v_dual_mul_f32 v84, v88, v44
	v_mul_f32_e32 v85, v89, v43
	v_dual_mul_f32 v51, v80, v42 :: v_dual_mul_f32 v80, v145, v44
	v_dual_mul_f32 v81, v146, v43 :: v_dual_mul_f32 v38, v39, v44
	v_mul_f32_e32 v41, v147, v41
	v_dual_mul_f32 v39, v149, v43 :: v_dual_mul_f32 v0, v72, v49
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v43, v71, v49
	v_mul_f32_e32 v44, v70, v49
	v_mul_f32_e32 v70, v76, v16
	v_mul_f32_e32 v72, v75, v16
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v34, v34, v15 :: v_dual_mul_f32 v75, v0, v144
	v_mul_f32_e32 v86, v48, v14
	v_mul_f32_e32 v89, v47, v14
	v_dual_mul_f32 v145, v46, v14 :: v_dual_mul_f32 v88, v69, v141
	v_mul_f32_e32 v146, v45, v14
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v42, v148, v42
	v_dual_mul_f32 v76, v44, v142 :: v_dual_mul_f32 v71, v43, v143
	v_dual_mul_f32 v47, v70, v141 :: v_dual_mul_f32 v48, v72, v142
	v_dual_mul_f32 v69, v74, v143 :: v_dual_mul_f32 v70, v31, v144
	v_dual_mul_f32 v43, v37, v141 :: v_dual_mul_f32 v44, v36, v142
	v_dual_mul_f32 v45, v35, v143 :: v_dual_mul_f32 v46, v34, v144
	v_dual_mul_f32 v34, v86, v141 :: v_dual_mul_f32 v35, v89, v142
	v_dual_mul_f32 v36, v145, v143 :: v_dual_mul_f32 v31, v146, v144
	ds_load_b128 v[141:144], v153 offset:512
	ds_load_b128 v[145:148], v153 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v73, v49
	v_mul_f32_e32 v37, v68, v49
	v_mul_f32_e32 v20, v20, v16
	v_mul_f32_e32 v18, v18, v15
	v_mul_f32_e32 v10, v10, v14
	v_mul_f32_e32 v72, v8, v14
	v_mul_f32_e32 v12, v12, v14
	v_mul_f32_e32 v4, v4, v14
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v0, v0, v141 :: v_dual_mul_f32 v9, v9, v143
	v_mul_f32_e32 v73, v32, v141
	v_mul_f32_e32 v74, v33, v141
	v_mul_f32_e32 v141, v40, v141
	v_dual_mul_f32 v89, v66, v142 :: v_dual_mul_f32 v68, v67, v143
	v_mul_f32_e32 v33, v20, v144
	v_dual_mul_f32 v67, v24, v142 :: v_dual_mul_f32 v32, v22, v143
	v_mul_f32_e32 v22, v19, v142
	v_dual_mul_f32 v18, v18, v143 :: v_dual_mul_f32 v19, v17, v144
	v_mul_f32_e32 v8, v10, v142
	v_dual_mul_f32 v10, v72, v144 :: v_dual_mul_f32 v17, v65, v49
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v20, v23, v49
	v_mul_f32_e32 v23, v27, v16
	v_mul_f32_e32 v24, v26, v16
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v86, v37, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v16, v30, v15
	v_mul_f32_e32 v26, v29, v15
	v_dual_mul_f32 v27, v28, v15 :: v_dual_mul_f32 v14, v17, v146
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v15, v20, v147
	v_mul_f32_e32 v17, v21, v148
	v_mul_f32_e32 v21, v23, v146
	v_dual_mul_f32 v23, v24, v147 :: v_dual_mul_f32 v28, v25, v148
	v_mul_f32_e32 v24, v6, v145
	v_dual_mul_f32 v20, v5, v145 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v0
	v_mul_f32_e32 v25, v7, v145
	v_mul_f32_e32 v65, v11, v147
	v_dual_mul_f32 v30, v27, v148 :: v_dual_mul_f32 v49, v12, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v29, v16, v146 :: v_dual_mul_f32 v26, v26, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v66, v13, v148 :: v_dual_add_f32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v5, v5, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v7, v6
	v_fma_f32 v11, -v6, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v4, v4, v145 :: v_dual_fmac_f32 v7, v11, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, vcc_lo, v0, v5, v0
	v_mul_f32_e32 v12, v11, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v6, v12, v11
	v_fmac_f32_e32 v12, v13, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v12, v11
	v_div_fmas_f32 v6, v6, v7, v12
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v6, v5, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_mul_f32_e32 v0, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v7, v7, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v12, v11
	v_fma_f32 v13, -v11, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v13, v12
	v_div_scale_f32 v13, vcc_lo, v14, v7, v14
	v_mul_f32_e32 v16, v13, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v11, v16, v13
	v_fmac_f32_e32 v16, v27, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v16, v13
	v_div_fmas_f32 v11, v11, v12, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v13
	v_fma_f32 v27, -v13, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v27, v16
	v_div_scale_f32 v27, vcc_lo, v15, v12, v15
	v_mul_f32_e32 v37, v27, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v13, v37, v27
	v_fmac_f32_e32 v37, v40, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v37, v27
	v_div_fmas_f32 v13, v13, v16, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v17
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v6
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v0, v0, v17
	v_rcp_f32_e32 v16, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v6, v16, 1.0
	v_fmac_f32_e32 v16, v27, v16
	v_div_scale_f32 v27, vcc_lo, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v27, v16
	v_fma_f32 v40, -v6, v37, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v40, v16
	v_fma_f32 v6, -v6, v37, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v6, v16, v37
	v_div_fixup_f32 v6, v11, v7, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v73
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v7, v7, v73
	v_rcp_f32_e32 v14, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v11, v14, 1.0
	v_fmac_f32_e32 v14, v27, v14
	v_div_scale_f32 v27, vcc_lo, v73, v7, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v27, v14
	v_fma_f32 v40, -v11, v37, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v40, v14
	v_fma_f32 v11, -v11, v37, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v11, v14, v37
	v_div_fixup_f32 v11, v13, v12, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v14, v7, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v14, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v12, v12, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v13
	v_fma_f32 v27, -v13, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v27, v15
	v_div_scale_f32 v27, vcc_lo, v21, v12, v21
	v_mul_f32_e32 v37, v27, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v13, v37, v27
	v_fmac_f32_e32 v37, v40, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v37, v27
	v_div_fmas_f32 v15, v13, v15, v37
	v_div_fixup_f32 v13, v16, v0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v27, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v17, v27, v17
	v_div_scale_f32 v27, vcc_lo, v23, v0, v23
	v_div_fixup_f32 v12, v15, v12, v21
	v_mul_f32_e32 v37, v27, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v16, v37, v27
	v_fmac_f32_e32 v37, v40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v37, v27
	v_div_fmas_f32 v16, v16, v17, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v28
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v14, v14, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v17, v17, v28
	v_rcp_f32_e32 v27, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v14, v27, 1.0
	v_fmac_f32_e32 v27, v37, v27
	v_div_scale_f32 v37, vcc_lo, v28, v17, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v27
	v_fma_f32 v72, -v14, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v72, v27
	v_fma_f32 v14, -v14, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v14, v27, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v14, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v74
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v14, v14, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v15, v15, v74
	v_rcp_f32_e32 v21, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v14, v21, 1.0
	v_fmac_f32_e32 v21, v37, v21
	v_div_scale_f32 v37, vcc_lo, v74, v15, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v21
	v_fma_f32 v72, -v14, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v72, v21
	v_fma_f32 v14, -v14, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v14, v21, v40
	v_div_fixup_f32 v14, v16, v0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v21, v15, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v0, v0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v16
	v_fma_f32 v37, -v16, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v37, v23
	v_div_scale_f32 v37, vcc_lo, v29, v0, v29
	v_mul_f32_e32 v40, v37, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v16, v40, v37
	v_fmac_f32_e32 v40, v72, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v40, v37
	v_div_fmas_f32 v23, v16, v23, v40
	v_div_fixup_f32 v16, v27, v17, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v27, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v17
	v_fma_f32 v37, -v17, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v37, v28
	v_div_scale_f32 v37, vcc_lo, v26, v27, v26
	v_mul_f32_e32 v40, v37, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v17, v40, v37
	v_fmac_f32_e32 v40, v72, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v40, v37
	v_div_fmas_f32 v28, v17, v28, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v28, v27, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_mul_f32_e32 v26, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v30
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v21, v21, v30
	v_rcp_f32_e32 v37, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v17, v37, 1.0
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, vcc_lo, v30, v21, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v40, v37
	v_fma_f32 v73, -v17, v72, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v37
	v_fma_f32 v17, -v17, v72, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v17, v37, v72
	v_div_fixup_f32 v17, v23, v0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v141
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v141
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v0, v0, v141
	v_rcp_f32_e32 v29, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v23, v29, 1.0
	v_fmac_f32_e32 v29, v40, v29
	v_div_scale_f32 v40, vcc_lo, v141, v0, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v40, v29
	v_fma_f32 v73, -v23, v72, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v29
	v_fma_f32 v23, -v23, v72, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v29, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v26, v26, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v40, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v40, v29
	v_div_scale_f32 v40, vcc_lo, v49, v26, v49
	v_mul_f32_e32 v72, v40, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v28, v72, v40
	v_fmac_f32_e32 v72, v73, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v28, v72, v40
	v_div_fixup_f32 v40, v37, v21, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v29, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v21, v21, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v37, -v29, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v37, v30
	v_div_scale_f32 v37, vcc_lo, v65, v21, v65
	v_mul_f32_e32 v72, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v29, v72, v37
	v_fmac_f32_e32 v72, v73, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v29, v72, v37
	v_div_fixup_f32 v37, v23, v0, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v30, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v102, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v66
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v0, v0, v66
	v_rcp_f32_e32 v30, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v23, v30, 1.0
	v_fmac_f32_e32 v30, v72, v30
	v_div_scale_f32 v72, vcc_lo, v66, v0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v72, v30
	v_fma_f32 v74, -v23, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v30
	v_fma_f32 v23, -v23, v73, v72
	v_div_fixup_f32 v72, v28, v26, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v30, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v140
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v26, v26, v140
	v_rcp_f32_e32 v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v28, v30, 1.0
	v_fmac_f32_e32 v30, v49, v30
	v_div_scale_f32 v49, vcc_lo, v140, v26, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v49, v30
	v_fma_f32 v74, -v28, v73, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v30
	v_fma_f32 v28, -v28, v73, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v28, v28, v30, v73
	v_div_fixup_f32 v73, v29, v21, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v139
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v139
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v29, v29, v139
	v_rcp_f32_e32 v30, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v21, v30, 1.0
	v_fmac_f32_e32 v30, v49, v30
	v_div_scale_f32 v49, vcc_lo, v139, v29, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v49, v30
	v_fma_f32 v74, -v21, v65, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v74, v30
	v_div_fixup_f32 v74, v23, v0, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v21, v65, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v21, v30, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v138
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v0, v0, v138
	v_rcp_f32_e32 v23, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v21, v23, 1.0
	v_fmac_f32_e32 v23, v49, v23
	v_div_scale_f32 v49, vcc_lo, v138, v0, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v49, v23
	v_fma_f32 v66, -v21, v65, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v23
	v_fma_f32 v21, -v21, v65, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v49, v21, v23, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v28, v26, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v87
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v26, v26, v87
	v_rcp_f32_e32 v28, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v23, v28, 1.0
	v_fmac_f32_e32 v28, v65, v28
	v_div_scale_f32 v65, vcc_lo, v87, v26, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v28
	v_fma_f32 v140, -v23, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v140, v28
	v_fma_f32 v23, -v23, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v65, v23, v28, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v30, v29, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v88
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v30, v30, v88
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v28, v29, 1.0
	v_fmac_f32_e32 v29, v66, v29
	v_div_scale_f32 v66, vcc_lo, v88, v30, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v66, v29
	v_fma_f32 v140, -v28, v139, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v29
	v_fma_f32 v28, -v28, v139, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v28, v29, v139
	v_div_fixup_f32 v28, v49, v0, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v66, v30, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v0, v0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v29
	v_fma_f32 v138, -v29, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v138, v49
	v_div_scale_f32 v138, vcc_lo, v76, v0, v76
	v_mul_f32_e32 v139, v138, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v29, v139, v138
	v_fmac_f32_e32 v139, v140, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v139, v138
	v_div_fmas_f32 v49, v29, v49, v139
	v_div_fixup_f32 v29, v65, v26, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v49, v0, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v71
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v26, v26, v71
	v_rcp_f32_e32 v87, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v65, v87, 1.0
	v_fmac_f32_e32 v87, v138, v87
	v_div_scale_f32 v138, vcc_lo, v71, v26, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v87
	v_fma_f32 v140, -v65, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v87
	v_fma_f32 v65, -v65, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v65, v65, v87, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v65, v26, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v26, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v75
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v66, v66, v75
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v138, v88
	v_div_scale_f32 v138, vcc_lo, v75, v66, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v88
	v_fma_f32 v140, -v87, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v88
	v_fma_f32 v87, -v87, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v87, v66, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v89
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v0, v0, v89
	v_rcp_f32_e32 v88, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v76, v88, 1.0
	v_fmac_f32_e32 v88, v138, v88
	v_div_scale_f32 v138, vcc_lo, v89, v0, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v88
	v_fma_f32 v140, -v76, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v88
	v_fma_f32 v76, -v76, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v76, v88, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v26, v26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v71
	v_fma_f32 v87, -v71, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v87, v75
	v_div_scale_f32 v87, vcc_lo, v68, v26, v68
	v_mul_f32_e32 v88, v87, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v71, v88, v87
	v_fmac_f32_e32 v88, v138, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v88, v87
	v_div_fmas_f32 v71, v71, v75, v88
	v_div_fixup_f32 v75, v76, v0, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v0, v0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v76
	v_fma_f32 v88, -v76, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v86, v0, v86
	v_mul_f32_e32 v89, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v76, v89, v88
	v_fmac_f32_e32 v89, v138, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v89, v88
	v_div_fmas_f32 v87, v76, v87, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v76, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v87, v0, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_mul_f32_e32 v0, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v25
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v76, v76, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v88, 1.0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v88, v88, v25
	v_rcp_f32_e32 v89, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v76, v89, 1.0
	v_fmac_f32_e32 v89, v138, v89
	v_div_scale_f32 v138, vcc_lo, v25, v88, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v89
	v_fma_f32 v140, -v76, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v89
	v_fma_f32 v76, -v76, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v76, v89, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v76, v71, v26, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v26
	v_fma_f32 v71, -v26, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v71, v68
	v_div_scale_f32 v71, vcc_lo, v82, v0, v82
	v_mul_f32_e32 v87, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v26, v87, v71
	v_fmac_f32_e32 v87, v138, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v87, v71
	v_div_fmas_f32 v26, v26, v68, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v82, v26, v0, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_mul_f32_e32 v0, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v83
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v68, v68, v83
	v_rcp_f32_e32 v87, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v71, v87, 1.0
	v_fmac_f32_e32 v87, v138, v87
	v_div_scale_f32 v138, vcc_lo, v83, v68, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v87
	v_fma_f32 v140, -v71, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v87
	v_fma_f32 v71, -v71, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v87, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v71, v68, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v138, v138, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v139, v87
	v_fma_f32 v140, -v87, v139, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v139
	v_div_scale_f32 v140, vcc_lo, v84, v138, v84
	v_mul_f32_e32 v141, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v87, v141, v140
	v_fmac_f32_e32 v141, v142, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v141, v140
	v_div_fmas_f32 v139, v87, v139, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v139, v138, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v85
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v140, v140, v85
	v_rcp_f32_e32 v141, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v87, v141, 1.0
	v_fmac_f32_e32 v141, v142, v141
	v_div_scale_f32 v142, vcc_lo, v85, v140, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v141
	v_fma_f32 v144, -v87, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v141
	v_fma_f32 v87, -v87, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v141, v87, v141, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v89, v88, v25
	v_div_fixup_f32 v85, v141, v140, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v58, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v68, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v68, v26
	v_div_scale_f32 v68, vcc_lo, v47, v0, v47
	v_mul_f32_e32 v71, v68, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v25, v71, v68
	v_fmac_f32_e32 v71, v88, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v71, v68
	v_div_fmas_f32 v25, v25, v26, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v25, v0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_mul_f32_e32 v0, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v48
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v26, v26, v48
	v_rcp_f32_e32 v71, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v68, v71, 1.0
	v_fmac_f32_e32 v71, v88, v71
	v_div_scale_f32 v88, vcc_lo, v48, v26, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v71
	v_fma_f32 v138, -v68, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v138, v71
	v_fma_f32 v68, -v68, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v71, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v69
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v71, v71, v69
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v138, v89
	v_div_scale_f32 v138, vcc_lo, v69, v71, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v89
	v_fma_f32 v140, -v88, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v89
	v_fma_f32 v88, -v88, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v88, v89, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v89, v89, v71, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v88, v88, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v138, v138, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v139, v88
	v_fma_f32 v140, -v88, v139, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v139
	v_div_scale_f32 v140, vcc_lo, v70, v138, v70
	v_mul_f32_e32 v141, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v88, v141, v140
	v_fmac_f32_e32 v141, v142, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v141, v140
	v_div_fmas_f32 v139, v88, v139, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v138, v139, v138, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v67
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v140, v140, v67
	v_rcp_f32_e32 v141, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v88, v141, 1.0
	v_fmac_f32_e32 v141, v142, v141
	v_div_scale_f32 v142, vcc_lo, v67, v140, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v141
	v_fma_f32 v144, -v88, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v141
	v_fma_f32 v88, -v88, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v141, v88, v141, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v68, v26, v48
	v_div_fixup_f32 v48, v141, v140, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v32
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v32
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v67, v26
	v_div_scale_f32 v67, vcc_lo, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v26
	v_fma_f32 v69, -v25, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v26
	v_fma_f32 v25, -v25, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v26, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v33
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v26, v26, v33
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v33, v26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v24
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v24
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v24, v68, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v71, v70
	v_fma_f32 v140, -v69, v139, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v139, v140, v70
	v_div_fixup_f32 v140, v67, v26, v33
	v_fma_f32 v69, -v69, v139, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v69, v69, v70, v139
	v_div_fixup_f32 v139, v25, v0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v50
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v50
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, vcc_lo, v50, v0, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v26
	v_fma_f32 v67, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v67, v26
	v_fma_f32 v25, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v52, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v51
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v26, v26, v51
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v67, v33
	v_div_scale_f32 v67, vcc_lo, v51, v26, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v67, v33
	v_fma_f32 v71, -v32, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v33
	v_fma_f32 v32, -v32, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v33, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v32, v26, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v112, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v52|, |v51|
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v33, v33, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v67
	v_fma_f32 v71, -v67, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v80, v33, v80
	v_mul_f32_e32 v141, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v67, v141, v71
	v_fmac_f32_e32 v141, v142, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v141, v71
	v_div_fmas_f32 v67, v67, v70, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v67, v33, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v113, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v141, v71
	v_fma_f32 v142, -v71, v141, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v142, v141
	v_div_scale_f32 v142, vcc_lo, v81, v70, v81
	v_mul_f32_e32 v143, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v71, v143, v142
	v_fmac_f32_e32 v143, v144, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v143, v142
	v_div_fmas_f32 v71, v71, v141, v143
	v_div_fixup_f32 v141, v69, v68, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v71, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v43
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v24, v24, v43
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, vcc_lo, v43, v24, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v26
	v_fma_f32 v67, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v67, v26
	v_fma_f32 v25, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v25, v24, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v26, v26, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v67, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v67, v33
	v_div_scale_f32 v67, vcc_lo, v44, v26, v44
	v_mul_f32_e32 v68, v67, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v32, v68, v67
	v_fmac_f32_e32 v68, v69, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v68, v67
	v_div_fmas_f32 v32, v32, v33, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v32, v26, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v45
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v33, v33, v45
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v45, v33, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v46
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v46
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v46, v68, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v71, v70
	v_fma_f32 v142, -v69, v81, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v142, v70
	v_fma_f32 v69, -v69, v81, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v69, v68, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v71
	v_fma_f32 v142, -v71, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v142, v81
	v_div_scale_f32 v142, vcc_lo, v22, v70, v22
	v_mul_f32_e32 v143, v142, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v71, v143, v142
	v_fmac_f32_e32 v143, v144, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v143, v142
	v_div_fmas_f32 v71, v71, v81, v143
	v_div_fixup_f32 v81, v67, v33, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v142, v71, v70, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v18
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v22, v22, v18
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v18, v22, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v26, v25
	v_fma_f32 v33, -v24, v32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v25
	v_fma_f32 v24, -v24, v32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v24, v24, v25, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v19
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v19
	v_rcp_f32_e32 v32, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v26, v32, 1.0
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, vcc_lo, v19, v25, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v33, v32
	v_fma_f32 v67, -v26, v45, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v67, v32
	v_fma_f32 v26, -v26, v45, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v32, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v20
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v32, v32, v20
	v_rcp_f32_e32 v45, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v33, v45, 1.0
	v_fmac_f32_e32 v45, v67, v45
	v_div_scale_f32 v67, vcc_lo, v20, v32, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v45
	v_fma_f32 v69, -v33, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v45
	v_fma_f32 v33, -v33, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v45, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v33, v32, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v45, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v41, v45, v41
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v146, v67, v45, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v42
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v42
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v42, v68, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v71, v70
	v_fma_f32 v144, -v69, v143, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v143, v144, v70
	v_div_fixup_f32 v144, v26, v25, v19
	v_fma_f32 v69, -v69, v143, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v61, v29
	v_mul_f32_e32 v61, v55, v82
	v_mul_f32_e32 v55, v133, v140
	v_mul_f32_e32 v29, v121, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v70, v143
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v70, v59, v21 :: v_dual_mul_f32 v59, v57, v84
	v_mul_f32_e32 v57, v127, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v143, v24, v22, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v69, v68, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v54, v23
	v_mul_f32_e32 v21, v100, v14
	v_mul_f32_e32 v23, v98, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v134, v7
	v_mul_f32_e32 v48, v103, v142
	v_mul_f32_e32 v14, v97, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v38
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v18, v18, v38
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v22, v20
	v_div_scale_f32 v22, vcc_lo, v38, v18, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v22, v20
	v_fma_f32 v25, -v19, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v20
	v_fma_f32 v19, -v19, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v20, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v19, v18, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_mul_f32_e32 v18, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v20, v20, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v22
	v_fma_f32 v25, -v22, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v39, v20, v39
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v22, v26, v25
	v_fmac_f32_e32 v26, v32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v26, v25
	v_div_fmas_f32 v22, v22, v24, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v22, v20, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v34
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v24, v24, v34
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, vcc_lo, v34, v24, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v26
	v_fma_f32 v41, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v41, v26
	v_fma_f32 v25, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v25, v24, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v26, v26, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v41, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, vcc_lo, v35, v26, v35
	v_mul_f32_e32 v42, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v32, v42, v41
	v_fmac_f32_e32 v42, v45, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v42, v41
	v_div_fmas_f32 v32, v32, v33, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v149, v32, v26, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v36
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v33, v33, v36
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, vcc_lo, v36, v33, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v45, v42
	v_fma_f32 v68, -v41, v67, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v60, v28
	v_mul_f32_e32 v60, v56, v83
	v_mul_f32_e32 v56, v128, v139
	v_mul_f32_e32 v28, v122, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v41, v67, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v106, v15
	v_mul_f32_e32 v15, v93, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v42, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v135, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v150, v41, v33, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v31
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v18, v18, v31
	v_rcp_f32_e32 v20, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v19, v20, 1.0
	v_fmac_f32_e32 v20, v22, v20
	v_div_scale_f32 v22, vcc_lo, v31, v18, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v22, v20
	v_fma_f32 v25, -v19, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v20
	v_fma_f32 v19, -v19, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v20, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v19, v18, v31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v132, v87 :: v_dual_mul_f32 v18, v109, v44
	v_mul_f32_e32 v19, v108, v43
	v_mul_f32_e32 v43, v62, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v53, v146 :: v_dual_mul_f32 v7, v118, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v8
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v20, v20, v8
	v_rcp_f32_e32 v24, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v22, v24, 1.0
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v8, v20, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v24
	v_fma_f32 v32, -v22, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v32, v24
	v_fma_f32 v22, -v22, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v24, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v152, v22, v20, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v99, v12
	v_mul_f32_e32 v22, v101, v16
	v_mul_f32_e32 v12, v94, v17
	v_mul_f32_e32 v16, v116, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v105, v144 :: v_dual_mul_f32 v17, v110, v81
	v_mul_f32_e32 v40, v90, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v117, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v24, v24, v9
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, vcc_lo, v9, v24, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v32, v26
	v_fma_f32 v34, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v26
	v_fma_f32 v25, -v25, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v153, v25, v24, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v129, v6 :: v_dual_mul_f32 v25, v130, v11
	v_mul_f32_e32 v11, v107, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v31|, |v24|, |v25|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v10
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v32
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v26, v26, v10
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v32, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v10, v26, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v32, -v32, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v154, v32, v26, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v131, v13
	v_mul_f32_e32 v32, v119, v47
	v_mul_f32_e32 v13, v96, v27
	v_mul_f32_e32 v47, v104, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v115, v149
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v27, |v44|, |v43|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v4
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v33, v33, v4
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v34, v35, 1.0
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v36, v35
	v_fma_f32 v42, -v34, v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v41, v42, v35 :: v_dual_mul_f32 v42, v63, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v95, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v34, v41, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v123, v30
	v_mul_f32_e32 v30, v120, v88
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v53, |v42|, |v11|, |v10|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v35, v41
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v35, v124, v49
	v_mul_f32_e32 v49, v114, v80
	v_mul_f32_e32 v41, v111, v39
	v_mul_f32_e32 v39, v91, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v34, v33, v4
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v125, v65 :: v_dual_mul_f32 v33, v126, v66
	v_dual_mul_f32 v65, v137, v86 :: v_dual_mul_f32 v66, v136, v76
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v70|, |v69|
	v_max3_f32 v5, |v68|, |v36|, |v35|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v92, v9
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v27, |v41|, v53
	v_max3_f32 v53, |v40|, |v39|, |v38|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v4, v4, |v71|, v5
	v_max3_f32 v5, |v67|, |v66|, |v65|
	v_max3_f32 v5, v5, v6, |v26|
	v_max3_f32 v6, |v34|, |v33|, |v64|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max3_f32 v75, v4, v6, v5
	v_max_f32_e64 v4, |v61|, |v60|
	v_max3_f32 v5, |v59|, |v32|, |v30|
	v_max3_f32 v6, |v23|, |v20|, |v21|
	v_max3_f32 v4, v4, |v58|, v5
	v_max3_f32 v5, |v57|, |v56|, |v55|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, v6, |v22|
	v_max3_f32 v6, |v29|, |v28|, |v54|
	v_max3_f32 v76, v4, v6, v5
	v_max3_f32 v4, |v50|, |v19|, |v18|
	v_max3_f32 v5, |v15|, |v12|, |v13|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v79, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, |v49|, v4
	v_max3_f32 v4, |v48|, |v47|, |v46|
	v_max3_f32 v4, v4, v5, |v14|
	v_max3_f32 v5, |v17|, |v16|, |v45|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v0, v0, v5, v4
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v4, v77, v72 :: v_dual_mul_f32 v5, v78, v73
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v78, 0x60, v165
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v62, |v9|, |v4|, |v5|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v53, v53, v62, |v6|
	v_max3_f32 v62, |v8|, |v7|, |v37|
	v_max3_f32 v27, v27, v62, v53
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v53, v75, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v62, v76, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v62, v62, v62
	v_max_f32_e32 v79, v75, v53
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v53, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v76, v62
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v62, 8, v165
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v53, v53, v53 :: v_dual_lshlrev_b32 v76, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v81, v0, v53
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v27, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v82, v27, v0
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v165
	v_and_b32_e32 v27, 4, v165
	v_lshl_add_u32 v53, v0, 9, 0
	v_lshlrev_b32_e32 v74, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v72, v27, 6, 0
	v_lshl_add_u32 v0, v0, 4, 0
	v_lshl_add_u32 v53, v27, 2, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v63, v74, v78
	v_lshl_add_u32 v53, v62, 4, v53
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v53, v53, v76, v63
	v_lshrrev_b32_e32 v63, 3, v2
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b128 v53, v[79:82]
	v_lshlrev_b32_e32 v53, 4, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v53, 0x680, v53, v74
	v_xor_b32_e32 v53, v53, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v53, v72, v63, v53
	ds_load_b128 v[79:82], v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v63, v79
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v75, v79, v79 :: v_dual_mov_b32 v72, v80
	v_max_f32_e32 v77, v80, v80
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v82, v82
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v72, v72, v72 :: v_dual_max_f32 v63, v75, v63
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v72, v77, v72 :: v_dual_mov_b32 v75, v63
	v_max_f32_e32 v53, v53, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v63, v63, v75
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v72
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	v_dual_max_f32 v72, v72, v75 :: v_dual_mov_b32 v75, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v72
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v77, v77, v77
	v_max_f32_e32 v79, v63, v75
	v_max_f32_e32 v63, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v80, v72, v77 :: v_dual_max_f32 v63, v81, v63
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v63, v63, v72
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v81, v63, v72
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v53
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	v_max_f32_e32 v53, v53, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v53
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	v_dual_max_f32 v82, v53, v63 :: v_dual_lshlrev_b32 v53, 3, v62
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v62, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v62, v53
	ds_store_b128 v2, v[79:82]
	v_lshlrev_b32_e32 v2, 5, v27
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v0, v2, v53
	ds_load_b128 v[79:82], v0
.Ltmp54:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v79, v79
	v_dual_max_f32 v2, v81, v81 :: v_dual_max_f32 v27, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v53, v82, v82 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_div_scale_f32 v62, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v72, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v72, v63
	v_div_scale_f32 v72, vcc_lo, v0, 0x40e00000, v0
	v_mul_f32_e32 v73, v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v62, v73, v72
	v_fmac_f32_e32 v73, v75, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v62, v73, v72
	v_max_f32_e32 v72, 0x2b8cbccc, v2
	v_div_fmas_f32 v63, v62, v63, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v72
	v_div_fixup_f32 v0, v63, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v2
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v73, -v2, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v73, v62
	v_div_scale_f32 v73, vcc_lo, v72, 0x40e00000, v72
	v_mul_f32_e32 v75, v73, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v2, v75, v73
	v_fmac_f32_e32 v75, v77, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v75, v73
	v_div_fmas_f32 v73, v2, v62, v75
	v_max_f32_e32 v75, 0x2b8cbccc, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v75
	v_rcp_f32_e32 v27, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v2, v27, 1.0
	v_fmac_f32_e32 v27, v62, v27
	v_div_scale_f32 v62, vcc_lo, v75, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v62, v27
	v_fma_f32 v79, -v2, v77, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v79, v27
	v_fma_f32 v2, -v2, v77, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v2, v27, v77
	v_max_f32_e32 v2, 0x2b8cbccc, v53
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v27
	v_fma_f32 v62, -v27, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v79, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v27, v79, v62
	v_fmac_f32_e32 v79, v80, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v79, v62
	v_div_fmas_f32 v62, v27, v53, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v0.h
	v_mov_b16_e32 v27.h, v63.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v0, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v27
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v0
	v_fma_f32 v80, -v0, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v70, v53, v70
	v_mul_f32_e32 v81, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v0, v81, v80
	v_fmac_f32_e32 v81, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v81, v80
	v_div_fmas_f32 v79, v0, v79, v81
	v_div_scale_f32 v0, null, v53, v53, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v70, v79, v53, v70
	v_rcp_f32_e32 v80, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v0, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v69, v53, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v80
	v_fma_f32 v0, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v0, v80, v82
	v_div_scale_f32 v0, null, v53, v53, v71
	v_div_fixup_f32 v69, v80, v53, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v81, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v81, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v71, v53, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, v82
	v_fmac_f32_e32 v83, v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v83, v82
	v_div_fmas_f32 v81, v0, v81, v83
	v_div_scale_f32 v0, null, v53, v53, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v71, v81, v53, v71
	v_rcp_f32_e32 v82, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v68, v53, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v0, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v0, v82, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 4, v166
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v79, v82, v53, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v0, v0, v78
	v_lshlrev_b32_e32 v78, 10, v165
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 0x1800, v78
	v_and_b32_e32 v78, 16, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v84, 6, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v83, 0, v83, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v68
	v_and_b32_e32 v70, 15, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v76, v83, v0, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v36
	v_rcp_f32_e32 v83, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v36, v53, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v0, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v0, v83, v85
	v_div_scale_f32 v0, null, v53, v53, v35
	v_div_fixup_f32 v36, v83, v53, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v0
	v_fma_f32 v85, -v0, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v35, v53, v35
	v_mul_f32_e32 v86, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, v85
	v_fmac_f32_e32 v86, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v86, v85
	v_div_fmas_f32 v84, v0, v84, v86
	v_div_scale_f32 v0, null, v53, v53, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v35, v84, v53, v35
	v_rcp_f32_e32 v85, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v85, 1.0
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v34, v53, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v86, v85
	v_fma_f32 v88, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v85
	v_fma_f32 v0, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v0, v85, v87
	v_div_scale_f32 v0, null, v53, v53, v33
	v_rcp_f32_e32 v86, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v33, v53, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v0, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v86, v0, v86, v88
	v_div_scale_f32 v0, null, v53, v53, v64
	v_rcp_f32_e32 v87, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v0, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v64, v53, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v90, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v87
	v_fma_f32 v0, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v87, v89
	v_div_scale_f32 v87, null, v53, v53, v67
	v_div_fixup_f32 v0, v0, v53, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v88, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v67, v53, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v53, v53, v66
	v_div_fixup_f32 v64, v87, v53, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v79
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v66, v53, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v53, v53, v65
	v_div_fixup_f32 v66, v88, v53, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v65, v53, v65
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v67, v89, v53, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v64
	v_and_b32_e32 v64, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v67, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 6, v165
	ds_store_b128 v76, v[68:71]
	ds_store_b128 v76, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v0, 0x1b00, v0, v74
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v65, v0, v1, 0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v31
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[66:69], v65
	ds_load_b128 v[79:82], v65 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v31, v53, v31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v79, 4, v66
	v_lshl_or_b32 v67, v80, 4, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v70, v64, v1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v81, 4, v68
	v_lshl_or_b32 v69, v82, 4, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v1
	v_fma_f32 v0, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v0, v1, v70
	v_div_scale_f32 v0, null, v53, v53, v24
	v_div_fixup_f32 v31, v71, v53, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v1, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v24, v53, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v64, v1
	v_fma_f32 v74, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v74, v1
	v_fma_f32 v0, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v0, v1, v70
	v_div_scale_f32 v0, null, v53, v53, v25
	v_div_fixup_f32 v24, v74, v53, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v1, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v25, v53, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v64, v1
	v_fma_f32 v79, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v79, v1
	v_fma_f32 v0, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v0, v1, v70
	v_div_scale_f32 v0, null, v53, v53, v26
	v_div_fixup_f32 v25, v79, v53, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v64, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v26, v53, v26
	v_mul_f32_e32 v70, v64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v0, v70, v64
	v_fmac_f32_e32 v70, v80, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v70, v64
	v_div_fmas_f32 v80, v0, v1, v70
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v77, 0x40e00000, v75
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.h, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_fixup_f32 v26, v80, v53, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v1.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v64, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v70, 0xffff0000, v64
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v70, v70, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v75, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v75, v1
	v_div_scale_f32 v75, vcc_lo, v61, v70, v61
	v_mul_f32_e32 v77, v75, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v0, v77, v75
	v_fmac_f32_e32 v77, v81, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v77, v75
	v_div_fmas_f32 v0, v0, v1, v77
	v_div_scale_f32 v1, null, v70, v70, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v70, v61
	v_rcp_f32_e32 v75, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v1, v75, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, vcc_lo, v60, v70, v60
	v_mul_f32_e32 v81, v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v1, v81, v77
	v_fmac_f32_e32 v81, v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v1, v81, v77
	v_div_fmas_f32 v1, v1, v75, v81
	v_div_scale_f32 v75, null, v70, v70, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v1, v70, v60
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v77, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v58, v70, v58
	v_mul_f32_e32 v82, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v75, v82, v81
	v_fmac_f32_e32 v82, v87, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v82, v81
	v_div_fmas_f32 v87, v75, v77, v82
	v_div_scale_f32 v75, null, v70, v70, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v60, v87, v70, v58
	v_rcp_f32_e32 v77, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v77, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v59, v70, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v82, v81, v77
	v_fma_f32 v88, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v88, v77
	v_fma_f32 v75, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v75, v77, v82
	v_div_scale_f32 v75, null, v70, v70, v32
	v_div_fixup_f32 v61, v88, v70, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v32, v70, v32
	v_mul_f32_e32 v82, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v75, v82, v81
	v_fmac_f32_e32 v82, v89, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v82, v81
	v_div_fmas_f32 v75, v75, v77, v82
	v_div_scale_f32 v77, null, v70, v70, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v77
	v_fma_f32 v82, -v77, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v30, v70, v30
	v_mul_f32_e32 v89, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v77, v89, v82
	v_fmac_f32_e32 v89, v90, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v89, v82
	v_div_fmas_f32 v77, v77, v81, v89
	v_div_scale_f32 v81, null, v70, v70, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v81
	v_fma_f32 v89, -v81, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, vcc_lo, v29, v70, v29
	v_mul_f32_e32 v90, v89, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v81, v90, v89
	v_fmac_f32_e32 v90, v91, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v81, v90, v89
	v_div_fmas_f32 v81, v81, v82, v90
	v_div_scale_f32 v82, null, v70, v70, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v82
	v_fma_f32 v90, -v82, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v28, v70, v28
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v82, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v91, v90
	v_div_fmas_f32 v82, v82, v89, v91
	v_div_scale_f32 v89, null, v70, v70, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v54, v70, v54
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v70, v70, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v89, v70, v54
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v57, v70, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v54, 15, v0
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v70, v70, v56
	v_div_fixup_f32 v1, v90, v70, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v56, v70, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v70, v70, v55
	v_div_fixup_f32 v56, v91, v70, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v93, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v55, v70, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v95, v94, v93 :: v_dual_and_b32 v56, 15, v0
	v_fma_f32 v96, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v93
	v_fma_f32 v92, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v92, v92, v93, v95
	v_div_fixup_f32 v57, v92, v70, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v57, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v70, v70, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[58:61]
	ds_store_b128 v76, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v23, v70, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v1
	v_fma_f32 v56, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v1
	v_fma_f32 v0, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v55, v0, v1, v55
	v_div_scale_f32 v0, null, v70, v70, v20
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v20, v70, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v54, v1
	v_fma_f32 v57, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v1
	v_fma_f32 v0, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v56, v0, v1, v56
	v_div_scale_f32 v0, null, v70, v70, v21
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v21, v70, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v54, v1
	v_fma_f32 v58, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v1
	v_fma_f32 v0, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v0, v1, v57
	v_div_scale_f32 v0, null, v70, v70, v22
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v22, v70, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v54, v1
	v_fma_f32 v59, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v1
	v_fma_f32 v0, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v0, v1, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v73, 0x40e00000, v72
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v63
	v_add3_u32 v1, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v69.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v0
	v_fma_f32 v60, -v0, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v52, v54, v52
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v0, v61, v60
	v_fmac_f32_e32 v61, v72, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v61, v60
	v_div_fmas_f32 v0, v0, v59, v61
	v_div_scale_f32 v59, null, v54, v54, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v54, v52
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v51, v54, v51
	v_mul_f32_e32 v72, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v59, v72, v61
	v_fmac_f32_e32 v72, v73, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v72, v61
	v_div_fmas_f32 v72, v59, v60, v72
	v_div_scale_f32 v59, null, v54, v54, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v51, v72, v54, v51
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v49, v54, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v61, v60
	v_fma_f32 v87, -v59, v73, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v87, v60
	v_fma_f32 v59, -v59, v73, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v59, v60, v73
	v_div_scale_f32 v59, null, v54, v54, v50
	v_div_fixup_f32 v52, v73, v54, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v51
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v50, v54, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v61, v60
	v_fma_f32 v88, -v59, v87, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v60
	v_fma_f32 v59, -v59, v87, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v59, v60, v87
	v_div_scale_f32 v59, null, v54, v54, v19
	v_div_fixup_f32 v72, v87, v54, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v49
	v_and_b32_e32 v49, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v19, v54, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v59, v88, v61
	v_fmac_f32_e32 v88, v89, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v88, v61
	v_div_fmas_f32 v59, v59, v60, v88
	v_div_scale_f32 v60, null, v54, v54, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v60
	v_fma_f32 v88, -v60, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v88, v61
	v_div_scale_f32 v88, vcc_lo, v18, v54, v18
	v_mul_f32_e32 v89, v88, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v60, v89, v88
	v_fmac_f32_e32 v89, v90, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v89, v88
	v_div_fmas_f32 v60, v60, v61, v89
	v_div_scale_f32 v61, null, v54, v54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v61
	v_fma_f32 v89, -v61, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v17, v54, v17
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v61, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v61, v90, v89
	v_div_fmas_f32 v61, v61, v88, v90
	v_div_scale_f32 v88, null, v54, v54, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v16, v54, v16
	v_mul_f32_e32 v91, v90, v89
	v_div_fixup_f32 v28, v82, v70, v28
	v_div_fixup_f32 v29, v81, v70, v29
	v_div_fixup_f32 v30, v77, v70, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v99, v88, v89, v91
	v_div_scale_f32 v88, null, v54, v54, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v45, v54, v45
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v54, v54, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v88, v54, v45
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v89, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v48, v54, v48
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v54, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v89, v54, v48
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v47, v54, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v52, 15, v48
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v54, v54, v46
	v_div_fixup_f32 v47, v90, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v46, v54, v46
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v48, v91, v54, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v45
	v_and_b32_e32 v45, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[87:90], v65
	ds_load_b128 v[91:94], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v46, 15, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v47, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v48, 15, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v62, 0x40e00000, v2
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[49:52]
	ds_store_b128 v76, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v63
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v0
	v_fma_f32 v46, -v0, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v15, v54, v15
	v_mul_f32_e32 v47, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v0, v47, v46
	v_fmac_f32_e32 v47, v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v47, v46
	v_div_fmas_f32 v0, v0, v45, v47
	v_div_scale_f32 v45, null, v54, v54, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v12, v54, v12
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v62, v45, v46, v48
	v_div_scale_f32 v45, null, v54, v54, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v13, v54, v13
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v63, v45, v46, v48
	v_div_scale_f32 v45, null, v54, v54, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v14, v54, v14
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v72, v45, v46, v48
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v45, 0xffff0000, v2
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v68.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v45, v45, v44
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v44, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v46, v46, v47, v49
	v_div_scale_f32 v47, null, v45, v45, v43
	v_div_fixup_f32 v44, v46, v45, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v43, v45, v43
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v47, v50, v49
	v_fmac_f32_e32 v50, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v50, v49
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v45, v45, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v43, v47, v45, v43
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v41, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, v50, v49
	v_fma_f32 v52, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v49
	v_fma_f32 v48, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v51
	v_div_scale_f32 v49, null, v45, v45, v42
	v_div_fixup_f32 v46, v48, v45, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v50, v49
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v44
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v51, -v49, v50, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v42, v45, v42
	v_dual_mul_f32 v52, v51, v50 :: v_dual_and_b32 v41, 15, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v49, v52, v51
	v_fmac_f32_e32 v52, v73, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v52, v51
	v_div_fmas_f32 v49, v49, v50, v52
	v_div_scale_f32 v50, null, v45, v45, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v49, v45, v42
	v_rcp_f32_e32 v51, v50
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v44, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v50, v51, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v11, v45, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v42
	v_and_b32_e32 v43, 15, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v73, v52, v51 :: v_dual_and_b32 v44, 15, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v50, v73, v52
	v_fmac_f32_e32 v73, v95, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v50, v73, v52
	v_div_fmas_f32 v73, v50, v51, v73
	v_div_scale_f32 v50, null, v45, v45, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v73, v45, v11
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v10, v45, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v52, v51
	v_fma_f32 v96, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v51
	v_fma_f32 v50, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v100, v50, v51, v95
	v_div_scale_f32 v50, null, v45, v45, v8
	v_div_fixup_f32 v10, v100, v45, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v50
	v_fma_f32 v52, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v8, v45, v8
	v_mul_f32_e32 v95, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v50, v95, v52
	v_fmac_f32_e32 v95, v96, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v50, v95, v52
	v_div_fmas_f32 v101, v50, v51, v95
	v_div_scale_f32 v50, null, v45, v45, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v101, v45, v8
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v7, v45, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v52, v51
	v_fma_f32 v96, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v51
	v_div_fixup_f32 v0, v0, v54, v15
	v_div_fixup_f32 v16, v99, v54, v16
	v_div_fixup_f32 v17, v61, v54, v17
	v_div_fixup_f32 v19, v59, v54, v19
	v_fma_f32 v50, -v50, v95, v52
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v15, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v18, v60, v54, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v102, v50, v51, v95
	v_div_scale_f32 v50, null, v45, v45, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v102, v45, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v15
	v_med3_f32 v7, v7, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v50, v51, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v37, v45, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v52, v51
	v_fma_f32 v96, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v51
	v_fma_f32 v50, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v50, v50, v51, v95
	v_div_scale_f32 v51, null, v45, v45, v40
	v_div_fixup_f32 v37, v50, v45, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v52, v51
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v52, v95, v52
	v_div_scale_f32 v95, vcc_lo, v40, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v96, v95, v52 :: v_dual_and_b32 v37, 15, v37
	v_fma_f32 v97, -v51, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v52
	v_fma_f32 v51, -v51, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v51, v52, v96
	v_div_scale_f32 v52, null, v45, v45, v39
	v_div_fixup_f32 v40, v51, v45, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v95, v52
	v_fma_f32 v96, -v52, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v39, v45, v39
	v_mul_f32_e32 v97, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v52, v97, v96
	v_fmac_f32_e32 v97, v98, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v97, v96
	v_div_fmas_f32 v52, v52, v95, v97
	v_div_scale_f32 v95, null, v45, v45, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v52, v45, v39
	v_rcp_f32_e32 v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v95, v96, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, vcc_lo, v38, v45, v38
	v_dual_mul_f32 v98, v97, v96 :: v_dual_and_b32 v39, 15, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v95, v98, v97
	v_fmac_f32_e32 v98, v103, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v95, v98, v97
	v_div_fmas_f32 v95, v95, v96, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v95, v45, v38
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v40
	v_rndne_f32_e32 v40, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[46:49], v65
	ds_load_b128 v[95:98], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v40, v40
	v_and_b32_e32 v38, 15, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v40, 15, v40
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[41:44]
	ds_store_b128 v76, v[37:40] offset:512
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v86, v53, v33
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v85, v53, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v35
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v35, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v35, v35
	v_and_b32_e32 v33, 15, v33
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v36, 15, v36
	v_and_b32_e32 v39, 15, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v35, 15, v35
	v_and_b32_e32 v37, 15, v31
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[41:44], v65
	ds_load_b128 v[50:53], v65 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v75, v70, v32
	v_div_fixup_f32 v32, v55, v70, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v28, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v40, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[33:36]
	ds_store_b128 v76, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v65
	ds_load_b128 v[37:40], v65 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v62, v54, v12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v23, 15, v23
	v_and_b32_e32 v28, 15, v28
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v52, 4, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v12
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v56, v70, v20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v37, 4, v33
	v_lshl_or_b32 v26, v39, 4, v35
	v_lshl_or_b32 v33, v40, 4, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v57, v70, v21
	v_div_fixup_f32 v40, v58, v70, v22
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v29
	v_rndne_f32_e32 v29, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v63, v54, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v30
	v_rndne_f32_e32 v30, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v72, v54, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v16
	v_and_b32_e32 v16, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v38
	v_rndne_f32_e32 v20, v31
	v_rndne_f32_e32 v13, v18
	v_rndne_f32_e32 v31, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_and_b32_e32 v18, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_and_b32_e32 v20, 15, v20
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v21, 15, v21
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v13, 15, v13
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v29, 15, v29
	v_and_b32_e32 v30, 15, v30
	v_and_b32_e32 v31, 15, v31
	v_and_b32_e32 v17, 15, v17
	v_and_b32_e32 v19, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[20:23]
	ds_store_b128 v76, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v65
	ds_load_b128 v[28:31], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[12:15]
	ds_store_b128 v76, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v65
	ds_load_b128 v[16:19], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v53, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v166
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v34, v91, 4, v87
	v_lshl_or_b32 v35, v92, 4, v88
	v_lshl_or_b32 v36, v93, 4, v89
	v_lshl_or_b32 v37, v94, 4, v90
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v28, v95, 4, v46
	v_lshl_or_b32 v29, v96, 4, v47
	v_lshl_or_b32 v0, v16, 4, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v12, null, v45, v45, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v17, 4, v13
	v_lshl_or_b32 v17, v18, 4, v14
	v_lshl_or_b32 v18, v50, 4, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v13, v12
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v19, 4, v15
	v_lshl_or_b32 v19, v51, 4, v42
	v_lshl_or_b32 v30, v97, 4, v48
	v_lshl_or_b32 v31, v98, 4, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v14, -v12, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, vcc_lo, v9, v45, v9
	v_mul_f32_e32 v39, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v12, v39, v14
	v_fmac_f32_e32 v39, v40, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v39, v14
	v_div_fmas_f32 v12, v12, v13, v39
	v_div_scale_f32 v13, null, v45, v45, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v9, v12, v45, v9
	v_rcp_f32_e32 v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v39, v14
	v_div_scale_f32 v39, vcc_lo, v4, v45, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v14
	v_fma_f32 v41, -v13, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v14
	v_fma_f32 v13, -v13, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v14, v40
	v_div_scale_f32 v14, null, v45, v45, v5
	v_div_fixup_f32 v12, v13, v45, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v39, v14
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v4, v4, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v14, v39, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v5, v45, v5
	v_dual_mul_f32 v41, v40, v39 :: v_dual_and_b32 v4, 15, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v14, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v41, v40
	v_div_fmas_f32 v14, v14, v39, v41
	v_div_scale_f32 v39, null, v45, v45, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v14, v45, v5
	v_rcp_f32_e32 v40, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v10, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v5, v5, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v10, v10, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v5, v5
	v_cvt_i32_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v6, v45, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v5, 15, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 15, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v43, 4, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v14, v39, v45, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v8
	v_rndne_f32_e32 v8, v9
	v_rndne_f32_e32 v9, v12
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, v43, v3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v11, v11
	v_and_b32_e32 v6, 15, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 15, v8
	v_and_b32_e32 v9, 15, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v11, 15, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[4:7]
	ds_store_b128 v76, v[8:11] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v65
	ds_load_b128 v[8:11], v65 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v9, 4, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s0, s36, v43
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v10, 4, v6
	v_lshl_or_b32 v42, v11, 4, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s37, 0, s0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s33, 7, v44
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v8, 4, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v4.l, 8, v67.l
	v_and_b16 v4.h, 0xff, v66.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v12, s5, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v5.h, v2.l, v1.l
	v_or_b16 v5.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v26.l
	v_lshlrev_b16 v4.l, 8, v25.l
	v_and_b16 v4.h, 0xff, v24.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 16, v43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v37.l
	v_or_b16 v6.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v8, vcc_lo
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 48, v43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v36.l
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v24, 63, v165
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[5:6], v4, s[8:11], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v6, 32, v43
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v4, s0, s36, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v5, null, s37, 0, s0
	v_add_co_u32 v8, s0, s36, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s37, 0, s0
	v_add_co_u32 v10, s0, s36, v10
	v_add_co_ci_u32_e64 v11, null, s37, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[4:5]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_lshlrev_b16 v4.l, 8, v35.l
	v_and_b16 v4.h, 0xff, v34.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[34:35], v[8:9]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v22.l
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, 16, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[30:31], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[34:35], v[10:11]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_or_b16 v9.h, v5.h, v5.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 32, v12
	v_mad_u64_u32 v[4:5], null, v4, s5, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v21.l
	v_and_b16 v2.l, 0xff, v20.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 48, v12
	v_mad_u64_u32 v[12:13], null, v6, s5, v[7:8]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v9.l, v2.l, v1.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v5, s5, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v7, 0x80000000, v4, s3
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v0.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[8:9], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e64 v0, 0x80000000, v12, s1
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v4.l, 8, v19.l
	v_and_b16 v4.h, 0xff, v18.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	v_lshlrev_b16 v6.l, 8, v40.l
	v_and_b16 v6.h, 0xff, v39.l
	buffer_store_b64 v[7:8], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v4.h, v4.l
	v_or_b16 v15.h, v5.h, v5.l
	v_or_b16 v15.l, v6.h, v6.l
	v_dual_cndmask_b32 v4, 0x80000000, v13 :: v_dual_and_b32 v5, 2, v43
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s28, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v64.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[14:15], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v44
	v_mov_b16_e32 v1.l, v27.h
	v_add3_u32 v0, v0, v5, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s1, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, v24, v3
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v10, s6, s36, v24
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s28, s0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s37, 0, s6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v165
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[10:11]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	v_cmp_eq_u32_e64 s1, 0, v2
	v_add_lshl_u32 v1, v1, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 188
		.amdhsa_kernarg_size 120
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 188
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 30304
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 188
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.quad	.Ltmp54-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 188
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 46
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
