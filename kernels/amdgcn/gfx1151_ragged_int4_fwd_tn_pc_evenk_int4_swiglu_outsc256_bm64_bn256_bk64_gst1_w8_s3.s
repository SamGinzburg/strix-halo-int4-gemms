	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
	v_mov_b32_e32 v153, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v2, 63, v153
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
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
	v_rcp_iflag_f32_e32 v0, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v0
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
	s_sub_i32 s6, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s6
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s6, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s5, s3
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s4, s4, 31
	s_mul_i32 s9, s7, s5
	s_add_i32 s17, s7, 1
	s_sub_i32 s16, s8, s9
	s_load_b256 s[8:15], s[0:1], 0x20
	s_sub_i32 s18, s16, s5
	s_cmp_ge_u32 s16, s5
	s_cselect_b32 s7, s17, s7
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s7, 1
	s_cmp_ge_u32 s16, s5
	s_cselect_b32 s5, s17, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s4
	s_sub_i32 s80, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s80, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s6
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s8, s10, s2
	s_addc_u32 s9, s11, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[16:17], s[6:7], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[74:75], s[8:9], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s8, s12, s2
	s_addc_u32 s9, s13, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s14, s2
	s_addc_u32 s3, s15, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[76:77], s[8:9], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[78:79], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s74, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s75, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[78:79], v[0:1]
	v_add_nc_u32_e32 v0, s74, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s74, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_lshrrev_b32_e32 v156, 7, v153
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v154, 15, v153
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v155, 0x7f, v153
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v195, 30, v156
	v_or_b32_e32 v194, 28, v156
	v_or_b32_e32 v193, 26, v156
	v_or_b32_e32 v192, 24, v156
	v_or_b32_e32 v191, 22, v156
	v_or_b32_e32 v190, 20, v156
	v_or_b32_e32 v189, 18, v156
	v_or_b32_e32 v188, 16, v156
	v_or_b32_e32 v175, 14, v156
	v_or_b32_e32 v162, 12, v156
	v_or_b32_e32 v161, 10, v156
	v_or_b32_e32 v160, 8, v156
	v_or_b32_e32 v159, 6, v156
	v_or_b32_e32 v158, 4, v156
	v_or_b32_e32 v157, 2, v156
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_mov_b32_e32 v131, 0
	s_lshl_b32 s17, s80, 8
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s18, s72, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x50
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v3, 6, v153
	v_lshrrev_b32_e32 v6, 1, v153
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	.loc	1 1068 35                       ; ragged.py:1068:35
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v0, 1, v155
	.loc	1 1058 13                       ; ragged.py:1058:13
	v_add_nc_u32_e32 v163, 0, v154
	v_and_b32_e32 v6, 0x70, v6
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_or_b32_e32 v9, 28, v3
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_mul_i32 s21, s73, s16
	v_or_b32_e32 v11, 20, v3
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_or_b32_e32 v8, 12, v3
	v_add_nc_u32_e32 v165, v163, v6
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshlrev_b32_e32 v6, 1, v156
	s_lshl_b32 s5, s5, 8
	s_lshl_b32 s4, s4, 8
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v164, s17, v0
	v_or_b32_e32 v4, 0x300, v153
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshl_add_u32 v6, s21, 1, v6
	v_or_b32_e32 v5, 0x700, v153
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[252:253], null, v9, s20, v[2:3]
	v_or_b32_e32 v9, 24, v3
	v_add_nc_u32_e32 v12, 61, v6
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v13, 33, v6
	v_dual_mov_b32 v33, v1 :: v_dual_add_nc_u32 v14, 13, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[130:131], null, s20, v9, v[2:3]
	v_or_b32_e32 v9, 16, v3
	v_mad_u64_u32 v[131:132], null, s20, v11, v[2:3]
	v_mul_lo_u32 v11, s72, v12
	v_mul_lo_u32 v12, s72, v195
	v_mad_u64_u32 v[132:133], null, s20, v9, v[2:3]
	v_or_b32_e32 v9, 8, v3
	v_mad_u64_u32 v[133:134], null, v8, s20, v[2:3]
	v_or_b32_e32 v8, 4, v3
	v_add3_u32 v11, v11, s5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[134:135], null, s20, v9, v[2:3]
	v_add_nc_u32_e32 v9, 57, v6
	v_mad_u64_u32 v[135:136], null, s20, v8, v[2:3]
	v_mad_u64_u32 v[136:137], null, s20, v3, v[2:3]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v8, s72, v9
	v_add_nc_u32_e32 v9, 53, v6
	v_subrev_nc_u32_e32 v11, s4, v11
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v3, 49, v6
	v_or_b32_e32 v7, 0x3f0, v153
	v_mul_lo_u32 v2, s72, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v9, 1, v11
	v_add3_u32 v8, v8, s5, v0
	v_mul_lo_u32 v3, s72, v3
	v_add_nc_u32_e32 v11, 45, v6
	v_or_b32_e32 v10, 0x7f0, v153
	v_mov_b32_e32 v67, v1
	v_subrev_nc_u32_e32 v8, s4, v8
	v_add3_u32 v2, v2, s5, v0
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s1, s18, s73
	v_mov_b32_e32 v48, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add3_u32 v3, v3, s5, v0
	v_add_nc_u32_e32 v8, 1, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:196
	scratch_store_b32 off, v192, off offset:404
	v_lshlrev_b32_e32 v9, 1, v12
	v_subrev_nc_u32_e32 v2, s4, v2
	v_mul_lo_u32 v12, s72, v193
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v24, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v2, 1, v2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v9, off offset:200
	scratch_store_b32 off, v154, off offset:348
	scratch_store_b32 off, v191, off offset:400
	v_mul_lo_u32 v9, s72, v194
	scratch_store_b32 off, v2, off offset:212 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v12
	v_add_nc_u32_e32 v12, 37, v6
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v52, v1
	v_dual_mov_b32 v54, v1 :: v_dual_lshlrev_b32 v9, 1, v9
	scratch_store_b32 off, v8, off offset:204 ; 4-byte Folded Spill
	v_mul_lo_u32 v8, s72, v11
	v_mov_b32_e32 v17, v1
	v_add_nc_u32_e32 v11, 41, v6
	scratch_store_b32 off, v9, off offset:208 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s72, v192
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v28, v1
	v_add3_u32 v8, v8, s5, v0
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v62, v1
	v_dual_mov_b32 v64, v1 :: v_dual_lshlrev_b32 v9, 1, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:216
	scratch_store_b32 off, v155, off offset:352
	v_subrev_nc_u32_e32 v2, s4, v3
	v_mul_lo_u32 v3, s72, v11
	scratch_store_b32 off, v9, off offset:224 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s72, v190
	v_mul_lo_u32 v11, s72, v191
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v2, 1, v2
	v_mov_b32_e32 v66, v1
	v_mov_b32_e32 v68, v1
	v_add3_u32 v3, v3, s5, v0
	v_mov_b32_e32 v27, v1
	v_lshlrev_b32_e32 v9, 1, v9
	scratch_store_b32 off, v2, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s4, v8
	v_mul_lo_u32 v8, s72, v12
	v_mul_lo_u32 v12, s72, v13
	v_mul_lo_u32 v13, s72, v189
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v2, 1, v2
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v26, v1
	v_add3_u32 v8, v8, s5, v0
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v70, v1
	v_subrev_nc_u32_e32 v8, s4, v8
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v73, v1
	v_mov_b32_e32 v74, v1
	v_add_nc_u32_e32 v8, 1, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:228
	scratch_store_b32 off, v156, off offset:356
	v_lshlrev_b32_e32 v2, 1, v11
	v_add3_u32 v11, v12, s5, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:244
	scratch_store_b32 off, v193, off offset:408
	v_lshlrev_b32_e32 v8, 1, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:232
	scratch_store_b32 off, v157, off offset:360
	v_subrev_nc_u32_e32 v11, s4, v11
	v_subrev_nc_u32_e32 v2, s4, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:248
	scratch_store_b32 off, v194, off offset:412
	v_add_nc_u32_e32 v3, 29, v6
	v_add_nc_u32_e32 v8, 1, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:252
	scratch_store_b32 off, v188, off offset:388
	v_mul_lo_u32 v8, s72, v188
	v_add_nc_u32_e32 v12, 25, v6
	v_mul_lo_u32 v3, s72, v3
	v_dual_mov_b32 v35, v1 :: v_dual_add_nc_u32 v2, 1, v2
	v_dual_mov_b32 v34, v1 :: v_dual_add_nc_u32 v11, 17, v6
	v_mov_b32_e32 v36, v1
	v_lshlrev_b32_e32 v8, 1, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:236
	scratch_store_b32 off, v158, off offset:364
	v_mul_lo_u32 v2, s72, v12
	v_add3_u32 v3, v3, s5, v0
	v_mul_lo_u32 v12, s72, v175
	v_mul_lo_u32 v11, s72, v11
	v_mov_b32_e32 v37, v1
	v_mul_lo_u32 v13, s72, v162
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mov_b32_e32 v30, v1
	v_add3_u32 v2, v2, s5, v0
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v41, v1
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v9, off offset:240 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s4, v2
	v_dual_mov_b32 v42, v1 :: v_dual_add_nc_u32 v9, 21, v6
	v_mov_b32_e32 v40, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v43, v1 :: v_dual_add_nc_u32 v2, 1, v2
	scratch_store_b32 off, v3, off offset:260 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v12
	scratch_store_b32 off, v8, off offset:256 ; 4-byte Folded Spill
	v_add3_u32 v8, v11, s5, v0
	v_mul_lo_u32 v9, s72, v9
	v_mul_lo_u32 v11, s72, v161
	v_dual_mov_b32 v39, v1 :: v_dual_add_nc_u32 v12, 5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v8, s4, v8
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_dual_mov_b32 v75, v1 :: v_dual_add_nc_u32 v8, 1, v8
	scratch_store_b32 off, v3, off offset:264 ; 4-byte Folded Spill
	v_add3_u32 v3, v9, s5, v0
	v_lshlrev_b32_e32 v9, 1, v13
	scratch_store_b32 off, v2, off offset:268 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s72, v14
	v_mul_lo_u32 v13, s72, v160
	v_subrev_nc_u32_e32 v3, s4, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:284
	scratch_store_b32 off, v195, off offset:416
	v_mov_b32_e32 v14, v1
	v_dual_mov_b32 v76, v1 :: v_dual_add_nc_u32 v3, 1, v3
	v_add3_u32 v2, v2, s5, v0
	scratch_store_b32 off, v9, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v9, 9, v6
	v_mul_lo_u32 v6, s72, v6
	v_mov_b32_e32 v47, v1
	v_subrev_nc_u32_e32 v2, s4, v2
	v_mov_b32_e32 v55, v1
	v_mul_lo_u32 v9, s72, v9
	v_mov_b32_e32 v57, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v77, v1 :: v_dual_add_nc_u32 v2, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:292
	scratch_store_b32 off, v159, off offset:368
	v_mul_lo_u32 v2, s72, v159
	v_add3_u32 v8, v9, s5, v0
	v_lshlrev_b32_e32 v9, 1, v13
	scratch_store_b32 off, v3, off offset:276 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v11
	v_mul_lo_u32 v11, s72, v156
	v_subrev_nc_u32_e32 v8, s4, v8
	v_dual_mov_b32 v49, v1 :: v_dual_lshlrev_b32 v2, 1, v2
	scratch_store_b32 off, v3, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s72, v12
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v12, v1
	v_add3_u32 v3, v3, s5, v0
	s_add_i32 s5, s5, s72
	v_mov_b32_e32 v13, v1
	v_add3_u32 v0, s5, v6, v0
	v_mul_lo_u32 v6, s72, v157
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mov_b32_e32 v78, v1
	v_mov_b32_e32 v79, v1
	v_subrev_nc_u32_e32 v0, s4, v0
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v82, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v83, v1 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:296
	scratch_store_b32 off, v160, off offset:372
	v_add_nc_u32_e32 v2, 1, v8
	scratch_store_b32 off, v9, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s72, v158
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v11
	scratch_store_b32 off, v2, off offset:300 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v84, v1
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v9
	v_add_nc_u32_e32 v0, 0, v4
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v85, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:304
	scratch_store_b32 off, v161, off offset:376
	v_add_nc_u32_e32 v2, 1, v3
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v0, 0, v5
	v_mov_b32_e32 v5, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:308
	scratch_store_b32 off, v162, off offset:380
	v_lshlrev_b32_e32 v2, 1, v6
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v189, off offset:392 ; 4-byte Folded Spill
	v_mov_b32_e32 v6, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:312
	scratch_store_b32 off, v175, off offset:384
	scratch_store_b32 off, v0, off offset:332
	v_add_nc_u32_e32 v0, 0, v10
	scratch_store_b32 off, v190, off offset:396 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v10, v1
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_dual_mov_b32 v69, v1 :: v_dual_add_nc_u32 v0, 0, v153
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v87, v1
	v_mov_b32_e32 v88, v1
	v_mov_b32_e32 v89, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v91, v1
	v_mov_b32_e32 v92, v1
	v_mov_b32_e32 v93, v1
	v_mov_b32_e32 v94, v1
	v_mov_b32_e32 v95, v1
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v97, v1
	v_mov_b32_e32 v98, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v100, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v102, v1
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
	v_add_nc_u32_e32 v204, v0, v153
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s1, s1, s16
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1058 13                       ; ragged.py:1058:13
	s_mov_b32 s0, 0
	s_add_u32 s3, s1, s72
	.loc	1 1058 19 is_stmt 0             ; ragged.py:1058:19
	s_lshl_b32 s19, s20, 5
	s_lshl_b32 s20, s72, 6
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_mov_b32 s21, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v153, off offset:344
	scratch_store_b32 off, v0, off offset:340
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	scratch_load_b32 v129, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v0, s74, v136
	v_add_nc_u32_e32 v137, s74, v135
	v_add_nc_u32_e32 v138, s74, v134
	v_add_nc_u32_e32 v140, s74, v132
	v_add_nc_u32_e32 v139, s74, v133
	v_add_nc_u32_e32 v141, s74, v131
	v_add_nc_u32_e32 v142, s74, v130
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_add_nc_u32_e32 v143, s74, v252
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	s_clause 0x7
	buffer_load_u8 v0, v0, s[4:7], 0 offen
	buffer_load_u8 v137, v137, s[4:7], 0 offen
	buffer_load_u8 v138, v138, s[4:7], 0 offen
	buffer_load_u8 v140, v140, s[4:7], 0 offen
	buffer_load_u8 v141, v141, s[4:7], 0 offen
	buffer_load_u8 v142, v142, s[4:7], 0 offen
	buffer_load_u8 v143, v143, s[4:7], 0 offen
	buffer_load_u8 v139, v139, s[4:7], 0 offen
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add_nc_u32_e32 v252, s19, v252
	v_add_nc_u32_e32 v130, s19, v130
	v_add_nc_u32_e32 v131, s19, v131
	v_add_nc_u32_e32 v132, s19, v132
	v_add_nc_u32_e32 v133, s19, v133
	v_add_nc_u32_e32 v134, s19, v134
	v_add_nc_u32_e32 v135, s19, v135
	v_add_nc_u32_e32 v136, s19, v136
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s21, s21, 32
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(8)
	v_add3_u32 v208, v129, s0, v164
	scratch_load_b32 v129, off, off offset:312 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v208
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	buffer_load_u16 v227, v144, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v207, v129, s0, v164
	scratch_load_b32 v129, off, off offset:304 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v207
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v207, s3, v207
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v228, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v206, v129, s0, v164
	scratch_load_b32 v129, off, off offset:296 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v206
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v206, s3, v206
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v229, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v205, v129, s0, v164
	scratch_load_b32 v129, off, off offset:288 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v205
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v205, s3, v205
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v230, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v203, v129, s0, v164
	scratch_load_b32 v129, off, off offset:280 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v203
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v203, s3, v203
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v231, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v202, v129, s0, v164
	scratch_load_b32 v129, off, off offset:272 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v202
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v202, s3, v202
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v232, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v201, v129, s0, v164
	scratch_load_b32 v129, off, off offset:264 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v201
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v201, s3, v201
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v233, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v200, v129, s0, v164
	scratch_load_b32 v129, off, off offset:256 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v144, s1, v200
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v200, s3, v200
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v234, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add3_u32 v199, v129, s0, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v144, s1, v199
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v129, v144, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v144, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v198, v144, s0, v164
	v_add_nc_u32_e32 v144, s1, v198
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v198, s3, v198
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v235, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v144, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v197, v144, s0, v164
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v144, s1, v197
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v197, s3, v197
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v236, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v144, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v196, v144, s0, v164
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v144, s1, v196
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v196, s3, v196
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v237, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v144, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v195, v144, s0, v164
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v144, s1, v195
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v195, s3, v195
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v238, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v144, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v194, v144, s0, v164
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v144, s1, v194
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v194, s3, v194
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v239, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v144, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v193, v144, s0, v164
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v144, s1, v193
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v193, s3, v193
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v240, v144, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v144, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v192, v144, s0, v164
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v144, s1, v192
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v192, s3, v192
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v241, v144, s[12:15], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v144, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v144, v0
	ds_store_b8 v144, v137 offset:256
	ds_store_b8 v144, v138 offset:512
	ds_store_b8 v144, v140 offset:1024
	ds_store_b8 v144, v141 offset:1280
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v139
	ds_store_b8 v144, v142 offset:1536
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v0, v163 offset:320
	ds_load_u8 v137, v163 offset:256
	ds_load_u8 v143, v163 offset:336
	ds_load_u8 v144, v163 offset:272
	ds_load_u8 v141, v163 offset:352
	ds_load_u8 v142, v163 offset:288
	ds_load_u8 v139, v163 offset:368
	ds_load_u8 v140, v163 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v163 offset:448
	ds_load_u8 v138, v163 offset:384
	ds_load_u8 v214, v163 offset:464
	ds_load_u8 v215, v163 offset:400
	ds_load_u8 v211, v163 offset:480
	ds_load_u8 v212, v163 offset:416
	ds_load_u8 v209, v163 offset:496
	ds_load_u8 v210, v163 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v163 offset:64
	ds_load_u8 v145, v163
	ds_load_u8 v219, v163 offset:80
	ds_load_u8 v217, v163 offset:96
	ds_load_u8 v213, v163 offset:112
	ds_load_u8 v222, v163 offset:16
	ds_load_u8 v218, v163 offset:32
	ds_load_u8 v216, v163 offset:48
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v145, v145, v138, 0xc0c0004
	ds_load_u8 v138, v163 offset:192
	ds_load_u8 v146, v163 offset:128
	ds_load_u8 v225, v163 offset:208
	ds_load_u8 v226, v163 offset:144
	ds_load_u8 v223, v163 offset:224
	ds_load_u8 v224, v163 offset:160
	ds_load_u8 v220, v163 offset:240
	ds_load_u8 v221, v163 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v146, v146, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	ds_load_u8 v184, v163 offset:960
	ds_load_u8 v185, v163 offset:896
	ds_load_u8 v0, v163 offset:1024
	v_lshl_or_b32 v137, v146, 16, v145
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v172, v163 offset:976
	ds_load_u8 v173, v163 offset:912
	ds_load_u8 v175, v163 offset:992
	ds_load_u8 v166, v163 offset:928
	ds_load_u8 v160, v163 offset:944
	ds_load_u8 v186, v163 offset:832
	ds_load_u8 v187, v163 offset:768
	ds_load_u8 v177, v163 offset:848
	ds_load_u8 v178, v163 offset:784
	ds_load_u8 v145, v163 offset:864
	ds_load_u8 v168, v163 offset:800
	ds_load_u8 v161, v163 offset:880
	ds_load_u8 v162, v163 offset:816
	ds_load_u8 v188, v163 offset:704
	ds_load_u8 v189, v163 offset:640
	ds_load_u8 v179, v163 offset:720
	ds_load_u8 v180, v163 offset:656
	ds_load_u8 v170, v163 offset:736
	ds_load_u8 v171, v163 offset:672
	ds_load_u8 v146, v163 offset:752
	ds_load_u8 v147, v163 offset:688
	ds_load_u8 v190, v163 offset:576
	ds_load_u8 v191, v163 offset:512
	ds_load_u8 v181, v163 offset:592
	ds_load_u8 v182, v163 offset:528
	ds_load_u8 v174, v163 offset:608
	ds_load_u8 v176, v163 offset:544
	ds_load_u8 v167, v163 offset:624
	ds_load_u8 v169, v163 offset:560
	ds_load_u8 v0, v163 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v243, v163 offset:1152
	ds_load_u8 v151, v163 offset:1088
	ds_load_u8 v0, v163 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v156, v163 offset:1472
	ds_load_u8 v0, v163 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v148, v163 offset:1488
	ds_load_u8 v149, v163 offset:1424
	ds_load_u8 v254, v163 offset:1504
	ds_load_u8 v255, v163 offset:1440
	ds_load_u8 v0, v163 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v158, v163 offset:1408
	ds_load_u8 v159, v163 offset:1344
	ds_load_u8 v155, v163 offset:1360
	ds_load_u8 v157, v163 offset:1296
	ds_load_u8 v153, v163 offset:1376
	ds_load_u8 v154, v163 offset:1312
	ds_load_u8 v150, v163 offset:1392
	ds_load_u8 v152, v163 offset:1328
	ds_load_u8 v0, v163 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v183, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	ds_load_u8 v0, v163 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v204, v227
	ds_store_b16 v204, v228 offset:512
	ds_store_b16 v204, v229 offset:1024
	ds_store_b16 v204, v230 offset:1536
	ds_store_b16 v204, v231 offset:2048
	ds_store_b16 v204, v232 offset:2560
	ds_store_b16 v204, v233 offset:3072
	ds_store_b16 v204, v234 offset:3584
	ds_store_b16 v204, v129 offset:4096
	ds_store_b16 v204, v235 offset:4608
	ds_store_b16 v204, v236 offset:5120
	ds_store_b16 v204, v237 offset:5632
	ds_store_b16 v204, v238 offset:6144
	ds_store_b16 v204, v239 offset:6656
	ds_store_b16 v204, v240 offset:7168
	ds_store_b16 v204, v241 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v129, v165 offset:1280
	ds_load_u8 v227, v165 offset:1024
	ds_load_u8 v229, v165 offset:1920
	ds_load_u8 v230, v165 offset:1664
	ds_load_u8 v231, v165 offset:1408
	ds_load_u8 v232, v165 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v129, v227, v129, 0xc0c0004
	ds_load_u8 v227, v165 offset:1792
	ds_load_u8 v228, v165 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	ds_load_u8 v228, v165 offset:256
	ds_load_u8 v233, v165
	ds_load_u8 v234, v165 offset:896
	ds_load_u8 v235, v165 offset:640
	ds_load_u8 v236, v165 offset:384
	ds_load_u8 v237, v165 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v233, v233, v228, 0xc0c0004
	ds_load_u8 v228, v165 offset:768
	ds_load_u8 v238, v165 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v238, v238, v228, 0xc0c0004
	v_lshl_or_b32 v228, v227, 16, v129
	v_perm_b32 v129, v144, v143, 0xc0c0004
	v_perm_b32 v143, v215, v214, 0xc0c0004
	v_perm_b32 v214, v222, v219, 0xc0c0004
	v_perm_b32 v215, v226, v225, 0xc0c0004
	v_lshl_or_b32 v227, v238, 16, v233
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v144, v143, 16, v129
	v_perm_b32 v129, v142, v141, 0xc0c0004
	v_perm_b32 v141, v212, v211, 0xc0c0004
	v_perm_b32 v211, v218, v217, 0xc0c0004
	v_perm_b32 v212, v224, v223, 0xc0c0004
	v_lshl_or_b32 v143, v215, 16, v214
	v_wmma_i32_16x16x16_iu4 v[65:72], v[227:228], v[137:138], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v141, 16, v129
	v_perm_b32 v129, v140, v139, 0xc0c0004
	v_perm_b32 v139, v210, v209, 0xc0c0004
	v_perm_b32 v209, v216, v213, 0xc0c0004
	v_perm_b32 v210, v221, v220, 0xc0c0004
	v_lshl_or_b32 v141, v212, 16, v211
	v_perm_b32 v211, v237, v236, 0xc0c0004
	v_lshl_or_b32 v140, v139, 16, v129
	v_perm_b32 v129, v232, v231, 0xc0c0004
	v_lshl_or_b32 v139, v210, 16, v209
	v_perm_b32 v209, v230, v229, 0xc0c0004
	v_perm_b32 v212, v235, v234, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[227:228], v[143:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[227:228], v[141:142], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[227:228], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v210, v209, 16, v129
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v129, s3, v208
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v209, v212, 16, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[209:210], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[209:210], v[143:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[209:210], v[141:142], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[209:210], v[139:140], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v208, s0, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_u8 v208, v208, s[12:15], 0 offen
	buffer_load_u8 v129, v129, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v209, s0, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v209, v209, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v210, s0, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v210, v210, s[12:15], 0 offen
	buffer_load_u8 v207, v207, s[12:15], 0 offen
	buffer_load_u8 v206, v206, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v211, s0, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v211, v211, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v212, s0, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v212, v212, s[12:15], 0 offen
	buffer_load_u8 v205, v205, s[12:15], 0 offen
	buffer_load_u8 v203, v203, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v213, s0, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v213, v213, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v214, s0, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v214, v214, s[12:15], 0 offen
	buffer_load_u8 v202, v202, s[12:15], 0 offen
	buffer_load_u8 v201, v201, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v215, s0, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_u8 v215, v215, s[12:15], 0 offen
	buffer_load_u8 v216, v200, s[12:15], 0 offen
	v_lshlrev_b16 v200.l, 8, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v227.l, v129.l, v200.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v129, s3, v199
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_lshlrev_b16 v200.l, 8, v209.l
	v_or_b16 v227.h, v207.l, v200.l
	v_lshlrev_b16 v200.l, 8, v210.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v228.l, v206.l, v200.l
	v_lshlrev_b16 v200.l, 8, v211.l
	v_or_b16 v228.h, v205.l, v200.l
	v_lshlrev_b16 v200.l, 8, v212.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v229.l, v203.l, v200.l
	v_lshlrev_b16 v200.l, 8, v213.l
	s_waitcnt vmcnt(4)
	v_or_b16 v229.h, v202.l, v200.l
	v_lshlrev_b16 v200.l, 8, v214.l
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v230.l, v201.l, v200.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v199, s0, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_u8 v199, v199, s[12:15], 0 offen
	buffer_load_u8 v129, v129, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v200.l, 8, v215.l
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v230.h, v216.l, v200.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v200, s0, v0
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v200, v200, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v201, s0, v0
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v201, v201, s[12:15], 0 offen
	buffer_load_u8 v198, v198, s[12:15], 0 offen
	buffer_load_u8 v197, v197, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v202, s0, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v202, v202, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v203, s0, v0
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v203, v203, s[12:15], 0 offen
	buffer_load_u8 v196, v196, s[12:15], 0 offen
	buffer_load_u8 v195, v195, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v205, s0, v0
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v205, v205, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v206, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v206, v206, s[12:15], 0 offen
	buffer_load_u8 v194, v194, s[12:15], 0 offen
	buffer_load_u8 v193, v193, s[12:15], 0 offen
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v207, s0, v0
	s_clause 0x1
	buffer_load_u8 v207, v207, s[12:15], 0 offen
	buffer_load_u8 v208, v192, s[12:15], 0 offen
	v_lshlrev_b16 v192.l, 8, v199.l
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_add_i32 s0, s0, s20
	s_cmp_lt_i32 s21, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_or_b16 v231.l, v129.l, v192.l
	v_lshlrev_b16 v192.l, 8, v200.l
	v_or_b16 v231.h, v198.l, v192.l
	v_lshlrev_b16 v192.l, 8, v201.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v232.l, v197.l, v192.l
	v_lshlrev_b16 v192.l, 8, v202.l
	v_or_b16 v232.h, v196.l, v192.l
	v_lshlrev_b16 v192.l, 8, v203.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v233.l, v195.l, v192.l
	v_lshlrev_b16 v192.l, 8, v205.l
	s_waitcnt vmcnt(3)
	v_or_b16 v233.h, v194.l, v192.l
	v_lshlrev_b16 v192.l, 8, v206.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v234.l, v193.l, v192.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v192.l, 8, v207.l
	s_waitcnt vmcnt(0)
	v_or_b16 v234.h, v208.l, v192.l
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v129, v165 offset:3328
	ds_load_u8 v235, v165 offset:3072
	ds_load_u8 v236, v165 offset:3840
	ds_load_u8 v237, v165 offset:3584
	ds_load_u8 v225, v165 offset:3968
	ds_load_u8 v226, v165 offset:3712
	ds_load_u8 v238, v165 offset:3456
	ds_load_u8 v239, v165 offset:3200
	ds_load_u8 v240, v165 offset:2304
	ds_load_u8 v241, v165 offset:2048
	ds_load_u8 v0, v165 offset:2816
	ds_load_u8 v242, v165 offset:2560
	ds_load_u8 v244, v165 offset:2944
	ds_load_u8 v245, v165 offset:2688
	ds_load_u8 v246, v165 offset:2432
	ds_load_u8 v247, v165 offset:2176
	ds_load_u8 v217, v165 offset:5376
	ds_load_u8 v218, v165 offset:5120
	ds_load_u8 v219, v165 offset:5888
	ds_load_u8 v220, v165 offset:5632
	ds_load_u8 v209, v165 offset:6016
	ds_load_u8 v210, v165 offset:5760
	ds_load_u8 v211, v165 offset:5504
	ds_load_u8 v212, v165 offset:5248
	ds_load_u8 v221, v165 offset:4352
	ds_load_u8 v222, v165 offset:4096
	ds_load_u8 v223, v165 offset:4864
	ds_load_u8 v224, v165 offset:4608
	ds_load_u8 v213, v165 offset:4992
	ds_load_u8 v214, v165 offset:4736
	ds_load_u8 v215, v165 offset:4480
	ds_load_u8 v216, v165 offset:4224
	ds_load_u8 v200, v165 offset:7424
	ds_load_u8 v201, v165 offset:7168
	ds_load_u8 v202, v165 offset:7936
	ds_load_u8 v203, v165 offset:7680
	ds_load_u8 v192, v165 offset:8064
	ds_load_u8 v193, v165 offset:7808
	ds_load_u8 v194, v165 offset:7552
	ds_load_u8 v195, v165 offset:7296
	ds_load_u8 v205, v165 offset:6400
	ds_load_u8 v206, v165 offset:6144
	ds_load_u8 v207, v165 offset:6912
	ds_load_u8 v208, v165 offset:6656
	ds_load_u8 v196, v165 offset:7040
	ds_load_u8 v197, v165 offset:6784
	ds_load_u8 v198, v165 offset:6528
	ds_load_u8 v199, v165 offset:6272
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v204, v227
	ds_store_b16_d16_hi v204, v227 offset:512
	ds_store_b16 v204, v228 offset:1024
	ds_store_b16_d16_hi v204, v228 offset:1536
	ds_store_b16 v204, v229 offset:2048
	ds_store_b16_d16_hi v204, v229 offset:2560
	ds_store_b16 v204, v230 offset:3072
	ds_store_b16_d16_hi v204, v230 offset:3584
	ds_store_b16 v204, v231 offset:4096
	ds_store_b16_d16_hi v204, v231 offset:4608
	ds_store_b16 v204, v232 offset:5120
	ds_store_b16_d16_hi v204, v232 offset:5632
	ds_store_b16 v204, v233 offset:6144
	ds_store_b16_d16_hi v204, v233 offset:6656
	ds_store_b16 v204, v234 offset:7168
	ds_store_b16_d16_hi v204, v234 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v227, v165 offset:1280
	ds_load_u8 v228, v165 offset:1024
	ds_load_u8 v229, v165 offset:1920
	ds_load_u8 v230, v165 offset:1664
	ds_load_u8 v231, v165 offset:1408
	ds_load_u8 v232, v165 offset:1152
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v129, v235, v129, 0xc0c0004
	v_perm_b32 v0, v242, v0, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	ds_load_u8 v228, v165 offset:1792
	ds_load_u8 v233, v165 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v230, v229, 16, v231
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v228, v233, v228, 0xc0c0004
	ds_load_u8 v233, v165 offset:256
	ds_load_u8 v234, v165
	ds_load_u8 v248, v165 offset:896
	ds_load_u8 v249, v165 offset:640
	ds_load_u8 v250, v165 offset:384
	ds_load_u8 v251, v165 offset:128
	v_lshl_or_b32 v228, v228, 16, v227
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	ds_load_u8 v234, v165 offset:768
	ds_load_u8 v253, v165 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v232, v251, v250, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v234, v253, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v227, v234, 16, v233
	v_perm_b32 v233, v249, v248, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[227:228], v[137:138], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v229, v233, 16, v232
	v_wmma_i32_16x16x16_iu4 v[49:56], v[227:228], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[227:228], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[227:228], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[229:230], v[137:138], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[229:230], v[139:140], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v137, v187, v186, 0xc0c0004
	v_perm_b32 v138, v185, v184, 0xc0c0004
	v_perm_b32 v139, v191, v190, 0xc0c0004
	v_perm_b32 v140, v189, v188, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[229:230], v[141:142], v[41:48] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v141, v241, v240, 0xc0c0004
	v_lshl_or_b32 v138, v138, 16, v137
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[229:230], v[143:144], v[25:32] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v139, v237, v236, 0xc0c0004
	v_perm_b32 v143, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v140, v139, 16, v129
	v_lshl_or_b32 v139, v0, 16, v141
	v_perm_b32 v0, v178, v177, 0xc0c0004
	v_perm_b32 v129, v173, v172, 0xc0c0004
	v_perm_b32 v141, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[137:138], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v142, v129, 16, v0
	v_lshl_or_b32 v141, v143, 16, v141
	v_perm_b32 v0, v168, v145, 0xc0c0004
	v_perm_b32 v129, v166, v175, 0xc0c0004
	v_perm_b32 v143, v176, v174, 0xc0c0004
	v_perm_b32 v145, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[141:142], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v144, v129, 16, v0
	v_perm_b32 v0, v169, v167, 0xc0c0004
	v_lshl_or_b32 v143, v145, 16, v143
	v_perm_b32 v129, v147, v146, 0xc0c0004
	v_perm_b32 v145, v162, v161, 0xc0c0004
	v_perm_b32 v146, v160, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[143:144], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v160, v129, 16, v0
	v_perm_b32 v0, v239, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v161, v146, 16, v145
	v_perm_b32 v129, v226, v225, 0xc0c0004
	v_perm_b32 v145, v247, v246, 0xc0c0004
	v_perm_b32 v146, v245, v244, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[160:161], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v167, v129, 16, v0
	v_lshl_or_b32 v166, v146, 16, v145
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v0, v165 offset:3328
	ds_load_u8 v129, v165 offset:3072
	ds_load_u8 v145, v165 offset:3968
	ds_load_u8 v146, v165 offset:3712
	ds_load_u8 v147, v165 offset:3456
	ds_load_u8 v162, v165 offset:3200
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[166:167], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[166:167], v[141:142], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[166:167], v[143:144], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[166:167], v[160:161], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v165 offset:3840
	ds_load_u8 v139, v165 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v139, v129, 0xc0c0004
	ds_load_u8 v139, v165 offset:2304
	ds_load_u8 v140, v165 offset:2048
	ds_load_u8 v166, v165 offset:2944
	ds_load_u8 v167, v165 offset:2688
	ds_load_u8 v168, v165 offset:2432
	ds_load_u8 v169, v165 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v165 offset:2816
	ds_load_u8 v170, v165 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v140, 0xc0c0004
	v_lshl_or_b32 v140, v129, 16, v0
	v_perm_b32 v0, v162, v147, 0xc0c0004
	v_perm_b32 v129, v146, v145, 0xc0c0004
	v_perm_b32 v145, v169, v168, 0xc0c0004
	v_perm_b32 v146, v167, v166, 0xc0c0004
	v_lshl_or_b32 v139, v170, 16, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v167, v129, 16, v0
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_lshl_or_b32 v166, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[160:161], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[137:138], v[9:16] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:128
	scratch_load_b32 v138, off, off offset:176
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[141:142], v[25:32] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v141, v224, v223, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[143:144], v[41:48] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v129, v158, v156, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[57:64], v[166:167], v[160:161], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v159, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v137, v137, v151, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v139, v243, v138, 0xc0c0004
	v_lshl_or_b32 v138, v129, 16, v0
	v_perm_b32 v0, v218, v217, 0xc0c0004
	v_perm_b32 v129, v220, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v137, v139, 16, v137
	v_perm_b32 v139, v222, v221, 0xc0c0004
	v_lshl_or_b32 v140, v129, 16, v0
	v_perm_b32 v0, v157, v155, 0xc0c0004
	v_perm_b32 v129, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v139, v141, 16, v139
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:172
	scratch_load_b32 v142, off, off offset:180
	v_perm_b32 v149, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[137:138], v[65:72] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v142, off, off offset:148
	scratch_load_b32 v143, off, off offset:152
	s_waitcnt vmcnt(0)
	v_perm_b32 v143, v143, v142, 0xc0c0004
	v_lshl_or_b32 v142, v129, 16, v0
	v_perm_b32 v0, v154, v153, 0xc0c0004
	v_perm_b32 v129, v255, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v141, v143, 16, v141
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:164
	scratch_load_b32 v144, off, off offset:168
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[141:142], v[81:88] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v144, off, off offset:140
	scratch_load_b32 v145, off, off offset:144
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v145, v144, 0xc0c0004
	v_lshl_or_b32 v144, v129, 16, v0
	v_perm_b32 v0, v152, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v143, v145, 16, v143
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:184
	scratch_load_b32 v145, off, off offset:188
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[143:144], v[97:104] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v145, v129, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:156
	scratch_load_b32 v146, off, off offset:160
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:132
	scratch_load_b32 v147, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v147, v147, v146, 0xc0c0004
	v_lshl_or_b32 v146, v129, 16, v0
	v_perm_b32 v0, v212, v211, 0xc0c0004
	v_perm_b32 v129, v210, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v145, v147, 16, v145
	v_perm_b32 v147, v216, v215, 0xc0c0004
	v_lshl_or_b32 v148, v129, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[145:146], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v149, 16, v147
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[147:148], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[147:148], v[141:142], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[147:148], v[143:144], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[147:148], v[145:146], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v0, v165 offset:5376
	ds_load_u8 v129, v165 offset:5120
	ds_load_u8 v147, v165 offset:6016
	ds_load_u8 v148, v165 offset:5760
	ds_load_u8 v149, v165 offset:5504
	ds_load_u8 v150, v165 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v165 offset:5888
	ds_load_u8 v139, v165 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v139, v129, 0xc0c0004
	ds_load_u8 v139, v165 offset:4352
	ds_load_u8 v140, v165 offset:4096
	ds_load_u8 v151, v165 offset:4992
	ds_load_u8 v152, v165 offset:4736
	ds_load_u8 v153, v165 offset:4480
	ds_load_u8 v154, v165 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v165 offset:4864
	ds_load_u8 v155, v165 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v155, v140, 0xc0c0004
	v_lshl_or_b32 v140, v129, 16, v0
	v_perm_b32 v0, v150, v149, 0xc0c0004
	v_perm_b32 v129, v148, v147, 0xc0c0004
	v_perm_b32 v147, v154, v153, 0xc0c0004
	v_perm_b32 v149, v152, v151, 0xc0c0004
	v_lshl_or_b32 v139, v155, 16, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v148, v129, 16, v0
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:96
	scratch_load_b32 v129, off, off offset:116
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_lshl_or_b32 v147, v149, 16, v147
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[145:146], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[137:138], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[141:142], v[25:32] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v141, v208, v207, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[147:148], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[147:148], v[145:146], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v149, v197, v196, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:56
	scratch_load_b32 v137, off, off offset:84
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v137, v129, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:8
	scratch_load_b32 v138, off, off offset:124
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v137, v138, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:108
	scratch_load_b32 v139, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v139, v139, v138, 0xc0c0004
	v_lshl_or_b32 v138, v129, 16, v0
	v_perm_b32 v0, v201, v200, 0xc0c0004
	v_perm_b32 v129, v203, v202, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v137, v139, 16, v137
	v_perm_b32 v139, v206, v205, 0xc0c0004
	v_lshl_or_b32 v140, v129, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:48
	scratch_load_b32 v129, off, off offset:60
	v_lshl_or_b32 v139, v141, 16, v139
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[137:138], v[65:72] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:20
	scratch_load_b32 v141, off, off offset:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v141, v129, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:104
	scratch_load_b32 v142, off, off offset:112
	s_waitcnt vmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v142, off, off offset:72
	scratch_load_b32 v143, off, off offset:76
	s_waitcnt vmcnt(0)
	v_perm_b32 v143, v143, v142, 0xc0c0004
	v_lshl_or_b32 v142, v129, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:36
	scratch_load_b32 v129, off, off offset:40
	v_lshl_or_b32 v141, v143, 16, v141
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[141:142], v[81:88] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:12
	scratch_load_b32 v143, off, off offset:16
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v143, v129, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:92
	scratch_load_b32 v144, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v144, off, off offset:64
	scratch_load_b32 v145, off, off offset:68
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v145, v144, 0xc0c0004
	v_lshl_or_b32 v144, v129, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:80
	scratch_load_b32 v129, off, off offset:88
	v_lshl_or_b32 v143, v145, 16, v143
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[143:144], v[97:104] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:44
	scratch_load_b32 v145, off, off offset:52
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v145, v129, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:24
	scratch_load_b32 v146, off, off offset:32
	s_waitcnt vmcnt(0)
	v_perm_b32 v146, v146, v145, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off
	scratch_load_b32 v147, off, off offset:4
	s_waitcnt vmcnt(0)
	v_perm_b32 v147, v147, v145, 0xc0c0004
	v_lshl_or_b32 v145, v129, 16, v0
	v_perm_b32 v0, v195, v194, 0xc0c0004
	v_perm_b32 v129, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v146, v147, 16, v146
	v_perm_b32 v147, v199, v198, 0xc0c0004
	v_lshl_or_b32 v148, v129, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[145:146], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v147, v149, 16, v147
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[147:148], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[147:148], v[141:142], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[147:148], v[143:144], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[147:148], v[145:146], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v0, v165 offset:7424
	ds_load_u8 v129, v165 offset:7168
	ds_load_u8 v147, v165 offset:8064
	ds_load_u8 v148, v165 offset:7808
	ds_load_u8 v149, v165 offset:7552
	ds_load_u8 v150, v165 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v165 offset:7936
	ds_load_u8 v139, v165 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v139, v129, 0xc0c0004
	ds_load_u8 v139, v165 offset:6400
	ds_load_u8 v140, v165 offset:6144
	ds_load_u8 v151, v165 offset:7040
	ds_load_u8 v152, v165 offset:6784
	ds_load_u8 v153, v165 offset:6528
	ds_load_u8 v154, v165 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v165 offset:6912
	ds_load_u8 v155, v165 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v155, v140, 0xc0c0004
	v_lshl_or_b32 v140, v129, 16, v0
	v_perm_b32 v0, v150, v149, 0xc0c0004
	v_perm_b32 v129, v148, v147, 0xc0c0004
	v_perm_b32 v147, v154, v153, 0xc0c0004
	v_perm_b32 v149, v152, v151, 0xc0c0004
	v_lshl_or_b32 v139, v155, 16, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v148, v129, 16, v0
	v_lshl_or_b32 v147, v149, 16, v147
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[145:146], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[137:138], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[141:142], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[147:148], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[147:148], v[145:146], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v135, v94
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v94, v3
	s_clause 0x13                           ; 80-byte Folded Reload
	scratch_load_b32 v3, off, off offset:420
	scratch_load_b32 v153, off, off offset:344
	scratch_load_b32 v154, off, off offset:348
	scratch_load_b32 v155, off, off offset:352
	scratch_load_b32 v156, off, off offset:356
	scratch_load_b32 v157, off, off offset:360
	scratch_load_b32 v158, off, off offset:364
	scratch_load_b32 v159, off, off offset:368
	scratch_load_b32 v160, off, off offset:372
	scratch_load_b32 v161, off, off offset:376
	scratch_load_b32 v162, off, off offset:380
	scratch_load_b32 v175, off, off offset:384
	scratch_load_b32 v188, off, off offset:388
	scratch_load_b32 v189, off, off offset:392
	scratch_load_b32 v190, off, off offset:396
	scratch_load_b32 v191, off, off offset:400
	scratch_load_b32 v192, off, off offset:404
	scratch_load_b32 v193, off, off offset:408
	scratch_load_b32 v194, off, off offset:412
	scratch_load_b32 v195, off, off offset:416
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v184, v65
	v_cvt_f32_i32_e32 v185, v66
	v_cvt_f32_i32_e32 v187, v67
	v_cvt_f32_i32_e32 v186, v68
	v_cvt_f32_i32_e32 v142, v69
	v_cvt_f32_i32_e32 v143, v70
	v_cvt_f32_i32_e32 v144, v71
	v_cvt_f32_i32_e32 v163, v72
	v_cvt_f32_i32_e32 v164, v73
	v_cvt_f32_i32_e32 v139, v74
	v_cvt_f32_i32_e32 v140, v75
	v_cvt_f32_i32_e32 v141, v76
	v_cvt_f32_i32_e32 v129, v77
	v_cvt_f32_i32_e32 v132, v78
	v_cvt_f32_i32_e32 v131, v79
	v_cvt_f32_i32_e32 v130, v80
	v_cvt_f32_i32_e32 v180, v81
	v_cvt_f32_i32_e32 v181, v82
	v_cvt_f32_i32_e32 v183, v83
	v_cvt_f32_i32_e32 v182, v84
	v_cvt_f32_i32_e32 v166, v85
	v_cvt_f32_i32_e32 v167, v86
	v_cvt_f32_i32_e32 v168, v87
	v_cvt_f32_i32_e32 v169, v88
	v_cvt_f32_i32_e32 v165, v89
	v_cvt_f32_i32_e32 v136, v90
	v_cvt_f32_i32_e32 v137, v91
	v_cvt_f32_i32_e32 v138, v92
	v_cvt_f32_i32_e32 v77, v93
	v_cvt_f32_i32_e32 v134, v95
	v_cvt_f32_i32_e32 v133, v96
	v_cvt_f32_i32_e32 v176, v97
	v_cvt_f32_i32_e32 v177, v98
	v_cvt_f32_i32_e32 v179, v99
	v_cvt_f32_i32_e32 v178, v100
	v_cvt_f32_i32_e32 v171, v101
	v_cvt_f32_i32_e32 v172, v102
	v_cvt_f32_i32_e32 v173, v103
	v_cvt_f32_i32_e32 v174, v104
	v_cvt_f32_i32_e32 v170, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v76, v109
	v_cvt_f32_i32_e32 v100, v110
	v_cvt_f32_i32_e32 v99, v111
	v_cvt_f32_i32_e32 v98, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v110, v119
	v_cvt_f32_i32_e32 v111, v120
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v95, v122
	v_cvt_f32_i32_e32 v96, v123
	v_cvt_f32_i32_e32 v97, v124
	v_cvt_f32_i32_e32 v65, v125
	v_cvt_f32_i32_e32 v103, v126
	v_cvt_f32_i32_e32 v102, v127
	v_cvt_f32_i32_e32 v101, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v92, v2
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v72, v6
	v_cvt_f32_i32_e32 v73, v7
	v_cvt_f32_i32_e32 v74, v8
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v69, v10
	v_cvt_f32_i32_e32 v70, v11
	v_cvt_f32_i32_e32 v68, v12
	v_cvt_f32_i32_e32 v8, v13
	v_cvt_f32_i32_e32 v67, v14
	v_cvt_f32_i32_e32 v66, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v90, v17
	v_cvt_f32_i32_e32 v89, v18
	v_cvt_f32_i32_e32 v87, v19
	v_cvt_f32_i32_e32 v88, v20
	v_cvt_f32_i32_e32 v81, v21
	v_cvt_f32_i32_e32 v80, v22
	v_cvt_f32_i32_e32 v79, v23
	v_cvt_f32_i32_e32 v78, v24
	v_cvt_f32_i32_e32 v82, v25
	v_cvt_f32_i32_e32 v18, v26
	v_cvt_f32_i32_e32 v17, v27
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v7, v29
	v_cvt_f32_i32_e32 v21, v30
	v_cvt_f32_i32_e32 v20, v31
	v_cvt_f32_i32_e32 v19, v32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v83, v35
	v_cvt_f32_i32_e32 v84, v36
	v_cvt_f32_i32_e32 v32, v37
	v_cvt_f32_i32_e32 v31, v38
	v_cvt_f32_i32_e32 v30, v39
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v28, v41
	v_cvt_f32_i32_e32 v14, v42
	v_cvt_f32_i32_e32 v13, v43
	v_cvt_f32_i32_e32 v12, v44
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v24, v46
	v_cvt_f32_i32_e32 v23, v47
	v_cvt_f32_i32_e32 v22, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v33, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v41, v53
	v_cvt_f32_i32_e32 v39, v54
	v_cvt_f32_i32_e32 v40, v55
	v_cvt_f32_i32_e32 v38, v56
	v_cvt_f32_i32_e32 v35, v57
	v_cvt_f32_i32_e32 v11, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v9, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v27, v62
	v_cvt_f32_i32_e32 v26, v63
	v_cvt_f32_i32_e32 v25, v64
.LBB0_7:                                ; %Flow487
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v0, 1, v153
	v_lshlrev_b32_e32 v1, 5, v153
	v_and_b32_e32 v42, 0xf0, v153
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s9, 0xffff
	s_mov_b32 s67, 0x31027000
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v0, 28, v0
	v_and_b32_e32 v1, 32, v1
	v_lshl_add_u32 v2, v42, 2, 0
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s64, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v46, v2, v1, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(17)
	v_add_co_u32 v0, s0, s74, v154
	v_add_co_ci_u32_e64 v1, null, s75, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 16, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s1, s74, v0
	v_add_co_ci_u32_e64 v1, null, s75, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 1, v0
	v_cndmask_b32_e32 v47, 0x80000000, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[78:79], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v154
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s74, v0
	v_add_co_ci_u32_e64 v1, null, s75, 0, s4
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[76:77], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[78:79], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s74, v0
	v_add_co_ci_u32_e64 v1, null, s75, 0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v45, 1, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[76:77], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[78:79], v[0:1]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_or_b32_e32 v0, s17, v153
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[1:2], null, s18, s16, v[0:1]
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v0, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v2, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v45, vcc_lo
	s_clause 0x3
	buffer_load_u16 v44, v47, s[64:67], 0 offen
	buffer_load_u16 v0, v0, s[64:67], 0 offen
	buffer_load_u16 v2, v2, s[64:67], 0 offen
	buffer_load_u16 v47, v43, s[64:67], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s64, s10
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v49, v185, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v45, v42, 1, 0
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v2
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v61, v179, v42 :: v_dual_lshlrev_b32 v2, 16, v47
	v_dual_mul_f32 v48, v186, v44 :: v_dual_lshlrev_b32 v43, 1, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v116, v114, v2
	v_mul_f32_e32 v117, v113, v2
	v_mul_f32_e32 v119, v112, v2
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v43, v43, s[64:67], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v47, v187, v44 :: v_dual_and_b32 v4, 0x80, v153
	v_mul_f32_e32 v50, v184, v44
	v_mul_f32_e32 v64, v115, v2
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v71, v71, v44
	v_mul_f32_e32 v91, v91, v44
	v_mul_f32_e32 v69, v69, v44
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v46, v43
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 16, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[112:115], v45
	ds_load_b128 v[123:126], v45 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v8, v8, v44 :: v_dual_mul_f32 v7, v7, v43
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v53, v181, v43
	v_mul_f32_e32 v55, v180, v43
	v_mul_f32_e32 v0, v183, v43
	v_mul_f32_e32 v147, v137, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v87, v87, v43
	v_mul_f32_e32 v89, v89, v43
	v_mul_f32_e32 v79, v79, v43
	v_mul_f32_e32 v15, v15, v43
	v_mul_f32_e32 v17, v17, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v51, v50, v112
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v52, v182, v43 :: v_dual_mul_f32 v63, v176, v42
	v_mul_f32_e32 v60, v178, v42
	v_mul_f32_e32 v57, v177, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v54, v49, v113 :: v_dual_mul_f32 v59, v48, v115
	v_mul_f32_e32 v118, v47, v114
	v_dual_mul_f32 v47, v55, v112 :: v_dual_mul_f32 v56, v53, v113
	v_mul_f32_e32 v58, v52, v115
	v_dual_mul_f32 v60, v60, v115 :: v_dual_mul_f32 v61, v61, v114
	v_dual_mul_f32 v48, v119, v112 :: v_dual_mul_f32 v53, v64, v114
	v_dual_mul_f32 v50, v117, v113 :: v_dual_mul_f32 v55, v144, v44
	v_mul_f32_e32 v52, v116, v115
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v64, v142, v44 :: v_dual_mul_f32 v115, v167, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v62, v0, v114 :: v_dual_mul_f32 v49, v63, v112
	v_dual_mul_f32 v57, v57, v113 :: v_dual_mul_f32 v0, v163, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v113, v168, v43
	v_dual_mul_f32 v63, v143, v44 :: v_dual_mul_f32 v112, v169, v43
	v_mul_f32_e32 v127, v174, v42
	v_dual_mul_f32 v114, v166, v43 :: v_dual_mul_f32 v143, v171, v42
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v128, v173, v42 :: v_dual_mul_f32 v119, v64, v123
	v_dual_mul_f32 v142, v172, v42 :: v_dual_mul_f32 v121, v55, v125
	v_mul_f32_e32 v144, v111, v2
	v_dual_mul_f32 v110, v110, v2 :: v_dual_mul_f32 v115, v115, v124
	v_dual_mul_f32 v109, v109, v2 :: v_dual_mul_f32 v120, v63, v124
	v_mul_f32_e32 v108, v108, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v122, v0, v126
	v_dual_mul_f32 v114, v114, v123 :: v_dual_mul_f32 v117, v112, v126
	v_dual_mul_f32 v116, v113, v125 :: v_dual_mul_f32 v113, v127, v126
	v_dual_mul_f32 v64, v143, v123 :: v_dual_mul_f32 v111, v142, v124
	v_dual_mul_f32 v112, v128, v125 :: v_dual_mul_f32 v107, v107, v2
	v_dual_mul_f32 v63, v108, v123 :: v_dual_mul_f32 v108, v109, v124
	v_dual_mul_f32 v109, v110, v125 :: v_dual_mul_f32 v110, v144, v126
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v124, v141, v44
	v_mul_f32_e32 v125, v140, v44
	v_dual_mul_f32 v126, v139, v44 :: v_dual_mul_f32 v97, v97, v2
	v_dual_mul_f32 v146, v138, v43 :: v_dual_mul_f32 v95, v95, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[138:141], v45 offset:512
	ds_load_b128 v[142:145], v45 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v164, v44 :: v_dual_mul_f32 v149, v106, v42
	v_dual_mul_f32 v123, v165, v43 :: v_dual_mul_f32 v128, v170, v42
	v_mul_f32_e32 v148, v136, v43
	v_mul_f32_e32 v106, v105, v42
	v_mul_f32_e32 v105, v104, v42
	v_mul_f32_e32 v99, v99, v42
	v_mul_f32_e32 v96, v96, v2
	v_mul_f32_e32 v130, v130, v44
	v_mul_f32_e32 v100, v100, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v37, v37, v2
	v_mul_f32_e32 v152, v33, v2
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v29, v29, v42
	v_dual_mul_f32 v31, v31, v42 :: v_dual_mul_f32 v70, v70, v44
	v_mul_f32_e32 v68, v68, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v55, v0, v138 :: v_dual_mul_f32 v136, v126, v139
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v132, v44 :: v_dual_mul_f32 v127, v123, v138
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v104, v107, v138 :: v_dual_mul_f32 v107, v149, v141
	v_mul_f32_e32 v137, v125, v140
	v_dual_mul_f32 v123, v128, v138 :: v_dual_mul_f32 v126, v146, v141
	v_dual_mul_f32 v138, v124, v141 :: v_dual_mul_f32 v95, v95, v139
	v_dual_mul_f32 v124, v148, v139 :: v_dual_mul_f32 v97, v97, v141
	v_mul_f32_e32 v125, v147, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v128, v131, v44 :: v_dual_mul_f32 v141, v101, v2
	v_mul_f32_e32 v98, v98, v42
	v_mul_f32_e32 v147, v65, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v65, v0, v143
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v1, s72, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v105, v105, v139 :: v_dual_mul_f32 v106, v106, v140
	v_dual_mul_f32 v96, v96, v140 :: v_dual_mul_f32 v131, v134, v43
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[64:67], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v139, v129, v44
	v_mul_f32_e32 v129, v135, v43
	v_dual_mul_f32 v135, v103, v2 :: v_dual_mul_f32 v134, v133, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v133, v130, v145
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v140, v102, v2 :: v_dual_mul_f32 v129, v129, v143
	v_mul_f32_e32 v146, v77, v43
	v_dual_mul_f32 v76, v76, v42 :: v_dual_mul_f32 v103, v98, v145
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v132, v128, v144
	v_dual_mul_f32 v130, v131, v144 :: v_dual_mul_f32 v101, v100, v143
	v_dual_mul_f32 v131, v134, v145 :: v_dual_mul_f32 v102, v99, v144
	v_mul_f32_e32 v99, v141, v145
	v_dual_mul_f32 v77, v135, v143 :: v_dual_mul_f32 v98, v140, v144
	v_dual_mul_f32 v134, v139, v142 :: v_dual_mul_f32 v1, v93, v44
	v_mul_f32_e32 v128, v146, v142
	v_mul_f32_e32 v100, v76, v142
	v_dual_mul_f32 v76, v147, v142 :: v_dual_mul_f32 v147, v88, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v149, v85, v42
	v_mul_f32_e32 v35, v35, v2
	v_mul_f32_e32 v13, v13, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s72, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s65, s72, s65
	s_ashr_i32 s73, s65, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v46, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[139:142], v45
	ds_load_b128 v[143:146], v45 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v94, v44
	v_mul_f32_e32 v46, v92, v44
	v_mul_f32_e32 v92, v90, v43
	v_mul_f32_e32 v148, v86, v42
	v_mul_f32_e32 v84, v84, v42
	v_mul_f32_e32 v36, v36, v2
	v_mul_f32_e32 v151, v34, v2
	v_mul_f32_e32 v30, v30, v42
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v135, v91, v139
	v_dual_mul_f32 v150, v83, v42 :: v_dual_mul_f32 v85, v148, v139
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v93, v1, v142 :: v_dual_mul_f32 v90, v0, v141
	v_dual_mul_f32 v88, v92, v139 :: v_dual_mul_f32 v1, v73, v44
	v_mul_f32_e32 v89, v89, v140
	v_dual_mul_f32 v94, v46, v140 :: v_dual_mul_f32 v83, v84, v142
	v_dual_mul_f32 v86, v147, v142 :: v_dual_mul_f32 v33, v37, v139
	v_dual_mul_f32 v87, v87, v141 :: v_dual_mul_f32 v46, v149, v140
	v_mul_f32_e32 v37, v152, v141
	v_dual_mul_f32 v84, v150, v141 :: v_dual_mul_f32 v73, v81, v43
	v_mul_f32_e32 v34, v36, v140
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v74, v44
	v_dual_mul_f32 v74, v80, v43 :: v_dual_mul_f32 v139, v41, v2
	v_mul_f32_e32 v32, v32, v42
	v_mul_f32_e32 v140, v39, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v141, v38, v2 :: v_dual_mul_f32 v80, v71, v143
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v36, v151, v142 :: v_dual_mul_f32 v81, v72, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v78, v78, v43 :: v_dual_mul_f32 v91, v1, v145
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v92, v0, v146
	v_dual_mul_f32 v72, v73, v143 :: v_dual_mul_f32 v73, v74, v144
	v_dual_mul_f32 v38, v32, v143 :: v_dual_mul_f32 v39, v31, v144
	v_dual_mul_f32 v31, v30, v145 :: v_dual_mul_f32 v32, v29, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v71, v82, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v0, v139, v143 :: v_dual_mul_f32 v29, v40, v145
	v_dual_mul_f32 v74, v79, v145 :: v_dual_mul_f32 v1, v140, v144
	v_mul_f32_e32 v30, v141, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v82, v12, v42
	v_mul_f32_e32 v143, v11, v2
	v_mul_f32_e32 v145, v9, v2
	v_mul_f32_e32 v144, v10, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[9:12], v45 offset:512
	ds_load_b128 v[139:142], v45 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v40, v75, v44
	v_mul_f32_e32 v28, v28, v42
	v_mul_f32_e32 v18, v18, v43
	v_mul_f32_e32 v14, v14, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v41, v78, v146
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v40, v40, v9 :: v_dual_mul_f32 v75, v69, v10
	v_mul_f32_e32 v71, v71, v9
	v_mul_f32_e32 v147, v35, v9
	v_dual_mul_f32 v146, v28, v9 :: v_dual_mul_f32 v45, v18, v10
	v_dual_mul_f32 v78, v70, v11 :: v_dual_mul_f32 v9, v143, v10
	v_mul_f32_e32 v79, v68, v12
	v_dual_mul_f32 v69, v15, v12 :: v_dual_mul_f32 v68, v17, v11
	v_mul_f32_e32 v35, v82, v12
	v_dual_mul_f32 v18, v14, v10 :: v_dual_mul_f32 v15, v21, v43
	v_dual_mul_f32 v28, v13, v11 :: v_dual_mul_f32 v13, v66, v44
	v_dual_mul_f32 v10, v144, v11 :: v_dual_mul_f32 v21, v22, v42
	v_mul_f32_e32 v11, v145, v12
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v12, v67, v44
	v_dual_mul_f32 v14, v16, v44 :: v_dual_mul_f32 v17, v19, v43
	v_mul_f32_e32 v16, v20, v43
	v_mul_f32_e32 v19, v24, v42
	v_mul_f32_e32 v20, v23, v42
	v_mul_f32_e32 v22, v27, v2
	v_mul_f32_e32 v23, v26, v2
	v_dual_mul_f32 v24, v25, v2 :: v_dual_mul_f32 v15, v15, v140
	v_dual_mul_f32 v2, v5, v2 :: v_dual_mul_f32 v19, v19, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v5, 0xbfb8aa3b, v40 :: v_dual_mul_f32 v6, v6, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v13, v13, v141
	v_dual_mul_f32 v25, v12, v140 :: v_dual_mul_f32 v44, v7, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v12, v6, v139
	v_mul_f32_e32 v66, v8, v139
	v_dual_mul_f32 v16, v16, v141 :: v_dual_mul_f32 v17, v17, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v14, v14, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v20, v20, v141 :: v_dual_mul_f32 v21, v21, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v40
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v6
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v22, v22, v140 :: v_dual_add_f32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v5, v5, v40
	v_rcp_f32_e32 v7, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v6, v7, 1.0
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v26, v23, v141 :: v_dual_fmac_f32 v7, v8, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, vcc_lo, v40, v5, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v8, v7
	v_fma_f32 v27, -v6, v23, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v24, v24, v142 :: v_dual_fmac_f32 v23, v27, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v6, v23, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v6, v6, v7, v23
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v6, v5, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_mul_f32_e32 v6, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v7, v7, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v8
	v_fma_f32 v27, -v8, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, vcc_lo, v25, v7, v25
	v_mul_f32_e32 v42, v27, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v8, v42, v27
	v_fmac_f32_e32 v42, v43, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v42, v27
	v_div_fmas_f32 v8, v8, v23, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v2, v2, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v23, v23, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v27
	v_fma_f32 v43, -v27, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v13, v23, v13
	v_mul_f32_e32 v67, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v27, v67, v43
	v_fmac_f32_e32 v67, v70, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v67, v43
	v_div_fmas_f32 v27, v27, v42, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v14
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v40, v40, v14
	v_rcp_f32_e32 v42, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v6, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v14, v40, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v43, v42
	v_fma_f32 v70, -v6, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v42
	v_fma_f32 v6, -v6, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v6, v42, v67
	v_div_fixup_f32 v6, v8, v7, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v71
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v8
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v25, v25, v71
	v_rcp_f32_e32 v8, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v7, v8, 1.0
	v_fmac_f32_e32 v8, v43, v8
	v_div_scale_f32 v43, vcc_lo, v71, v25, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v43, v8
	v_fma_f32 v70, -v7, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v8
	v_fma_f32 v7, -v7, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v7, v8, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v8, 0xbfb8aa3b, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v27, v23, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v15
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v13
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v23, v23, v15
	v_rcp_f32_e32 v13, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v8, v13, 1.0
	v_fmac_f32_e32 v13, v27, v13
	v_div_scale_f32 v27, vcc_lo, v15, v23, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v27, v13
	v_fma_f32 v70, -v8, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v13
	v_fma_f32 v8, -v8, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v8, v13, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v42, v40, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v16
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v13, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v40, v40, v16
	v_rcp_f32_e32 v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v42, v14
	v_div_scale_f32 v42, vcc_lo, v16, v40, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v42, v14
	v_fma_f32 v70, -v13, v67, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v14
	v_fma_f32 v13, -v13, v67, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v13, v14, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v14, 0xbfb8aa3b, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v13, v43, v25, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v17
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v14, v14, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v25, v25, v17
	v_rcp_f32_e32 v43, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v14, v43, 1.0
	v_fmac_f32_e32 v43, v67, v43
	v_div_scale_f32 v67, vcc_lo, v17, v25, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v67, v43
	v_fma_f32 v71, -v14, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v43
	v_fma_f32 v14, -v14, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v14, v43, v70
	v_div_fixup_f32 v14, v27, v23, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v15, 0xbfb8aa3b, v146
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v146
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v23, v23, v146
	v_rcp_f32_e32 v27, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v15, v27, 1.0
	v_fmac_f32_e32 v27, v67, v27
	v_div_scale_f32 v67, vcc_lo, v146, v23, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v67, v27
	v_fma_f32 v71, -v15, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v27
	v_fma_f32 v15, -v15, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v15, v27, v70
	v_div_fixup_f32 v15, v42, v40, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v19
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v40, v40, v19
	v_rcp_f32_e32 v42, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v16, v42, 1.0
	v_fmac_f32_e32 v42, v67, v42
	v_div_scale_f32 v67, vcc_lo, v19, v40, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v67, v42
	v_fma_f32 v71, -v16, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v42
	v_fma_f32 v16, -v16, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v16, v42, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v43, v25, v17
	v_div_fixup_f32 v19, v42, v40, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_mul_f32_e32 v40, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v25, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v16
	v_fma_f32 v67, -v16, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v67, v43
	v_div_scale_f32 v67, vcc_lo, v20, v25, v20
	v_mul_f32_e32 v70, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v16, v70, v67
	v_fmac_f32_e32 v70, v71, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v70, v67
	v_div_fmas_f32 v43, v16, v43, v70
	v_div_fixup_f32 v16, v27, v23, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v43, v25, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v21
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v23, v23, v21
	v_rcp_f32_e32 v67, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v27, v67, 1.0
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v21, v23, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v67
	v_fma_f32 v82, -v27, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v82, v67
	v_fma_f32 v27, -v27, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v27, v23, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v21, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v40, 0xbfb8aa3b, v147
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v40, v40, v147
	v_rcp_f32_e32 v67, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v42, v67, 1.0
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v147, v40, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v67
	v_fma_f32 v82, -v42, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v82, v67
	v_fma_f32 v42, -v42, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v25, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v43
	v_fma_f32 v70, -v43, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v22, v25, v22
	v_mul_f32_e32 v71, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v43, v71, v70
	v_fmac_f32_e32 v71, v82, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v71, v70
	v_div_fmas_f32 v43, v43, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v26
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v27, v27, v26
	v_rcp_f32_e32 v67, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v21, v67, 1.0
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v26, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v67
	v_fma_f32 v82, -v21, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v82, v67
	v_fma_f32 v21, -v21, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v21, v67, v71
	v_div_fixup_f32 v21, v42, v40, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v40, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v24
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v42, v42, v24
	v_rcp_f32_e32 v70, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v40, v70, 1.0
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v24, v42, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v71, v70
	v_fma_f32 v139, -v40, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v139, v70
	v_fma_f32 v40, -v40, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v40, v70, v82
	v_div_fixup_f32 v40, v43, v25, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v135
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v135
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v135
	v_rcp_f32_e32 v43, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v25, v43, 1.0
	v_fmac_f32_e32 v43, v71, v43
	v_div_scale_f32 v71, vcc_lo, v135, v22, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v71, v43
	v_fma_f32 v139, -v25, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v139, v43
	v_fma_f32 v25, -v25, v82, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v43, v82
	v_div_fixup_f32 v43, v67, v27, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v25, v22, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v27
	v_fma_f32 v71, -v27, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v71, v67
	v_div_scale_f32 v71, vcc_lo, v94, v26, v94
	v_mul_f32_e32 v82, v71, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v27, v82, v71
	v_fmac_f32_e32 v82, v139, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v27, v82, v71
	v_div_fixup_f32 v71, v70, v42, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v67, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v42, v42, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v24
	v_fma_f32 v70, -v24, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v93, v42, v93
	v_mul_f32_e32 v82, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v24, v82, v70
	v_fmac_f32_e32 v82, v139, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v82, v70
	v_div_fmas_f32 v67, v24, v67, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v70, v70, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v82, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v82, v25
	v_div_scale_f32 v82, vcc_lo, v90, v70, v90
	v_mul_f32_e32 v135, v82, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v24, v135, v82
	v_fmac_f32_e32 v135, v139, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v135, v82
	v_div_fmas_f32 v82, v24, v25, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v27, v26, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v27, v27, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v94, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v94, v26
	v_div_scale_f32 v94, vcc_lo, v80, v27, v80
	v_mul_f32_e32 v135, v94, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v25, v135, v94
	v_fmac_f32_e32 v135, v139, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v135, v94
	v_div_fmas_f32 v94, v25, v26, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v67, v42, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v94, v27, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_mul_f32_e32 v80, 0xbfb8aa3b, v75
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v81
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v42, v42, v81
	v_rcp_f32_e32 v67, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v26, v67, 1.0
	v_fmac_f32_e32 v67, v93, v67
	v_div_scale_f32 v93, vcc_lo, v81, v42, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v93, v67
	v_fma_f32 v139, -v26, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v67
	v_fma_f32 v26, -v26, v135, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v26, v67, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v67, v42, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v93, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v26
	v_fma_f32 v139, -v26, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v91, v93, v91
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v26, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v140, v139
	v_div_fmas_f32 v135, v26, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v135, v93, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v92
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v139, v139, v92
	v_rcp_f32_e32 v140, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v26, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v92, v139, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v26, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v26, -v26, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v140, v26, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v82, v70, v90
	v_div_fixup_f32 v70, v140, v139, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v75
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v80, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v80, v80, v75
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v81, v82, 1.0
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v90, vcc_lo, v75, v80, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v82
	v_fma_f32 v92, -v81, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v82
	v_fma_f32 v81, -v81, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v81, v81, v82, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v82, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v78
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v90
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v82, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v82, v82, v78
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v78, v82, v78
	v_div_fixup_f32 v75, v81, v80, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v80, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v80, v80, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v81, 1.0, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v81, v81, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v80
	v_fma_f32 v92, -v80, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v79, v81, v79
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v80, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v80, v93, v92
	v_div_fmas_f32 v91, v80, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v80, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v81, v91, v81, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v66
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v92, v92, v66
	v_rcp_f32_e32 v93, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v80, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v66, v92, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v94, v93
	v_fma_f32 v139, -v80, v135, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v93
	v_fma_f32 v80, -v80, v135, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v80, v93, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v80, 0xbfb8aa3b, v88
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v88
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v94, v94, v88
	v_rcp_f32_e32 v135, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v80, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v88, v94, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v135
	v_fma_f32 v141, -v80, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v135
	v_fma_f32 v80, -v80, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v135, v80, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v80, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v89
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v139, v139, v89
	v_rcp_f32_e32 v140, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v80, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v89, v139, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v80, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v80, -v80, v142, v141
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v140, v80, v140, v142
	v_div_fixup_f32 v80, v90, v82, v78
	v_div_fixup_f32 v82, v93, v92, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v135, v94, v88
	v_div_fixup_f32 v79, v140, v139, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v56, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v86
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v66, v66, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v66, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v89, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v89
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v87
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v89, v89, v90
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v89, 1.0, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v89, v89, v87
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v87, v89, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v90, v89, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v91, v91, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v88, v66, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v91, v91, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v72, v91, v72
	v_mul_f32_e32 v135, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v92, v135, v94
	v_fmac_f32_e32 v135, v139, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v135, v94
	v_div_fmas_f32 v92, v92, v93, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v72, v92, v91, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v73
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v93, v93, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v73
	v_rcp_f32_e32 v135, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v94, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v73, v93, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v135
	v_fma_f32 v141, -v94, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v135
	v_fma_f32 v94, -v94, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v94, v94, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v74
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v135, v135, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v74
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v74, v135, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v74, v139, v135, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v41
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v94, v93, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v88, null, v66, v66, v41
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v41, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v89, 0xbfb8aa3b, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v88, v66, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v89
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v89, v89
	v_ldexp_f32 v89, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v89, v89, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v45, v89, v45
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v90, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v93, v92
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v90, v89, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v68
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v91, v91, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v91, v91, v68
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v68, v91, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v94, v93
	v_fma_f32 v139, -v92, v135, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v93
	v_fma_f32 v92, -v92, v135, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v92, v91, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v93, v93, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v94
	v_fma_f32 v139, -v94, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v69, v93, v69
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v94, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v140, v139
	v_div_fmas_f32 v94, v94, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v69, v94, v93, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v44
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v135, v135, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v44
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v44, v135, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v139, v139, v140, v142
	v_div_fixup_f32 v89, v139, v135, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v44, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v44, v44, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v44, v44, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v66
	v_fma_f32 v90, -v66, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v90, v68
	v_div_scale_f32 v90, vcc_lo, v85, v44, v85
	v_mul_f32_e32 v91, v90, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v66, v91, v90
	v_fmac_f32_e32 v91, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v91, v90
	v_div_fmas_f32 v66, v66, v68, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v66, v44, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_mul_f32_e32 v44, 0xbfb8aa3b, v83
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v46
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v90
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v68, v68, v46
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v46, v68, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v90, v68, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v57, v57, v46 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v83
	v_mul_f32_e32 v46, v77, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v44, v44, v83
	v_rcp_f32_e32 v91, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v66, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v83, v44, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v66, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v66, -v66, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v66, v44, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v91, v91, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v91, v91, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v84, v91, v84
	v_mul_f32_e32 v135, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v92, v135, v94
	v_fmac_f32_e32 v135, v139, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v135, v94
	v_div_fmas_f32 v92, v92, v93, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v92, v91, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v38
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v93, v93, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v38
	v_rcp_f32_e32 v135, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v94, v135, 1.0
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v38, v93, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v135
	v_fma_f32 v141, -v94, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v135
	v_fma_f32 v94, -v94, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v94, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v90, v94, v93, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_mul_f32_e32 v38, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v135, v135, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v139
	v_fma_f32 v141, -v139, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v39, v135, v39
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v139, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v139, v142, v141
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v91, v139, v135, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v38, v38
	v_ldexp_f32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v39
	v_fma_f32 v66, -v39, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v66, v44
	v_div_scale_f32 v66, vcc_lo, v31, v38, v31
	v_mul_f32_e32 v68, v66, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v39, v68, v66
	v_fmac_f32_e32 v68, v92, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v68, v66
	v_div_fmas_f32 v39, v39, v44, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v44, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v39, v38, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v32
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v44, v44, v32
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v92, v68
	v_div_scale_f32 v92, vcc_lo, v32, v44, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v68
	v_fma_f32 v94, -v66, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v68
	v_fma_f32 v66, -v66, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v68, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v18
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v68, v68, v18
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v18, v68, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v94, v93
	v_fma_f32 v139, -v92, v135, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v93
	v_fma_f32 v92, -v92, v135, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v92, v92, v68, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_mul_f32_e32 v18, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v93, v93, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v94
	v_fma_f32 v139, -v94, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v139, v135
	v_div_scale_f32 v139, vcc_lo, v28, v93, v28
	v_mul_f32_e32 v140, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v94, v140, v139
	v_fmac_f32_e32 v140, v141, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v140, v139
	v_div_fmas_f32 v94, v94, v135, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v94, v93, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v106, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v135, v135, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v135, v135, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v139
	v_fma_f32 v141, -v139, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v35, v135, v35
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v139, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v139, v142, v141
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v140, v66, v44, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v55, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v93, v139, v135, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v18, v18, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v32
	v_fma_f32 v38, -v32, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, vcc_lo, v12, v18, v12
	v_mul_f32_e32 v39, v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v32, v39, v38
	v_fmac_f32_e32 v39, v44, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v39, v38
	v_div_fmas_f32 v32, v32, v35, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v35, v35, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v44, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v44, v39
	v_div_scale_f32 v44, vcc_lo, v33, v35, v33
	v_mul_f32_e32 v66, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v38, v66, v44
	v_fmac_f32_e32 v66, v68, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v66, v44
	v_div_fmas_f32 v38, v38, v39, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v39, v39, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v44
	v_fma_f32 v68, -v44, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v68, v66
	v_div_scale_f32 v68, vcc_lo, v34, v39, v34
	v_mul_f32_e32 v94, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v44, v94, v68
	v_fmac_f32_e32 v94, v135, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v44, v94, v68
	v_div_fmas_f32 v44, v44, v66, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v44, v39, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v36
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v66, v66, v36
	v_rcp_f32_e32 v94, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v68, v94, 1.0
	v_fmac_f32_e32 v94, v135, v94
	v_div_scale_f32 v135, vcc_lo, v36, v66, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v135, v94
	v_fma_f32 v141, -v68, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v141, v94
	v_fma_f32 v68, -v68, v139, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v94, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v94, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v37
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v94, v94, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v135, null, v94, v94, v37
	v_rcp_f32_e32 v139, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v135, v139, 1.0
	v_fmac_f32_e32 v139, v141, v139
	v_div_scale_f32 v141, vcc_lo, v37, v94, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v139
	v_fma_f32 v143, -v135, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v139
	v_fma_f32 v135, -v135, v142, v141
	v_div_fixup_f32 v141, v38, v35, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v135, v135, v139, v142
	v_div_fixup_f32 v139, v32, v18, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v142, v68, v66, v36
	v_div_fixup_f32 v94, v135, v94, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v12, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v18
	v_fma_f32 v33, -v18, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, vcc_lo, v0, v12, v0
	v_mul_f32_e32 v35, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v18, v35, v33
	v_fmac_f32_e32 v35, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v35, v33
	v_div_fmas_f32 v18, v18, v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v18, v12, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v132, v7
	v_mul_f32_e32 v12, v59, v25
	v_mul_f32_e32 v7, v138, v81
	v_mul_f32_e32 v59, v127, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v1
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v32, v32, v1
	v_rcp_f32_e32 v35, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v33, v35, 1.0
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v1, v32, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v35
	v_fma_f32 v38, -v33, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v35
	v_fma_f32 v33, -v33, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v33, v32, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v65, v6
	v_mul_f32_e32 v6, v133, v8
	v_dual_mul_f32 v8, v122, v70 :: v_dual_mul_f32 v65, v119, v27
	v_mul_f32_e32 v70, v49, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v121, v67
	v_mul_f32_e32 v67, v114, v72
	v_mul_f32_e32 v33, v116, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v111, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v35, v35, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v38, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, vcc_lo, v29, v35, v29
	v_mul_f32_e32 v39, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v36, v39, v38
	v_fmac_f32_e32 v39, v44, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v39, v38
	v_div_fmas_f32 v36, v36, v37, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v37, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v37, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v44, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v44, v39
	v_div_scale_f32 v44, vcc_lo, v30, v37, v30
	v_mul_f32_e32 v66, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v38, v66, v44
	v_fmac_f32_e32 v66, v68, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v66, v44
	v_div_fmas_f32 v38, v38, v39, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v39, v39, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v44
	v_fma_f32 v68, -v44, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v68, v66
	v_div_scale_f32 v68, vcc_lo, v9, v39, v9
	v_mul_f32_e32 v135, v68, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v44, v135, v68
	v_fmac_f32_e32 v135, v143, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v44, v135, v68
	v_div_fmas_f32 v44, v44, v66, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v66, v66, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v135, v68
	v_fma_f32 v143, -v68, v135, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v143, v135
	v_div_scale_f32 v143, vcc_lo, v10, v66, v10
	v_mul_f32_e32 v144, v143, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v68, v144, v143
	v_fmac_f32_e32 v144, v145, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v144, v143
	v_div_fmas_f32 v68, v68, v135, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v135, v135, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v143, null, v135, v135, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v144, v143
	v_fma_f32 v145, -v143, v144, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v144
	v_div_scale_f32 v145, vcc_lo, v11, v135, v11
	v_mul_f32_e32 v146, v145, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v143, v146, v145
	v_fmac_f32_e32 v146, v147, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v143, v146, v145
	v_div_fmas_f32 v143, v143, v144, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v144, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v135, v143, v135, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v143, v68, v66, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v66, v51, v22 :: v_dual_mul_f32 v51, v54, v24
	v_mul_f32_e32 v22, v137, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v144, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v38, v37, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v134, v82 :: v_dual_mul_f32 v37, v136, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v47, v78
	v_mul_f32_e32 v38, v129, v14
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, |v54|, |v32|, |v18|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v130, v15
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_exp_f32_e32 v144, v144
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v126, v69
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v14, |v68|, |v56|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v117, v88
	v_mul_f32_e32 v69, v64, v90
	v_dual_mul_f32 v64, v104, v21 :: v_dual_mul_f32 v21, v110, v30
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v30, 0x60, v153
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v144, v144, v145
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v144, 1.0, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v145, null, v144, v144, v2
	v_rcp_f32_e32 v146, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v145, v146, 1.0
	v_fmac_f32_e32 v146, v147, v146
	v_div_scale_f32 v147, vcc_lo, v2, v144, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v148, v147, v146
	v_fma_f32 v149, -v145, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v149, v146
	v_fma_f32 v145, -v145, v148, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v145, v145, v146, v148
	v_div_fixup_f32 v146, v36, v35, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v29, v118, v26 :: v_dual_mul_f32 v26, v125, v45
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v66|, |v51|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v145, v144, v2
	v_div_fixup_f32 v144, v44, v39, v9
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v44, v120, v42
	v_dual_mul_f32 v42, v124, v41 :: v_dual_mul_f32 v35, v62, v87
	v_mul_f32_e32 v62, v123, v16
	v_mul_f32_e32 v16, v113, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, |v12|, |v65|, |v44|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v47, v115, v73 :: v_dual_mul_f32 v40, v109, v146
	v_mul_f32_e32 v39, v61, v84
	v_mul_f32_e32 v61, v50, v34
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v29|, v9
	v_max3_f32 v9, |v37|, |v22|, |v7|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v96, v143
	v_mul_f32_e32 v36, v112, v31
	v_mul_f32_e32 v41, v101, v19
	v_mul_f32_e32 v45, v105, v92
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v9, v10, |v6|
	v_max3_f32 v10, |v27|, |v8|, |v55|
	v_max_f32_e64 v19, |v70|, |v57|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v73, v48, v141 :: v_dual_mul_f32 v48, v95, v144
	v_mul_f32_e32 v31, v98, v43
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v10, v9
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v58, v86
	v_mul_f32_e32 v58, v128, v89
	v_mul_f32_e32 v9, v131, v17
	v_mul_f32_e32 v25, v102, v20
	v_mul_f32_e32 v43, v53, v94
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, |v10|, |v67|, |v47|
	v_max3_f32 v17, |v58|, |v38|, |v24|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v53, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v14, v14, |v35|, v15
	v_max3_f32 v15, |v42|, |v26|, |v13|
	v_max3_f32 v15, v15, v17, |v9|
	v_max3_f32 v17, |v33|, |v11|, |v59|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max3_f32 v72, v14, v17, v15
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v60, v83
	v_dual_mul_f32 v60, v100, v139 :: v_dual_mul_f32 v17, v107, v93
	v_mul_f32_e32 v14, v103, v23
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v83.h, 0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, |v15|, |v69|, |v49|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v23, |v60|, |v41|, |v25|
	v_max3_f32 v19, v19, |v39|, v20
	v_max3_f32 v20, |v45|, |v28|, |v17|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v20, v20, v23, |v14|
	v_max3_f32 v23, |v36|, |v16|, |v62|
	v_max3_f32 v78, v19, v23, v20
.Ltmp26:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v99, v71 :: v_dual_mul_f32 v20, v52, v142
	v_dual_mul_f32 v52, v108, v1 :: v_dual_mul_f32 v71, v63, v0
	v_mul_f32_e32 v63, v76, v2
	v_mul_f32_e32 v23, v97, v135
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v73|, |v61|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v1, |v20|, |v71|, |v52|
	v_max3_f32 v2, |v63|, |v46|, |v31|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v0, v0, |v43|, v1
	v_max3_f32 v1, |v48|, |v34|, |v23|
	v_max3_f32 v1, v1, v2, |v19|
	v_max3_f32 v2, |v40|, |v21|, |v64|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v0, v0, v2, v1
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v72, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v74, v5, v1
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v78, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v72, v2
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v5, 8, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v76, v78, v1
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v77, v0, v1
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v153
	v_and_b32_e32 v1, 4, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v2, v0, 9, 0
	v_lshlrev_b32_e32 v50, 5, v0
	v_lshl_add_u32 v2, v1, 2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v72, v50, v30
	v_lshl_add_u32 v2, v5, 4, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v2, v53, v72
	v_lshl_add_u32 v53, v1, 6, 0
	ds_store_b128 v2, v[74:77]
	v_lshlrev_b32_e32 v75, 4, v153
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_or_b32 v2, 0x680, v75, v50
	v_lshrrev_b32_e32 v50, 3, v4
	v_xor_b32_e32 v2, v2, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v53, v50, v2
	ds_load_b128 v[76:79], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v79, v79
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v50, v76
	v_mov_b32_e32 v72, v77
	v_mov_b32_e32 v74, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v79, v79, v79
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v79 :: v_dual_max_f32 v53, v76, v76
	v_max_f32_e32 v50, v50, v50
	v_dual_max_f32 v76, v77, v77 :: v_dual_and_b32 v75, 0x2f0, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v50, v53, v50 :: v_dual_max_f32 v53, v72, v72
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v72, v50 :: v_dual_max_f32 v53, v76, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v50, v50, v72
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v53, v53, v72 :: v_dual_mov_b32 v72, v50
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v77, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v76, v50, v72
	v_dual_max_f32 v50, v74, v74 :: v_dual_max_f32 v77, v53, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v78, v50
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v53, v53 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v50, v50, v53
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v78, v50, v53
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v50, v2
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v50, v50, v50
	v_max_f32_e32 v2, v2, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v50, v2
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v50, v50, v50
	v_dual_max_f32 v79, v2, v50 :: v_dual_lshlrev_b32 v2, 3, v5
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v5, 1, v30
	v_add_nc_u32_e32 v50, 0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v5, v50, v5, v2
	v_lshlrev_b32_e32 v50, 4, v0
	v_lshlrev_b32_e32 v0, 5, v1
	ds_store_b128 v5, v[76:79]
	v_add_nc_u32_e32 v1, 0, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v1, v0, v2
	ds_load_b128 v[76:79], v0
.Ltmp57:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v76, v76 :: v_dual_max_f32 v1, v78, v78
	v_max_f32_e32 v2, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v72, 0x2b8cbccc, v0 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v0
	v_fma_f32 v74, -v0, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v74, v53
	v_div_scale_f32 v74, vcc_lo, v72, 0x40e00000, v72
	v_dual_max_f32 v5, v79, v79 :: v_dual_mul_f32 v76, v74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v0, v76, v74
	v_fmac_f32_e32 v76, v77, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v76, v74
	v_div_fmas_f32 v74, v0, v53, v76
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v0
	v_fma_f32 v76, -v0, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v76, v53
	v_div_scale_f32 v76, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v77, v76, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v0, v77, v76
	v_fmac_f32_e32 v77, v78, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v77, v76
	v_div_fmas_f32 v76, v0, v53, v77
	v_max_f32_e32 v0, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v76, 0x40e00000, v1
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v1.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v53, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v2, v53, 1.0
	v_fmac_f32_e32 v53, v77, v53
	v_div_scale_f32 v77, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v53
	v_fma_f32 v79, -v2, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v53
	v_fma_f32 v2, -v2, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v53, v2, v53, v78
	v_max_f32_e32 v2, 0x2b8cbccc, v5
	v_div_fixup_f32 v0, v53, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v77, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v5, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v5, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v77
	v_fma_f32 v5, -v5, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v5, v5, v77, v79
	v_div_fixup_f32 v2, v5, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v83.l, v2.h
	v_add3_u32 v1, v1, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v5, 1, v83
	v_mov_b16_e32 v83.l, v0.h
	v_add3_u32 v2, v2, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v5, v74, 0x40e00000, v72
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v72.h, v83.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v53, 1, v83
	v_mov_b16_e32 v72.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v53, v0, v53, 0x7fff
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v53
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v5, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v83, v83, v68
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v72, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v74, null, v72, v72, v66
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v66, v72, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v74, v76, v78
	v_div_scale_f32 v74, null, v72, v72, v51
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v51, v72, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v81, v74, v76, v78
	v_div_scale_f32 v74, null, v72, v72, v29
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v29, v72, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v76, v74, v76, v78
	v_div_scale_f32 v74, null, v72, v72, v12
	v_rcp_f32_e32 v77, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v74, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v12, v72, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v74, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v77
	v_fma_f32 v74, -v74, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v74, v74, v77, v79
	v_div_scale_f32 v77, null, v72, v72, v65
	v_rcp_f32_e32 v78, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v77, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v65, v72, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v82, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v82, v78
	v_fma_f32 v77, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v91, v77, v78, v80
	v_div_scale_f32 v77, null, v72, v72, v44
	v_rcp_f32_e32 v78, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v77, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v44, v72, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v82, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v82, v78
	v_fma_f32 v77, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v82, v77, v78, v80
	v_div_scale_f32 v77, null, v72, v72, v27
	v_rcp_f32_e32 v78, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v77, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v27, v72, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v84, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v84, v78
	v_fma_f32 v77, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v77, v78, v80
	v_div_scale_f32 v77, null, v72, v72, v8
	v_rcp_f32_e32 v79, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v77, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v8, v72, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v80, v79
	v_fma_f32 v85, -v77, v84, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v79
	v_fma_f32 v77, -v77, v84, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v77, v79, v84
	v_div_scale_f32 v79, null, v72, v72, v55
	v_rcp_f32_e32 v80, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v79, v80, 1.0
	v_fmac_f32_e32 v80, v84, v80
	v_div_scale_f32 v84, vcc_lo, v55, v72, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v80
	v_fma_f32 v86, -v79, v85, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v80
	v_div_fixup_f32 v65, v91, v72, v65
	v_div_fixup_f32 v66, v87, v72, v66
	v_div_fixup_f32 v29, v76, v72, v29
	v_div_fixup_f32 v27, v78, v72, v27
	v_fma_f32 v79, -v79, v85, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v90, v79, v80, v85
	v_div_scale_f32 v79, null, v72, v72, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v90, v72, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v51, v81, v72, v51
	v_div_fixup_f32 v44, v82, v72, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v79, v80, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v84, v80
	v_div_scale_f32 v84, vcc_lo, v37, v72, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v84, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v79, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v80
	v_fma_f32 v79, -v79, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v79, v80, v85
	v_div_scale_f32 v79, null, v72, v72, v22
	v_div_fixup_f32 v37, v85, v72, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v80, v79
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v79, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v84, v80
	v_div_scale_f32 v84, vcc_lo, v22, v72, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v84, v80
	v_fma_f32 v88, -v79, v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v88, v80
	v_fma_f32 v79, -v79, v86, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v79, v80, v86
	v_div_scale_f32 v79, null, v72, v72, v7
	v_div_fixup_f32 v22, v80, v72, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v84, v79
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v79, v84, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, vcc_lo, v7, v72, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v86, v84
	v_fma_f32 v89, -v79, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v84
	v_fma_f32 v79, -v79, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v79, v79, v84, v88
	v_div_scale_f32 v84, null, v72, v72, v54
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v84, v86, 1.0
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, vcc_lo, v54, v72, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v86
	v_fma_f32 v92, -v84, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v92, v86
	v_fma_f32 v84, -v84, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v84, v86, v89
	v_div_scale_f32 v84, null, v72, v72, v32
	v_div_fixup_f32 v54, v94, v72, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v86, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, vcc_lo, v32, v72, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v86
	v_fma_f32 v92, -v84, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v92, v86
	v_fma_f32 v84, -v84, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v84, v86, v89
	v_div_scale_f32 v84, null, v72, v72, v18
	v_div_fixup_f32 v32, v89, v72, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v86, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, vcc_lo, v18, v72, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v88, v86
	v_fma_f32 v93, -v84, v92, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v86
	v_fma_f32 v84, -v84, v92, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v86, v84, v86, v92
	v_div_scale_f32 v84, null, v72, v72, v6
	v_div_fixup_f32 v18, v86, v72, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v88, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v84, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, vcc_lo, v6, v72, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v95, -v84, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v95, v88
	v_fma_f32 v84, -v84, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v84, v84, v88, v93
	v_rcp_f32_e32 v88, v0
	v_fma_f32 v92, -v0, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, vcc_lo, v68, v83, v68
	v_mul_f32_e32 v93, v92, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v0, v93, v92
	v_fmac_f32_e32 v93, v95, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v93, v92
	v_div_fmas_f32 v105, v0, v88, v93
	v_div_scale_f32 v0, null, v83, v83, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v68, v105, v83, v68
	v_rcp_f32_e32 v88, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v0, v88, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, vcc_lo, v56, v83, v56
	v_mul_f32_e32 v93, v92, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v0, v93, v92
	v_fmac_f32_e32 v93, v95, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v93, v92
	v_div_fmas_f32 v97, v0, v88, v93
	v_div_scale_f32 v0, null, v83, v83, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v0
	v_fma_f32 v92, -v0, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, vcc_lo, v35, v83, v35
	v_mul_f32_e32 v93, v92, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v0, v93, v92
	v_fmac_f32_e32 v93, v95, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v93, v92
	v_div_fmas_f32 v93, v0, v88, v93
	v_div_scale_f32 v0, null, v83, v83, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v0
	v_fma_f32 v92, -v0, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, vcc_lo, v10, v83, v10
	v_mul_f32_e32 v95, v92, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v0, v95, v92
	v_fmac_f32_e32 v95, v96, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v95, v92
	v_div_fmas_f32 v88, v0, v88, v95
	v_div_scale_f32 v0, null, v83, v83, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v0
	v_fma_f32 v95, -v0, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, vcc_lo, v67, v83, v67
	v_mul_f32_e32 v96, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v0, v96, v95
	v_fmac_f32_e32 v96, v98, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v96, v95
	v_div_fmas_f32 v108, v0, v92, v96
	v_div_scale_f32 v0, null, v83, v83, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v0
	v_fma_f32 v95, -v0, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, vcc_lo, v47, v83, v47
	v_mul_f32_e32 v96, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v0, v96, v95
	v_fmac_f32_e32 v96, v98, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v96, v95
	v_div_fmas_f32 v99, v0, v92, v96
	v_div_scale_f32 v0, null, v83, v83, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v99, v83, v47
	v_rcp_f32_e32 v92, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v0, v92, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, vcc_lo, v33, v83, v33
	v_mul_f32_e32 v96, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v0, v96, v95
	v_fmac_f32_e32 v96, v98, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v96, v95
	v_div_fmas_f32 v96, v0, v92, v96
	v_div_scale_f32 v0, null, v83, v83, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v0
	v_fma_f32 v95, -v0, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, vcc_lo, v11, v83, v11
	v_mul_f32_e32 v98, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v100, -v0, v98, v95
	v_fmac_f32_e32 v98, v100, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v98, v95
	v_div_fmas_f32 v92, v0, v92, v98
	v_div_scale_f32 v0, null, v83, v83, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v95, v0
	v_fma_f32 v98, -v0, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v98, v95
	v_div_scale_f32 v98, vcc_lo, v59, v83, v59
	v_mul_f32_e32 v100, v98, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v0, v100, v98
	v_fmac_f32_e32 v100, v101, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v100, v98
	v_div_fmas_f32 v107, v0, v95, v100
	v_div_scale_f32 v0, null, v83, v83, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v59, v107, v83, v59
	v_rcp_f32_e32 v95, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v59, v59, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v0, v95, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v98, v95
	v_div_scale_f32 v98, vcc_lo, v42, v83, v42
	v_mul_f32_e32 v100, v98, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v0, v100, v98
	v_fmac_f32_e32 v100, v101, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v100, v98
	v_div_fmas_f32 v102, v0, v95, v100
	v_div_scale_f32 v0, null, v83, v83, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v42, v102, v83, v42
	v_rcp_f32_e32 v95, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v0, v95, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v98, v95
	v_div_scale_f32 v98, vcc_lo, v26, v83, v26
	v_mul_f32_e32 v100, v98, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v0, v100, v98
	v_fmac_f32_e32 v100, v101, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v100, v98
	v_div_fmas_f32 v98, v0, v95, v100
	v_div_scale_f32 v0, null, v83, v83, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v98, v83, v26
	v_rcp_f32_e32 v95, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v26, v26, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v100, -v0, v95, 1.0
	v_fmac_f32_e32 v95, v100, v95
	v_div_scale_f32 v100, vcc_lo, v13, v83, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v101, v100, v95
	v_fma_f32 v103, -v0, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v103, v95
	v_fma_f32 v0, -v0, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v95, v0, v95, v101
	v_div_scale_f32 v0, null, v83, v83, v58
	v_div_fixup_f32 v13, v95, v83, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v100, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v101, -v0, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v101, v100
	v_div_scale_f32 v101, vcc_lo, v58, v83, v58
	v_mul_f32_e32 v103, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v0, v103, v101
	v_fmac_f32_e32 v103, v104, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v103, v101
	v_div_fmas_f32 v112, v0, v100, v103
	v_div_scale_f32 v0, null, v83, v83, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v100, v0
	v_fma_f32 v101, -v0, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v101, v100
	v_div_scale_f32 v101, vcc_lo, v38, v83, v38
	v_mul_f32_e32 v103, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v0, v103, v101
	v_fmac_f32_e32 v103, v104, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v103, v101
	v_div_fmas_f32 v106, v0, v100, v103
	v_div_scale_f32 v0, null, v83, v83, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v100, v0
	v_fma_f32 v101, -v0, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v101, v100
	v_div_scale_f32 v101, vcc_lo, v24, v83, v24
	v_mul_f32_e32 v103, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v0, v103, v101
	v_fmac_f32_e32 v103, v104, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v103, v101
	v_div_fmas_f32 v103, v0, v100, v103
	v_div_scale_f32 v0, null, v83, v83, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v100, v0
	v_fma_f32 v101, -v0, v100, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v100, v101, v100
	v_div_scale_f32 v101, vcc_lo, v9, v83, v9
	v_mul_f32_e32 v104, v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v0, v104, v101
	v_fmac_f32_e32 v104, v109, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v104, v101
	v_div_fmas_f32 v101, v0, v100, v104
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v100, 0xffff0000, v1
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v100, v100, v70
	v_rcp_f32_e32 v104, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v0, v104, 1.0
	v_fmac_f32_e32 v104, v109, v104
	v_div_scale_f32 v109, vcc_lo, v70, v100, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v110, v109, v104
	v_fma_f32 v111, -v0, v110, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v110, v111, v104
	v_fma_f32 v0, -v0, v110, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v122, v0, v104, v110
	v_div_scale_f32 v0, null, v100, v100, v57
	v_div_fixup_f32 v70, v122, v100, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v104, v0
	v_fma_f32 v109, -v0, v104, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v109, v104
	v_div_scale_f32 v109, vcc_lo, v57, v100, v57
	v_mul_f32_e32 v110, v109, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v0, v110, v109
	v_fmac_f32_e32 v110, v111, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v110, v109
	v_div_fmas_f32 v114, v0, v104, v110
	v_div_scale_f32 v0, null, v100, v100, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v104, v0
	v_fma_f32 v109, -v0, v104, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v109, v104
	v_div_scale_f32 v109, vcc_lo, v39, v100, v39
	v_mul_f32_e32 v110, v109, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v0, v110, v109
	v_fmac_f32_e32 v110, v111, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v110, v109
	v_div_fmas_f32 v110, v0, v104, v110
	v_div_scale_f32 v0, null, v100, v100, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v104, v0
	v_fma_f32 v109, -v0, v104, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v109, v104
	v_div_scale_f32 v109, vcc_lo, v15, v100, v15
	v_mul_f32_e32 v111, v109, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v111, v109
	v_fmac_f32_e32 v111, v113, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v111, v109
	v_div_fmas_f32 v104, v0, v104, v111
	v_div_scale_f32 v0, null, v100, v100, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v109, v0
	v_fma_f32 v111, -v0, v109, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v109, v111, v109
	v_div_scale_f32 v111, vcc_lo, v69, v100, v69
	v_mul_f32_e32 v113, v111, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v0, v113, v111
	v_fmac_f32_e32 v113, v115, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v113, v111
	v_div_fmas_f32 v124, v0, v109, v113
	v_div_scale_f32 v0, null, v100, v100, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v109, v0
	v_fma_f32 v111, -v0, v109, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v109, v111, v109
	v_div_scale_f32 v111, vcc_lo, v49, v100, v49
	v_mul_f32_e32 v113, v111, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v0, v113, v111
	v_fmac_f32_e32 v113, v115, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v113, v111
	v_div_fmas_f32 v116, v0, v109, v113
	v_div_scale_f32 v0, null, v100, v100, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v49, v116, v100, v49
	v_rcp_f32_e32 v109, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v0, v109, 1.0
	v_fmac_f32_e32 v109, v111, v109
	v_div_scale_f32 v111, vcc_lo, v36, v100, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v113, v111, v109
	v_fma_f32 v115, -v0, v113, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v115, v109
	v_fma_f32 v0, -v0, v113, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v109, v113
	v_div_scale_f32 v109, null, v100, v100, v16
	v_div_fixup_f32 v0, v0, v100, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v111, v109
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v113, -v109, v111, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v111, v113, v111
	v_div_scale_f32 v113, vcc_lo, v16, v100, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v115, v113, v111
	v_fma_f32 v117, -v109, v115, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v117, v111
	v_fma_f32 v109, -v109, v115, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v109, v109, v111, v115
	v_div_scale_f32 v111, null, v100, v100, v62
	v_rcp_f32_e32 v113, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v111, v113, 1.0
	v_fmac_f32_e32 v113, v115, v113
	v_div_scale_f32 v115, vcc_lo, v62, v100, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v115, v113
	v_fma_f32 v118, -v111, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v113
	v_fma_f32 v111, -v111, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v123, v111, v113, v117
	v_div_scale_f32 v111, null, v100, v100, v45
	v_div_fixup_f32 v62, v123, v100, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v113, v111
	v_fma_f32 v115, -v111, v113, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v115, v113
	v_div_scale_f32 v115, vcc_lo, v45, v100, v45
	v_mul_f32_e32 v117, v115, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v118, -v111, v117, v115
	v_fmac_f32_e32 v117, v118, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v111, v117, v115
	v_div_fmas_f32 v119, v111, v113, v117
	v_div_scale_f32 v111, null, v100, v100, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v119, v100, v45
	v_rcp_f32_e32 v113, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v115, -v111, v113, 1.0
	v_fmac_f32_e32 v113, v115, v113
	v_div_scale_f32 v115, vcc_lo, v28, v100, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v115, v113
	v_fma_f32 v118, -v111, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v113
	v_fma_f32 v111, -v111, v117, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v115, v111, v113, v117
	v_div_scale_f32 v111, null, v100, v100, v17
	v_div_fixup_f32 v28, v115, v100, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v113, v111
	v_fma_f32 v117, -v111, v113, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v117, v113
	v_div_scale_f32 v117, vcc_lo, v17, v100, v17
	v_mul_f32_e32 v118, v117, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v120, -v111, v118, v117
	v_fmac_f32_e32 v118, v120, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v111, v118, v117
	v_div_fmas_f32 v113, v111, v113, v118
	v_div_scale_f32 v111, null, v100, v100, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v117, v111
	v_fma_f32 v118, -v111, v117, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v60, v100, v60
	v_mul_f32_e32 v120, v118, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v121, -v111, v120, v118
	v_fmac_f32_e32 v120, v121, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v111, v120, v118
	v_div_fmas_f32 v125, v111, v117, v120
	v_div_scale_f32 v111, null, v100, v100, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v117, v111
	v_fma_f32 v118, -v111, v117, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v41, v100, v41
	v_mul_f32_e32 v120, v118, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v121, -v111, v120, v118
	v_fmac_f32_e32 v120, v121, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v111, v120, v118
	v_div_fmas_f32 v121, v111, v117, v120
	v_div_scale_f32 v111, null, v100, v100, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v117, v111
	v_fma_f32 v118, -v111, v117, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v25, v100, v25
	v_mul_f32_e32 v120, v118, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v126, -v111, v120, v118
	v_fmac_f32_e32 v120, v126, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v111, v120, v118
	v_div_fmas_f32 v120, v111, v117, v120
	v_div_scale_f32 v111, null, v100, v100, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v117, v111
	v_fma_f32 v118, -v111, v117, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v118, v117
	v_div_scale_f32 v118, vcc_lo, v14, v100, v14
	v_mul_f32_e32 v126, v118, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v111, v126, v118
	v_fmac_f32_e32 v126, v127, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v111, -v111, v126, v118
	v_div_fmas_f32 v118, v111, v117, v126
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v117, 0xffff0000, v2
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v53.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v111, null, v117, v117, v73
	v_rcp_f32_e32 v126, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v111, v126, 1.0
	v_fmac_f32_e32 v126, v127, v126
	v_div_scale_f32 v127, vcc_lo, v73, v117, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v128, v127, v126
	v_fma_f32 v129, -v111, v128, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v129, v126
	v_fma_f32 v111, -v111, v128, v127
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v127, 13, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v126, v111, v126, v128
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v111, 16, v153
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v73, v126, v117, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v128, 8, v111
	v_and_or_b32 v127, 0xe000, v127, v128
	v_and_b32_e32 v128, 64, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v75, v75, v128
	v_lshlrev_b32_e32 v128, 3, v4
	v_or3_b32 v75, v127, v128, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v127, null, v117, v117, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v128, v127
	v_fma_f32 v129, -v127, v128, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v129, v128
	v_div_scale_f32 v129, vcc_lo, v61, v117, v61
	v_mul_f32_e32 v130, v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v127, v130, v129
	v_fmac_f32_e32 v130, v131, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v127, v130, v129
	v_div_fmas_f32 v132, v127, v128, v130
	v_div_scale_f32 v127, null, v117, v117, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v128, v127
	v_fma_f32 v129, -v127, v128, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v129, v128
	v_div_scale_f32 v129, vcc_lo, v43, v117, v43
	v_mul_f32_e32 v130, v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v127, v130, v129
	v_fmac_f32_e32 v130, v131, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v127, v130, v129
	v_div_fmas_f32 v133, v127, v128, v130
	v_div_scale_f32 v127, null, v117, v117, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v128, v127
	v_fma_f32 v129, -v127, v128, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v128, v129, v128
	v_div_scale_f32 v129, vcc_lo, v20, v117, v20
	v_mul_f32_e32 v130, v129, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v127, v130, v129
	v_fmac_f32_e32 v130, v131, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v127, -v127, v130, v129
	v_div_fmas_f32 v127, v127, v128, v130
	v_div_scale_f32 v128, null, v117, v117, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v128
	v_fma_f32 v130, -v128, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v71, v117, v71
	v_mul_f32_e32 v131, v130, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v128, v131, v130
	v_fmac_f32_e32 v131, v134, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v128, -v128, v131, v130
	v_div_fmas_f32 v134, v128, v129, v131
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v128, 15, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v129, 15, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v70, 0, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v68, v134, v117, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v66
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v130, 15, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v66, v108, v83, v67
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v68, 15, v68
	v_med3_f32 v66, v66, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v131, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v67, v124, v100, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v67, v67
	v_and_b32_e32 v67, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v70, v[128:131]
	ds_store_b128 v70, v[65:68] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v65, null, v117, v117, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v52, v117, v52
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v71, v65, v66, v68
	v_div_scale_f32 v65, null, v117, v117, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v40, v117, v40
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v73, v65, v66, v68
	v_div_scale_f32 v65, null, v117, v117, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v21, v117, v21
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v65, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v68, v67
	v_div_fmas_f32 v65, v65, v66, v68
	v_div_scale_f32 v66, null, v117, v117, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v117, v64
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v66, v69, v68
	v_fmac_f32_e32 v69, v87, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v66, v66, v67, v69
	v_div_scale_f32 v67, null, v117, v117, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v64, v66, v117, v64
	v_rcp_f32_e32 v68, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v48, v117, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v69, v68
	v_fma_f32 v91, -v67, v87, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v91, v68
	v_fma_f32 v67, -v67, v87, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v67, v68, v87
	v_div_scale_f32 v67, null, v117, v117, v34
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v34, v117, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v69, v68
	v_fma_f32 v105, -v67, v91, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v105, v68
	v_fma_f32 v67, -v67, v91, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v91, v67, v68, v91
	v_div_scale_f32 v67, null, v117, v117, v23
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v23, v117, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v105, v69, v68
	v_fma_f32 v108, -v67, v105, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v105, v108, v68
	v_fma_f32 v67, -v67, v105, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v105, v67, v68, v105
	v_div_scale_f32 v67, null, v117, v117, v63
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v63, v117, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v108, v69, v68
	v_fma_f32 v122, -v67, v108, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v108, v122, v68
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v122, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v67, v108, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v108, v67, v68, v108
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v112, v83, v58
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v67, 15, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v59, v108, v117, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v58, v58, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v55, v55
	v_and_b32_e32 v69, 15, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v58, v125, v100, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v123, 15, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v49, v75, 16, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v124, 15, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v44
	v_and_b32_e32 v59, 15, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v125, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v97, v83, v56
	v_div_fixup_f32 v56, v114, v100, v57
	v_div_fixup_f32 v57, v132, v117, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v70, v[66:69] offset:2048
	ds_store_b128 v70, v[122:125] offset:2304
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v55, v54
	v_and_b32_e32 v54, 15, v51
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v55
	v_med3_f32 v51, v51, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v51, v51
	v_and_b32_e32 v56, 15, v51
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v57, 15, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v51, v71, v117, v52
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v61, 15, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v44, null, v117, v117, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v49, v[54:57]
	ds_store_b128 v49, v[58:61] offset:256
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v47, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v44, v47, 1.0
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, vcc_lo, v46, v117, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v47
	v_fma_f32 v54, -v44, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v54, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v37
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v45
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v44, -v44, v52, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v44, v44, v47, v52
	v_div_fixup_f32 v47, v87, v117, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v37, v37
	v_and_b32_e32 v56, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v106, v83, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v47
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v57, 15, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v121, v100, v41
	v_div_fixup_f32 v41, v44, v117, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v32
	v_and_b32_e32 v45, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v133, v117, v43
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v46, 15, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v41
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v29
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v32, v32
	v_and_b32_e32 v47, 15, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v93, v83, v35
	v_div_fixup_f32 v35, v110, v100, v39
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v49, v[54:57] offset:2048
	ds_store_b128 v49, v[44:47] offset:2304
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v29, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v35, 15, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v27, null, v117, v117, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v42, 15, v32
	v_and_b32_e32 v43, 15, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v29, v96, v83, v33
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v37, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v29, v29
	v_and_b32_e32 v44, 15, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v73, v117, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v29, v27
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v32, -v27, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v29, v32, v29
	v_div_scale_f32 v32, vcc_lo, v31, v117, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v75, 32, 0
	ds_store_b128 v0, v[41:44]
	ds_store_b128 v0, v[35:38] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v33, v32, v29
	v_fma_f32 v35, -v27, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v35, v29
	v_fma_f32 v27, -v27, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v32, v27, v29, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v27, v26
	v_and_b32_e32 v26, 15, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v29, v91, v117, v34
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v28, 15, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v22, v103, v83, v24
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v29
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v29, 15, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v24, v120, v100, v25
	v_div_fixup_f32 v25, v32, v117, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v31, 15, v18
	v_and_b32_e32 v32, 15, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v22, v84, v72, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v6, null, v117, v117, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 15, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v18, v18
	v_and_b32_e32 v34, 15, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v18, v79, v72, v7
	v_rcp_f32_e32 v7, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[26:29] offset:2048
	ds_store_b128 v0, v[31:34] offset:2304
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v74, v72, v12
	v_div_fixup_f32 v12, v77, v72, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v8, -v6, v7, 1.0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v7, v8, v7
	v_div_scale_f32 v8, vcc_lo, v19, v117, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v24, v8, v7
	v_fma_f32 v25, -v6, v24, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v7
	v_fma_f32 v6, -v6, v24, v8
	v_div_fixup_f32 v8, v104, v100, v15
	v_div_fixup_f32 v15, v109, v100, v16
	v_div_fixup_f32 v16, v113, v100, v17
	v_div_fixup_f32 v17, v118, v100, v14
	v_div_fmas_f32 v6, v6, v7, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v88, v83, v10
	v_div_fixup_f32 v10, v92, v83, v11
	v_div_fixup_f32 v14, v65, v117, v21
	v_div_fixup_f32 v21, v105, v117, v23
	v_div_fixup_f32 v23, v6, v117, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v6, 5, v30
	v_lshlrev_b32_e32 v11, 6, v153
	v_cndmask_b32_e64 v4, 0x2010, 0, vcc_lo
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v24, v101, v83, v9
	v_div_fixup_f32 v9, v127, v117, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v6, 0x300, v11, v6
	v_xor_b32_e32 v4, v4, v50
	v_lshlrev_b32_e32 v11, 2, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v38, v4, v6, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v8
	v_rndne_f32_e32 v4, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v42, 0xc060, v38, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v9
	v_rndne_f32_e32 v9, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v11, v9
	v_cvt_i32_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v15, v13
	v_and_b32_e32 v10, 15, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v11, 15, v11
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_and_b32_e32 v15, 15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v4, v4
	v_and_b32_e32 v12, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v14, 15, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v4, v4
	v_and_b32_e32 v13, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v19, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v75, 48, 0
	ds_store_b128 v4, v[6:9]
	ds_store_b128 v4, v[10:13] offset:256
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v16, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v17, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v21, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v0, 0, v38
	ds_store_b128 v4, v[14:17] offset:2048
	ds_store_b128 v4, v[18:21] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v0 offset:4096
	ds_load_b128 v[10:13], v0
	ds_load_b128 v[14:17], v0 offset:128
	ds_load_b128 v[18:21], v0 offset:4224
	v_xad_u32 v4, 0x4020, v38, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v46, v6, 4, v10
	v_lshl_or_b32 v47, v7, 4, v11
	v_lshl_or_b32 v48, v8, 4, v12
	v_lshl_or_b32 v0, v9, 4, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[6:9], v4 offset:4096
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[22:25], v4 offset:128
	ds_load_b128 v[26:29], v4 offset:4224
	v_xad_u32 v4, 0x8040, v38, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v49, v6, 4, v10
	v_lshl_or_b32 v50, v7, 4, v11
	v_lshl_or_b32 v51, v8, 4, v12
	v_lshl_or_b32 v52, v9, 4, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[6:9], v4 offset:4096
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[30:33], v4 offset:128
	ds_load_b128 v[34:37], v4 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v54, v6, 4, v10
	v_lshl_or_b32 v55, v7, 4, v11
	v_lshl_or_b32 v56, v8, 4, v12
	v_lshl_or_b32 v4, v9, 4, v13
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[6:9], v42 offset:4096
	ds_load_b128 v[10:13], v42
	ds_load_b128 v[38:41], v42 offset:128
	ds_load_b128 v[42:45], v42 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v58, v7, 4, v11
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 62, v156
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v8, 4, v12
	v_lshl_or_b32 v11, v18, 4, v14
	v_lshl_or_b32 v14, v20, 4, v16
	v_lshl_or_b32 v16, v27, 4, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s0, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v27, s74, v156
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v9, 4, v13
	v_lshl_or_b32 v57, v6, 4, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 60, v156
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v21, 4, v17
	v_lshl_or_b32 v21, v28, 4, v24
	v_lshl_or_b32 v13, v19, 4, v15
	v_lshl_or_b32 v15, v26, 4, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s1, s74, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v34, 4, v30
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v42, 4, v38
	v_lshl_or_b32 v18, v35, 4, v31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 58, v156
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v29, 4, v25
	v_lshl_or_b32 v25, v43, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 54, v27
	v_add_nc_u32_e32 v30, 58, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s4, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s4
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 60, v27
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v36, 4, v32
	v_lshl_or_b32 v26, v44, 4, v40
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[76:77], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 56, v156
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v37, 4, v33
	v_lshl_or_b32 v6, v45, 4, v41
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s6, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s5
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 54, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s8, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s8
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 52, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s10, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s10
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s8, s8, s9
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 50, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s12, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s12
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s10, s10, s11
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 48, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s14, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s14
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s12, s12, s13
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 46, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s16, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s16
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s14, s14, s15
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 44, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s18, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s18
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s16, s16, s17
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 42, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s20, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s20
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s18, s18, s19
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 40, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s22, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s22
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s20, s20, s21
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 38, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s24, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s24
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s22, s22, s23
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 36, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s26, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s26
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s24, s24, s25
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 34, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s28, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s28
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s26, s26, s27
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[78:79], v[7:8]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v7, 32, v156
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s30, s74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s30
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s28, s28, s29
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s33, s74, v195
	v_add_co_ci_u32_e64 v8, null, s75, 0, s33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s30, s30, s31
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s35, s74, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s35
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s33, s33, s34
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s37, s74, v193
	v_add_co_ci_u32_e64 v8, null, s75, 0, s37
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s35, s35, s36
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s39, s74, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s39
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s37, s37, s38
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s41, s74, v191
	v_add_co_ci_u32_e64 v8, null, s75, 0, s41
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s39, s39, s40
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s43, s74, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s43
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s41, s41, s42
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s45, s74, v189
	v_add_co_ci_u32_e64 v8, null, s75, 0, s45
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s43, s43, s44
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s47, s74, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s47
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s45, s45, s46
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s49, s74, v175
	v_add_co_ci_u32_e64 v8, null, s75, 0, s49
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s47, s47, s48
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s51, s74, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s51
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s49, s49, s50
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s53, s74, v161
	v_add_co_ci_u32_e64 v8, null, s75, 0, s53
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s51, s51, s52
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s55, s74, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s55
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s53, s53, s54
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s57, s74, v159
	v_add_co_ci_u32_e64 v8, null, s75, 0, s57
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s55, s55, s56
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s59, s74, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s59
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s57, s57, s58
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s61, s74, v157
	v_add_co_ci_u32_e64 v8, null, s75, 0, s61
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s59, s59, s60
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[78:79], v[7:8]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v7, s63, s74, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s75, 0, s63
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[76:77], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[78:79], v[7:8]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_lshl_or_b32 v7, s80, 7, v155
	v_mad_u64_u32 v[8:9], null, v27, s73, v[7:8]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e64 v8, 0x80000000, v8, s63
	buffer_store_b8 v46, v8, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[8:9], null, v8, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v8, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v49, v10, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v8, s73, v[7:8]
	v_add_nc_u32_e32 v9, 6, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s59
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v9, s73, v[7:8]
	v_add_nc_u32_e32 v9, 8, v27
	v_mad_u64_u32 v[9:10], null, v9, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s57
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 10, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v57, v8, s[64:67], 0 offen
	v_cndmask_b32_e64 v28, 0x80000000, v9, s55
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v10, s73, v[7:8]
	v_add_nc_u32_e32 v9, 12, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v11, v28, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 14, v27
	v_add_nc_u32_e32 v28, 20, v27
	v_mad_u64_u32 v[9:10], null, v9, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v15, v8, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v11, 0x80000000, v9, s51
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v8, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v15, 0x80000000, v10, s49
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 18, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v17, v11, s[64:67], 0 offen
	buffer_store_b8 v19, v15, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s73, v[7:8]
	v_mad_u64_u32 v[10:11], null, v28, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v11, 0x80000000, v8, s47
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 22, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v15, 0x80000000, v9, s45
	buffer_store_b8 v47, v11, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v8, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v17, 0x80000000, v10, s43
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 24, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v50, v15, s[64:67], 0 offen
	buffer_store_b8 v55, v17, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 28, v27
	v_mad_u64_u32 v[9:10], null, v10, s73, v[7:8]
	v_add_nc_u32_e32 v10, 26, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v11, 0x80000000, v8, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v17, 0x80000000, v9, s39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v10, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v11, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 30, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v13, v17, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 34, v27
	v_add_nc_u32_e32 v17, 36, v27
	v_mad_u64_u32 v[9:10], null, v15, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v15, 0x80000000, v8, s37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v16, v15, s[64:67], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v9, s35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v11, s73, v[7:8]
	v_add_nc_u32_e32 v11, 38, v27
	v_add_nc_u32_e32 v15, 40, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v18, v19, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 42, v27
	v_add_nc_u32_e32 v18, 44, v27
	v_mad_u64_u32 v[9:10], null, v10, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v8, s33
	buffer_store_b8 v25, v10, s[64:67], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v9, s30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v13, s73, v[7:8]
	v_add_nc_u32_e32 v13, 46, v27
	v_add_nc_u32_e32 v25, 52, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v48, v19, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 50, v27
	v_mad_u64_u32 v[9:10], null, v17, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v8, s28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 48, v27
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v51, v10, s[64:67], 0 offen
	v_cndmask_b32_e64 v28, 0x80000000, v9, s26
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v11, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v56, v28, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 56, v27
	v_add_nc_u32_e32 v27, 62, v27
	v_mad_u64_u32 v[9:10], null, v15, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v10, 0x80000000, v8, s24
	buffer_store_b8 v12, v10, s[64:67], 0 offen
	v_cndmask_b32_e64 v15, 0x80000000, v9, s22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v16, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v14, v15, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v18, s73, v[7:8]
	v_mad_u64_u32 v[10:11], null, v13, s73, v[7:8]
	v_mad_u64_u32 v[11:12], null, v17, s73, v[7:8]
	v_mad_u64_u32 v[12:13], null, v19, s73, v[7:8]
	v_mad_u64_u32 v[13:14], null, v25, s73, v[7:8]
	v_mad_u64_u32 v[14:15], null, v29, s73, v[7:8]
	v_mad_u64_u32 v[15:16], null, v28, s73, v[7:8]
	v_mad_u64_u32 v[16:17], null, v30, s73, v[7:8]
	v_mad_u64_u32 v[17:18], null, v31, s73, v[7:8]
	v_mad_u64_u32 v[18:19], null, v27, s73, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v7, 0x80000000, v8, s20
	v_cndmask_b32_e64 v8, 0x80000000, v9, s18
	v_cndmask_b32_e64 v9, 0x80000000, v10, s16
	v_cndmask_b32_e64 v10, 0x80000000, v11, s14
	v_cndmask_b32_e64 v11, 0x80000000, v12, s12
	s_clause 0x4
	buffer_store_b8 v21, v7, s[64:67], 0 offen
	buffer_store_b8 v23, v8, s[64:67], 0 offen
	buffer_store_b8 v26, v9, s[64:67], 0 offen
	buffer_store_b8 v0, v10, s[64:67], 0 offen
	buffer_store_b8 v52, v11, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v13, s10
	v_cndmask_b32_e64 v7, 0x80000000, v14, s8
	v_cndmask_b32_e64 v8, 0x80000000, v15, s6
	v_cndmask_b32_e64 v9, 0x80000000, v16, s4
	v_cndmask_b32_e64 v10, 0x80000000, v17, s1
	s_clause 0x4
	buffer_store_b8 v4, v0, s[64:67], 0 offen
	buffer_store_b8 v59, v7, s[64:67], 0 offen
	buffer_store_b8 v20, v8, s[64:67], 0 offen
	buffer_store_b8 v22, v9, s[64:67], 0 offen
	buffer_store_b8 v24, v10, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v18, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v7, 4, v153
	v_lshrrev_b32_e32 v8, 2, v111
	v_lshlrev_b32_e32 v4, 3, v154
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v6, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v7
	v_add_nc_u32_e32 v7, 0, v8
	v_add_nc_u32_e32 v0, 0, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s1, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v4, v7, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v153
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s80, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 428
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
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 428
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36872
; TotalNumSgprs: 83
; NumVgprs: 256
; ScratchSize: 428
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 83
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 428
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 106
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
