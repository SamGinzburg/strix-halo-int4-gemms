	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4                          ; -- Begin function amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4,@function
amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4:                                 ; @amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_gluon.py"
	.loc	1 77 0                          ; kda_gluon.py:77:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b32 s33, s[0:1], 0x68
.Ltmp0:
	.loc	1 190 9 prologue_end            ; kda_gluon.py:190:9
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s33, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; kda_gluon.py:0:9
	s_clause 0x6
	s_load_b64 s[28:29], s[0:1], 0x6c
	s_load_b32 s38, s[0:1], 0x84
	s_load_b64 s[6:7], s[0:1], 0x78
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x48
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b64 s[34:35], s[0:1], 0x38
	.loc	1 118 23 is_stmt 1              ; kda_gluon.py:118:23
	s_abs_i32 s19, s2
	.loc	1 123 21                        ; kda_gluon.py:123:21
	s_lshl_b32 s18, s3, 6
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v5, 1, v0
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v6, 5, v0
	.loc	1 122 21                        ; kda_gluon.py:122:21
	v_or_b32_e32 v1, 64, v0
	.loc	1 123 21                        ; kda_gluon.py:123:21
	v_or_b32_e32 v12, s18, v0
	v_bfe_i32 v3, v0, 5, 1
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v10, 15, v0
	v_bfe_i32 v11, v0, 4, 1
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v2, 32, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s20, s28
	s_xor_b32 s25, s2, s28
	s_cvt_f32_u32 s0, s20
	s_sub_i32 s4, 0, s20
	s_ashr_i32 s25, s25, 31
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	v_rcp_iflag_f32_e32 v9, s0
	v_cmp_eq_u32_e64 s0, 0, v5
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v5, 0x60, v6
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v7, 48, v0
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v3, 0x140, v3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s1, v9
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v9, 4, v10
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v11, 0x140, v11
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_lshrrev_b32_e32 v2, 3, v2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s21, s1
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v13, 4, v4
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v6, 24, v8
	s_mul_i32 s5, s4, s21
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s4, s29, v1
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_mul_hi_u32 s24, s21, s5
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v14, 1, v7
	s_add_i32 s21, s21, s24
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s24, s28, s33
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_mul_hi_u32 s21, s19, s21
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v10, 3, v10
	s_mul_i32 s26, s21, s20
	v_xor_b32_e32 v3, v3, v9
	s_sub_i32 s19, s19, s26
	s_add_i32 s26, s21, 1
	s_sub_i32 s27, s19, s20
	s_cmp_ge_u32 s19, s20
	v_xor_b32_e32 v9, v11, v9
	s_cselect_b32 s21, s26, s21
	s_cselect_b32 s19, s27, s19
	s_add_i32 s26, s21, 1
	s_cmp_ge_u32 s19, s20
	v_mov_b32_e32 v80, 0
	s_cselect_b32 s19, s26, s21
	s_bfe_u32 s3, s3, 0x10019
	s_xor_b32 s19, s19, s25
	v_add_nc_u32_e32 v1, s3, v12
	s_sub_i32 s3, s19, s25
	v_lshl_add_u32 v5, v7, 3, v5
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_mul_i32 s19, s3, s28
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s3, s24, s3
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_sub_i32 s2, s2, s19
	v_ashrrev_i32_e32 v1, 1, v1
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_add_i32 s36, s3, s2
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s1, s29, v0
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s2, s6, s36
	s_mul_i32 s3, s29, s36
	v_mad_u64_u32 v[52:53], null, s7, s36, v[1:2]
	s_add_i32 s2, s2, s18
	.loc	1 129 18                        ; kda_gluon.py:129:18
	v_cmp_gt_i32_e64 s5, s6, v12
	.loc	1 190 9                         ; kda_gluon.py:190:9
	v_add_lshl_u32 v53, s2, v0, 1
	v_lshl_add_u32 v54, s3, 1, v8
	v_lshl_add_u32 v55, s3, 2, v4
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v57, 0, v2
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v58, 0, v13
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v59, v5, v6
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v60, 0, v14
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v61, 0, v3
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v62, 0, v9
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v63, 0, v10
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v64, 0, v4
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mul_i32 s37, s6, s28
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mul_i32 s2, s29, s28
	s_mul_i32 s39, s7, s28
	s_and_b32 s17, s17, 0xffff
	s_lshl_b32 s40, s37, 1
	s_lshl_b32 s7, s2, 1
	s_lshl_b32 s29, s2, 2
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s41, 0x76543210
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_add_nc_u32_e32 v1, 0x80, v54
	v_cndmask_b32_e64 v0, 0x80000000, v54, s1
	.loc	1 264 58                        ; kda_gluon.py:264:58
	s_ashr_i32 s37, s36, 31
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v2, 0x80000000, v55, s1
	.loc	1 264 58                        ; kda_gluon.py:264:58
	s_lshl_b64 s[2:3], s[36:37], 1
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	buffer_load_u16 v6, v0, s[20:23], 0 offen
	.loc	1 235 21                        ; kda_gluon.py:235:21
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 264 58                        ; kda_gluon.py:264:58
	s_add_u32 s2, s34, s2
	s_addc_u32 s3, s35, s3
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_lshl_b64 s[42:43], s[36:37], 2
	.loc	1 229 21                        ; kda_gluon.py:229:21
	buffer_load_u16 v7, v1, s[20:23], 0 offen
	.loc	1 235 21                        ; kda_gluon.py:235:21
	buffer_load_u16 v1, v1, s[8:11], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 248 31                        ; kda_gluon.py:248:31
	v_cndmask_b32_e64 v3, 0x80000000, v52, s5
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_add_u32 s42, s30, s42
	s_addc_u32 s43, s31, s43
	.loc	1 254 33                        ; kda_gluon.py:254:33
	v_mov_b16_e32 v5.h, 0
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_add_i32 s33, s33, -1
	.loc	1 333 13                        ; kda_gluon.py:333:13
	s_add_i32 s36, s36, s28
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cmp_lg_u32 s33, 0
	v_add_nc_u32_e32 v52, s39, v52
	v_add_nc_u32_e32 v54, s7, v54
	.loc	1 229 21                        ; kda_gluon.py:229:21
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v7, 0, v7, s4
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 235 21                        ; kda_gluon.py:235:21
	v_cndmask_b32_e64 v8, 0, v1, s4
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_add_nc_u32_e32 v4, 0x100, v55
	.loc	1 190 9                         ; kda_gluon.py:190:9
	v_add_nc_u32_e32 v55, s29, v55
	.loc	1 242 41                        ; kda_gluon.py:242:41
	v_mul_f32_e32 v1, v7, v7
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 235 21                        ; kda_gluon.py:235:21
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 243 41                        ; kda_gluon.py:243:41
	v_mul_f32_e32 v9, v8, v8
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_fmac_f32_e32 v1, v6, v6
.Ltmp4:
	.loc	1 235 21                        ; kda_gluon.py:235:21
	v_cndmask_b32_e64 v0, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_fmac_f32_e32 v9, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v1, v1, v1 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_permlanex16_b32 v10, v1, -1, -1 op_sel:[1,0]
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp16:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_permlanex16_b32 v11, v9, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_readlane_b32 s6, v1, 31
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_e32 v1, s6
.Ltmp20:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_readlane_b32 s37, v9, 31
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	ds_store_b32 v57, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v58
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_e32 v11, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_e32 v1, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp25:
	.loc	1 242 26                        ; kda_gluon.py:242:26
	v_sqrt_f32_e32 v1, v1
	.loc	1 244 25                        ; kda_gluon.py:244:25
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 244 21 is_stmt 0              ; kda_gluon.py:244:21
	v_div_scale_f32 v13, null, v1, v1, v7
	v_div_scale_f32 v11, null, v1, v1, v6
	v_rcp_f32_e32 v20, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v19, v11
	v_fma_f32 v24, -v13, v20, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v11, v19, 1.0
	v_dual_fmac_f32 v20, v24, v20 :: v_dual_mov_b32 v9, s37
.Ltmp26:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	ds_store_b32 v57, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 264 21                        ; kda_gluon.py:264:21
	s_clause 0x1
	global_load_u16 v10, v56, s[2:3]
	global_load_b32 v207, v56, s[42:43]
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_clause 0x1
	buffer_load_b32 v9, v2, s[12:15], 0 offen
	buffer_load_b32 v4, v4, s[12:15], 0 offen
	.loc	1 248 31                        ; kda_gluon.py:248:31
	buffer_load_u8 v3, v3, s[24:27], 0 offen
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	ds_load_b32 v2, v58
.Ltmp29:
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fmac_f32_e32 v19, v23, v19
	v_div_scale_f32 v14, s2, v7, v1, v7
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_mul_f32_e32 v24, v14, v20
	v_fma_f32 v28, -v13, v24, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v28, v20
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_e32 v12, v2
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v2, v2, v12
.Ltmp32:
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v12, vcc_lo, v6, v1, v6
	.loc	1 243 26                        ; kda_gluon.py:243:26
	v_sqrt_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 245 25                        ; kda_gluon.py:245:25
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 245 21 is_stmt 0              ; kda_gluon.py:245:21
	v_div_scale_f32 v15, null, v2, v2, v0
	v_div_scale_f32 v17, null, v2, v2, v8
	v_div_scale_f32 v16, s3, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v21, v15
	v_rcp_f32_e32 v22, v17
	v_div_scale_f32 v18, s6, v8, v2, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v25, -v15, v21, 1.0
	v_fma_f32 v26, -v17, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v21, v25, v21 :: v_dual_fmac_f32 v22, v26, v22
	v_dual_mul_f32 v25, v16, v21 :: v_dual_mul_f32 v26, v18, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v15, v25, v16
	v_fma_f32 v30, -v17, v26, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v25, v29, v21 :: v_dual_fmac_f32 v26, v30, v22
	.loc	1 244 21 is_stmt 1              ; kda_gluon.py:244:21
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v23, v12, v19 :: v_dual_lshlrev_b32 v208, 16, v10
	v_fma_f32 v27, -v11, v23, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v27, v19
	v_fma_f32 v11, -v11, v23, v12
	v_fma_f32 v12, -v13, v24, v14
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_fma_f32 v13, -v15, v25, v16
	v_fma_f32 v14, -v17, v26, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fmas_f32 v11, v11, v19, v23
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v12, v12, v20, v24
	.loc	1 245 21                        ; kda_gluon.py:245:21
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v13, v13, v21, v25
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v7, v12, v1, v7
	.loc	1 295 21                        ; kda_gluon.py:295:21
	v_mul_f32_e32 v206, s38, v7
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v6, v11, v1, v6
	.loc	1 280 21                        ; kda_gluon.py:280:21
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v7, 0x3fb8aa3b, v4
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_div_fmas_f32 v11, v14, v22, v26
	v_div_fixup_f32 v1, v13, v2, v0
	.loc	1 248 31                        ; kda_gluon.py:248:31
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v0.l, 0, v3.l, s5
	.loc	1 295 21                        ; kda_gluon.py:295:21
	v_dual_mul_f32 v205, s38, v6 :: v_dual_mul_f32 v6, 0x3fb8aa3b, v9
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v7
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_div_fixup_f32 v2, v11, v2, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 256 21                        ; kda_gluon.py:256:21
	v_and_b16 v0.h, v0.l, 15
	.loc	1 257 22                        ; kda_gluon.py:257:22
	v_lshrrev_b16 v0.l, 4, v0.l
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, s2
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s2
	.loc	1 254 33                        ; kda_gluon.py:254:33
	v_cndmask_b16 v5.l, v0.l, v0.h, s0
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v6, 0x3fb8aa3b, v4
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	.loc	1 260 21                        ; kda_gluon.py:260:21
	v_cmp_lt_u16_e32 vcc_lo, 7, v5.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_fmac_f32_e32 v3, 0x3fb8aa3b, v9
	v_exp_f32_e32 v0, v3
	v_exp_f32_e32 v3, v6
	.loc	1 261 21                        ; kda_gluon.py:261:21
	v_or_b32_e32 v6, -16, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_ldexp_f32 v0, v0, v4
	v_ldexp_f32 v4, v3, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v3, 1.0, v0, s1
	v_cndmask_b32_e64 v4, 1.0, v4, s4
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_store_b64 v59, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v60
	ds_load_b128 v[36:39], v60 offset:16
	ds_load_b128 v[40:43], v60 offset:128
	ds_load_b128 v[44:47], v60 offset:144
	ds_load_b128 v[48:51], v60 offset:256
	ds_load_b128 v[193:196], v60 offset:272
	ds_load_b128 v[197:200], v60 offset:384
	ds_load_b128 v[201:204], v60 offset:400
	.loc	1 259 31                        ; kda_gluon.py:259:31
	v_cndmask_b32_e32 v5, v5, v6, vcc_lo
	.loc	1 283 23                        ; kda_gluon.py:283:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v59, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v136, v136, v35
	.loc	1 264 21                        ; kda_gluon.py:264:21
	v_cvt_f32_i32_e32 v209, v5
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_load_b128 v[28:31], v60
	ds_load_b128 v[24:27], v60 offset:16
	ds_load_b128 v[20:23], v60 offset:128
	ds_load_b128 v[16:19], v60 offset:144
	ds_load_b128 v[12:15], v60 offset:256
	ds_load_b128 v[8:11], v60 offset:272
	ds_load_b128 v[4:7], v60 offset:384
	ds_load_b128 v[0:3], v60 offset:400
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v73, v73, v36 :: v_dual_mul_f32 v86, v86, v42
	v_dual_mul_f32 v141, v141, v39 :: v_dual_mul_f32 v146, v146, v41
	v_dual_mul_f32 v81, v81, v40 :: v_dual_mul_f32 v94, v94, v46
	v_dual_mul_f32 v101, v101, v50 :: v_dual_mul_f32 v110, v110, v195
	v_dual_mul_f32 v165, v165, v51 :: v_dual_mul_f32 v174, v174, v196
	v_dual_mul_f32 v109, v109, v195 :: v_dual_mul_f32 v114, v114, v197
	v_dual_mul_f32 v69, v69, v34 :: v_dual_mul_f32 v74, v74, v36
	v_dual_mul_f32 v71, v71, v34 :: v_dual_mul_f32 v76, v76, v36
	v_dual_mul_f32 v133, v133, v35 :: v_dual_mul_f32 v138, v138, v37
	v_dual_mul_f32 v135, v135, v35 :: v_dual_mul_f32 v140, v140, v37
	v_dual_mul_f32 v75, v75, v36 :: v_dual_mul_f32 v88, v88, v42
	v_dual_mul_f32 v77, v77, v38 :: v_dual_mul_f32 v82, v82, v40
	v_dual_mul_f32 v137, v137, v37 :: v_dual_mul_f32 v150, v150, v43
	v_dual_mul_f32 v139, v139, v37 :: v_dual_mul_f32 v152, v152, v43
	v_dual_mul_f32 v143, v143, v39 :: v_dual_mul_f32 v148, v148, v41
	v_dual_mul_f32 v85, v85, v42 :: v_dual_mul_f32 v90, v90, v44
	v_dual_mul_f32 v87, v87, v42 :: v_dual_mul_f32 v92, v92, v44
	v_dual_mul_f32 v145, v145, v41 :: v_dual_mul_f32 v158, v158, v47
	v_dual_mul_f32 v147, v147, v41 :: v_dual_mul_f32 v160, v160, v47
	v_dual_mul_f32 v149, v149, v43 :: v_dual_mul_f32 v154, v154, v45
	v_dual_mul_f32 v89, v89, v44 :: v_dual_mul_f32 v102, v102, v50
	v_dual_mul_f32 v91, v91, v44 :: v_dual_mul_f32 v104, v104, v50
	v_dual_mul_f32 v93, v93, v46 :: v_dual_mul_f32 v98, v98, v48
	v_dual_mul_f32 v153, v153, v45 :: v_dual_mul_f32 v166, v166, v51
	v_dual_mul_f32 v155, v155, v45 :: v_dual_mul_f32 v168, v168, v51
	v_dual_mul_f32 v157, v157, v47 :: v_dual_mul_f32 v162, v162, v49
	v_dual_mul_f32 v97, v97, v48 :: v_dual_mul_f32 v106, v106, v193
	v_dual_mul_f32 v103, v103, v50 :: v_dual_mul_f32 v112, v112, v195
	v_dual_mul_f32 v161, v161, v49 :: v_dual_mul_f32 v170, v170, v194
	v_dual_mul_f32 v167, v167, v51 :: v_dual_mul_f32 v176, v176, v196
	v_dual_mul_f32 v105, v105, v193 :: v_dual_mul_f32 v118, v118, v199
	v_dual_mul_f32 v113, v113, v197 :: v_dual_mul_f32 v126, v126, v203
	v_dual_mul_f32 v177, v177, v198 :: v_dual_mul_f32 v190, v190, v204
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v125, v125, v203 :: v_dual_mul_f32 v50, v86, v22
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v191, v191, v204 :: v_dual_mul_f32 v36, v101, v14
	.loc	1 285 33                        ; kda_gluon.py:285:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v37, v109, v10
	v_mul_f32_e32 v41, v141, v27
	v_dual_mul_f32 v44, v165, v15 :: v_dual_mul_f32 v51, v94, v18
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v65, v65, v32 :: v_dual_mul_f32 v78, v78, v38
	v_mul_f32_e32 v70, v70, v34
	v_mul_f32_e32 v72, v72, v34
	v_mul_f32_e32 v134, v134, v35
	v_dual_mul_f32 v151, v151, v43 :: v_dual_mul_f32 v156, v156, v45
	v_dual_mul_f32 v95, v95, v46 :: v_dual_mul_f32 v100, v100, v48
	v_dual_mul_f32 v173, v173, v196 :: v_dual_mul_f32 v178, v178, v198
	v_dual_mul_f32 v175, v175, v196 :: v_dual_mul_f32 v180, v180, v198
	v_dual_mul_f32 v117, v117, v199 :: v_dual_mul_f32 v122, v122, v201
	v_dual_mul_f32 v119, v119, v199 :: v_dual_mul_f32 v124, v124, v201
	v_dual_mul_f32 v179, v179, v198 :: v_dual_mul_f32 v192, v192, v204
	v_dual_mul_f32 v181, v181, v200 :: v_dual_mul_f32 v186, v186, v202
	v_mul_f32_e32 v121, v121, v201
	v_mul_f32_e32 v123, v123, v201
	v_dual_mul_f32 v127, v127, v203 :: v_dual_mul_f32 v34, v85, v22
	v_mul_f32_e32 v189, v189, v204
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v35, v93, v18
	v_mul_f32_e32 v42, v149, v23
	v_dual_mul_f32 v43, v157, v19 :: v_dual_mul_f32 v210, v71, v30
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v196, v126, v2
	v_dual_mul_f32 v201, v166, v15 :: v_dual_fmac_f32 v36, v97, v12
	v_dual_mul_f32 v204, v190, v3 :: v_dual_fmac_f32 v41, v137, v25
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v50, v82, v20
	v_fmac_f32_e32 v44, v161, v13
	v_fmac_f32_e32 v37, v105, v8
	v_fmac_f32_e32 v51, v90, v16
.Ltmp34:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v66, v66, v32
	v_dual_mul_f32 v67, v67, v32 :: v_dual_mul_f32 v80, v80, v38
	v_dual_mul_f32 v68, v68, v32 :: v_dual_mul_f32 v129, v129, v33
	v_mul_f32_e32 v142, v142, v39
	v_mul_f32_e32 v130, v130, v33
	v_dual_mul_f32 v131, v131, v33 :: v_dual_mul_f32 v144, v144, v39
	v_dual_mul_f32 v132, v132, v33 :: v_dual_mul_f32 v79, v79, v38
	v_mul_f32_e32 v84, v84, v40
	v_dual_mul_f32 v83, v83, v40 :: v_dual_mul_f32 v96, v96, v46
	v_dual_mul_f32 v159, v159, v47 :: v_dual_mul_f32 v164, v164, v49
	v_dual_mul_f32 v99, v99, v48 :: v_dual_mul_f32 v108, v108, v193
	v_dual_mul_f32 v163, v163, v49 :: v_dual_mul_f32 v172, v172, v194
	v_dual_mul_f32 v107, v107, v193 :: v_dual_mul_f32 v120, v120, v199
	v_dual_mul_f32 v169, v169, v194 :: v_dual_mul_f32 v182, v182, v200
	v_dual_mul_f32 v171, v171, v194 :: v_dual_mul_f32 v184, v184, v200
	v_dual_mul_f32 v183, v183, v200 :: v_dual_mul_f32 v188, v188, v202
	v_dual_mul_f32 v185, v185, v202 :: v_dual_mul_f32 v198, v142, v27
	v_dual_mul_f32 v187, v187, v202 :: v_dual_mul_f32 v40, v133, v31
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v32, v69, v30
	v_dual_mul_f32 v33, v77, v26 :: v_dual_mul_f32 v200, v158, v19
	v_dual_mul_f32 v45, v173, v11 :: v_dual_add_f32 v36, v36, v37
	v_dual_mul_f32 v46, v181, v7 :: v_dual_mul_f32 v193, v102, v14
	v_mul_f32_e32 v49, v78, v26
	v_mul_f32_e32 v194, v110, v10
	v_dual_mul_f32 v199, v150, v23 :: v_dual_fmac_f32 v34, v81, v20
	v_dual_mul_f32 v202, v174, v11 :: v_dual_mul_f32 v37, v95, v18
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v42, v145, v21
	v_dual_fmac_f32 v43, v153, v17 :: v_dual_add_f32 v50, v50, v51
	v_fmac_f32_e32 v35, v89, v16
.Ltmp36:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v111, v111, v195 :: v_dual_mul_f32 v116, v116, v197
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v38, v117, v6
	v_dual_mul_f32 v195, v118, v6 :: v_dual_fmac_f32 v32, v65, v28
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v40, v129, v29
.Ltmp38:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v47, v189, v3
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v42, v42, v43 :: v_dual_fmac_f32 v33, v73, v24
	v_dual_add_f32 v34, v34, v35 :: v_dual_mul_f32 v39, v125, v2
.Ltmp40:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v35, v87, v22
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v45, v169, v9 :: v_dual_fmac_f32 v194, v106, v8
.Ltmp42:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v51, v151, v23 :: v_dual_fmac_f32 v200, v154, v17
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v193, v98, v12
	v_fmac_f32_e32 v199, v146, v21
.Ltmp44:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v115, v115, v197 :: v_dual_mul_f32 v128, v128, v203
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v48, v70, v30
	v_mul_f32_e32 v197, v134, v31
	v_dual_mul_f32 v203, v182, v7 :: v_dual_fmac_f32 v38, v113, v4
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v32, v32, v33
	v_dual_add_f32 v40, v40, v41 :: v_dual_mul_f32 v41, v111, v10
	v_fmac_f32_e32 v46, v177, v5
	v_fmac_f32_e32 v47, v185, v1
	v_add_f32_e32 v199, v199, v200
.Ltmp46:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v200, v183, v7 :: v_dual_add_f32 v193, v193, v194
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v202, v170, v9
.Ltmp48:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v194, v159, v19 :: v_dual_fmac_f32 v39, v121, v0
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v46, v46, v47 :: v_dual_mul_f32 v33, v79, v26
.Ltmp50:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v47, v135, v31 :: v_dual_fmac_f32 v196, v122, v0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v38, v38, v39 :: v_dual_mul_f32 v39, v103, v14
	v_fmac_f32_e32 v48, v66, v28
	v_fmac_f32_e32 v49, v74, v24
	v_fmac_f32_e32 v195, v114, v4
	v_fmac_f32_e32 v201, v162, v13
	v_fmac_f32_e32 v197, v130, v29
	v_fmac_f32_e32 v198, v138, v25
	v_fmac_f32_e32 v203, v178, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v204, v186, v1 :: v_dual_add_f32 v201, v201, v202
	v_fmac_f32_e32 v194, v155, v17
.Ltmp52:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v202, v191, v3
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v195, v195, v196
.Ltmp54:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v196, v167, v15
	v_dual_mul_f32 v43, v119, v6 :: v_dual_add_f32 v48, v48, v49
	v_mul_f32_e32 v49, v143, v27
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v210, v67, v28
	v_fmac_f32_e32 v33, v75, v24
	v_fmac_f32_e32 v200, v179, v5
	v_fmac_f32_e32 v202, v187, v1
	v_dual_add_f32 v203, v203, v204 :: v_dual_mul_f32 v204, v72, v30
	v_dual_add_f32 v197, v197, v198 :: v_dual_mul_f32 v198, v175, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v200, v200, v202
.Ltmp56:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v202, v136, v31 :: v_dual_add_f32 v33, v210, v33
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v204, v68, v28
.Ltmp58:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v210, v80, v26 :: v_dual_fmac_f32 v37, v91, v16
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v47, v131, v29
	v_fmac_f32_e32 v51, v147, v21
	v_add_f32_e32 v44, v44, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v210, v76, v24
	v_fmac_f32_e32 v35, v83, v20
.Ltmp60:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v45, v127, v2
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v51, v51, v194
.Ltmp62:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v194, v120, v6
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v196, v163, v13
	v_add_f32_e32 v204, v204, v210
.Ltmp64:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v210, v144, v27 :: v_dual_add_f32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v194, v116, v4
.Ltmp66:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v37, v88, v22 :: v_dual_fmac_f32 v198, v171, v9
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v43, v115, v4 :: v_dual_fmac_f32 v202, v132, v29
	v_dual_fmac_f32 v45, v123, v0 :: v_dual_fmac_f32 v210, v140, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v84, v20
	v_add_f32_e32 v196, v196, v198
.Ltmp68:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v198, v128, v2 :: v_dual_fmac_f32 v41, v107, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v43, v43, v45
	v_dual_fmac_f32 v49, v139, v25 :: v_dual_add_f32 v202, v202, v210
	v_fmac_f32_e32 v198, v124, v0
	v_dual_fmac_f32 v39, v99, v12 :: v_dual_mul_f32 v210, v176, v11
	v_add_f32_e32 v33, v33, v35
.Ltmp70:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v45, v104, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v194, v194, v198
.Ltmp72:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v198, v168, v15 :: v_dual_add_f32 v39, v39, v41
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v210, v172, v9
.Ltmp74:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v41, v96, v18
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v198, v164, v13
	v_add_f32_e32 v47, v47, v49
	v_add_f32_e32 v35, v39, v43
	v_add_f32_e32 v43, v196, v200
.Ltmp77:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v49, v112, v10
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v198, v198, v210
.Ltmp79:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v210, v192, v3
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v32, v32, v34 :: v_dual_add_f32 v39, v47, v51
	v_add_f32_e32 v34, v36, v38
	v_add_f32_e32 v36, v40, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v210, v188, v1
	v_dual_add_f32 v42, v193, v195 :: v_dual_fmac_f32 v41, v92, v16
	v_add_f32_e32 v38, v44, v46
	v_dual_add_f32 v40, v48, v50 :: v_dual_add_f32 v33, v33, v35
	v_add_f32_e32 v44, v197, v199
	v_add_f32_e32 v37, v37, v41
	v_add_f32_e32 v46, v201, v203
	v_dual_add_f32 v32, v32, v34 :: v_dual_add_f32 v35, v39, v43
	v_fmac_f32_e32 v45, v100, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v37, v204, v37
	v_add_f32_e32 v34, v36, v38
	v_add_f32_e32 v36, v40, v42
	v_dual_add_f32 v38, v44, v46 :: v_dual_add_f32 v35, v33, v35
.Ltmp81:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v41, v152, v23
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v32, v32, v34
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v34, v36, v38
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v38, v35, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v49, v108, v8
	v_fmac_f32_e32 v41, v148, v21
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v33, v32, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v45, v45, v49
.Ltmp89:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v49, v160, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v32, v32, v33 :: v_dual_add_f32 v45, v45, v194
	v_fmac_f32_e32 v49, v156, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v37, v37, v45
	v_add_f32_e32 v41, v41, v49
.Ltmp91:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v49, v184, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v41, v202, v41
	v_fmac_f32_e32 v49, v180, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v49, v49, v210
	v_add_f32_e32 v47, v198, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v39, v41, v47
	v_add_f32_e32 v36, v37, v39
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v37, v34, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v39, v36, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v33, v34, v37 :: v_dual_add_f32 v34, v35, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v35, v36, v39
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	ds_store_b128 v61, v[32:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v62
.Ltmp96:
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v36, v32, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v33, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v34, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v35, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v32, v32, v36 :: v_dual_add_f32 v33, v33, v37
	v_dual_add_f32 v34, v34, v38 :: v_dual_add_f32 v35, v35, v39
.Ltmp99:
	.loc	1 286 26                        ; kda_gluon.py:286:26
	ds_store_2addr_b64 v63, v[32:33], v[34:35] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v32, v64
	.loc	1 288 30                        ; kda_gluon.py:288:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 287 24                        ; kda_gluon.py:287:24
	v_fma_f32 v32, v208, v209, -v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 289 17                        ; kda_gluon.py:289:17
	v_mul_f32_e32 v32, v207, v32
	.loc	1 288 30                        ; kda_gluon.py:288:30
	ds_store_b32 v64, v32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[40:43], v63 offset1:16
	.loc	1 294 27                        ; kda_gluon.py:294:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v59, v[205:206]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v60
	ds_load_b128 v[36:39], v60 offset:16
	ds_load_b128 v[44:47], v60 offset:128
	ds_load_b128 v[48:51], v60 offset:144
	ds_load_b128 v[193:196], v60 offset:256
	ds_load_b128 v[197:200], v60 offset:272
	ds_load_b128 v[201:204], v60 offset:384
	ds_load_b128 v[205:208], v60 offset:400
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp101:
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v65, v28, v40 :: v_dual_fmac_f32 v78, v26, v41
	v_dual_fmac_f32 v67, v28, v42 :: v_dual_fmac_f32 v80, v26, v43
	v_dual_fmac_f32 v69, v30, v40 :: v_dual_fmac_f32 v76, v24, v43
	v_dual_fmac_f32 v70, v30, v41 :: v_dual_fmac_f32 v129, v29, v40
	v_dual_fmac_f32 v142, v27, v41 :: v_dual_fmac_f32 v131, v29, v42
	v_fmac_f32_e32 v144, v27, v43
	v_dual_fmac_f32 v133, v31, v40 :: v_dual_fmac_f32 v140, v25, v43
	v_fmac_f32_e32 v134, v31, v41
	v_dual_fmac_f32 v135, v31, v42 :: v_dual_fmac_f32 v82, v20, v41
	v_dual_fmac_f32 v136, v31, v43 :: v_dual_fmac_f32 v73, v24, v40
	v_dual_fmac_f32 v86, v22, v41 :: v_dual_fmac_f32 v75, v24, v42
	v_fmac_f32_e32 v88, v22, v43
	v_dual_fmac_f32 v77, v26, v40 :: v_dual_fmac_f32 v84, v20, v43
	v_dual_fmac_f32 v79, v26, v42 :: v_dual_fmac_f32 v146, v21, v41
	v_dual_fmac_f32 v141, v27, v40 :: v_dual_fmac_f32 v148, v21, v43
	v_dual_fmac_f32 v143, v27, v42 :: v_dual_fmac_f32 v90, v16, v41
	v_dual_fmac_f32 v85, v22, v40 :: v_dual_fmac_f32 v92, v16, v43
	v_dual_fmac_f32 v87, v22, v42 :: v_dual_fmac_f32 v154, v17, v41
	v_dual_fmac_f32 v66, v28, v41 :: v_dual_fmac_f32 v71, v30, v42
	v_fmac_f32_e32 v138, v25, v41
	v_fmac_f32_e32 v72, v30, v43
	v_fmac_f32_e32 v130, v29, v41
	v_fmac_f32_e32 v132, v29, v43
	v_dual_fmac_f32 v74, v24, v41 :: v_dual_fmac_f32 v137, v25, v40
	v_dual_fmac_f32 v150, v23, v41 :: v_dual_fmac_f32 v139, v25, v42
	v_dual_fmac_f32 v152, v23, v43 :: v_dual_fmac_f32 v81, v20, v40
	v_dual_fmac_f32 v94, v18, v41 :: v_dual_fmac_f32 v83, v20, v42
	v_dual_fmac_f32 v96, v18, v43 :: v_dual_fmac_f32 v145, v21, v40
	v_dual_fmac_f32 v158, v19, v41 :: v_dual_fmac_f32 v147, v21, v42
	v_fmac_f32_e32 v160, v19, v43
	v_dual_fmac_f32 v149, v23, v40 :: v_dual_fmac_f32 v156, v17, v43
	v_dual_fmac_f32 v151, v23, v42 :: v_dual_fmac_f32 v98, v12, v41
	v_dual_fmac_f32 v89, v16, v40 :: v_dual_fmac_f32 v102, v14, v41
	v_dual_fmac_f32 v91, v16, v42 :: v_dual_fmac_f32 v104, v14, v43
	v_dual_fmac_f32 v93, v18, v40 :: v_dual_fmac_f32 v100, v12, v43
	v_dual_fmac_f32 v95, v18, v42 :: v_dual_fmac_f32 v162, v13, v41
	v_dual_fmac_f32 v153, v17, v40 :: v_dual_fmac_f32 v166, v15, v41
	v_dual_fmac_f32 v155, v17, v42 :: v_dual_fmac_f32 v168, v15, v43
	v_dual_fmac_f32 v157, v19, v40 :: v_dual_fmac_f32 v164, v13, v43
	v_dual_fmac_f32 v159, v19, v42 :: v_dual_fmac_f32 v106, v8, v41
	v_dual_fmac_f32 v97, v12, v40 :: v_dual_fmac_f32 v110, v10, v41
	v_dual_fmac_f32 v99, v12, v42 :: v_dual_fmac_f32 v112, v10, v43
	v_dual_fmac_f32 v101, v14, v40 :: v_dual_fmac_f32 v108, v8, v43
	v_dual_fmac_f32 v103, v14, v42 :: v_dual_fmac_f32 v170, v9, v41
	v_dual_fmac_f32 v161, v13, v40 :: v_dual_fmac_f32 v174, v11, v41
	v_dual_fmac_f32 v163, v13, v42 :: v_dual_fmac_f32 v176, v11, v43
	v_dual_fmac_f32 v165, v15, v40 :: v_dual_fmac_f32 v172, v9, v43
	v_dual_fmac_f32 v167, v15, v42 :: v_dual_fmac_f32 v114, v4, v41
	v_dual_fmac_f32 v105, v8, v40 :: v_dual_fmac_f32 v118, v6, v41
	v_dual_fmac_f32 v107, v8, v42 :: v_dual_fmac_f32 v120, v6, v43
	v_dual_fmac_f32 v109, v10, v40 :: v_dual_fmac_f32 v116, v4, v43
	v_dual_fmac_f32 v111, v10, v42 :: v_dual_fmac_f32 v178, v5, v41
	v_dual_fmac_f32 v169, v9, v40 :: v_dual_fmac_f32 v182, v7, v41
	v_dual_fmac_f32 v171, v9, v42 :: v_dual_fmac_f32 v184, v7, v43
	v_dual_fmac_f32 v173, v11, v40 :: v_dual_fmac_f32 v180, v5, v43
	v_dual_fmac_f32 v175, v11, v42 :: v_dual_fmac_f32 v122, v0, v41
	v_dual_fmac_f32 v113, v4, v40 :: v_dual_fmac_f32 v126, v2, v41
	v_dual_fmac_f32 v115, v4, v42 :: v_dual_fmac_f32 v128, v2, v43
	v_dual_fmac_f32 v117, v6, v40 :: v_dual_fmac_f32 v124, v0, v43
	v_dual_fmac_f32 v119, v6, v42 :: v_dual_fmac_f32 v186, v1, v41
	v_dual_fmac_f32 v177, v5, v40 :: v_dual_fmac_f32 v190, v3, v41
	v_dual_fmac_f32 v179, v5, v42 :: v_dual_fmac_f32 v192, v3, v43
	v_dual_fmac_f32 v181, v7, v40 :: v_dual_fmac_f32 v188, v1, v43
	v_fmac_f32_e32 v183, v7, v42
	v_fmac_f32_e32 v121, v0, v40
	v_fmac_f32_e32 v123, v0, v42
	v_dual_fmac_f32 v125, v2, v40 :: v_dual_mul_f32 v4, v71, v34
	v_fmac_f32_e32 v127, v2, v42
	v_dual_fmac_f32 v185, v1, v40 :: v_dual_mul_f32 v2, v70, v34
	v_fmac_f32_e32 v187, v1, v42
	v_dual_fmac_f32 v189, v3, v40 :: v_dual_mul_f32 v6, v72, v34
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v0, v69, v34
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_fmac_f32_e32 v191, v3, v42
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v1, v133, v35 :: v_dual_mul_f32 v10, v78, v38
	v_dual_mul_f32 v3, v134, v35 :: v_dual_mul_f32 v8, v77, v38
	v_dual_mul_f32 v5, v135, v35 :: v_dual_mul_f32 v14, v80, v38
	v_dual_mul_f32 v7, v136, v35 :: v_dual_mul_f32 v12, v79, v38
	v_dual_mul_f32 v9, v141, v39 :: v_dual_mul_f32 v18, v86, v46
	v_dual_mul_f32 v11, v142, v39 :: v_dual_mul_f32 v16, v85, v46
	v_dual_mul_f32 v13, v143, v39 :: v_dual_mul_f32 v22, v88, v46
	v_dual_mul_f32 v15, v144, v39 :: v_dual_mul_f32 v20, v87, v46
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_fmac_f32_e32 v68, v28, v43
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v17, v149, v47 :: v_dual_mul_f32 v26, v94, v50
	v_dual_mul_f32 v19, v150, v47 :: v_dual_mul_f32 v24, v93, v50
	v_dual_mul_f32 v21, v151, v47 :: v_dual_mul_f32 v30, v96, v50
	v_dual_mul_f32 v23, v152, v47 :: v_dual_mul_f32 v28, v95, v50
	v_dual_mul_f32 v25, v157, v51 :: v_dual_fmac_f32 v4, v67, v32
	v_dual_mul_f32 v27, v158, v51 :: v_dual_fmac_f32 v6, v68, v32
	v_dual_mul_f32 v29, v159, v51 :: v_dual_fmac_f32 v8, v73, v36
	v_dual_mul_f32 v31, v160, v51 :: v_dual_fmac_f32 v10, v74, v36
	v_mul_f32_e32 v35, v165, v196
	v_dual_mul_f32 v39, v166, v196 :: v_dual_mul_f32 v42, v109, v199
	v_mul_f32_e32 v41, v167, v196
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v1, v129, v33 :: v_dual_fmac_f32 v12, v75, v36
	v_dual_fmac_f32 v3, v130, v33 :: v_dual_fmac_f32 v14, v76, v36
	v_dual_fmac_f32 v5, v131, v33 :: v_dual_fmac_f32 v16, v81, v44
	v_dual_fmac_f32 v7, v132, v33 :: v_dual_mul_f32 v46, v111, v199
.Ltmp103:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v33, v168, v196 :: v_dual_mul_f32 v50, v117, v203
	v_mul_f32_e32 v43, v173, v200
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v9, v137, v37 :: v_dual_fmac_f32 v18, v82, v44
	v_dual_fmac_f32 v11, v138, v37 :: v_dual_fmac_f32 v20, v83, v44
	v_dual_fmac_f32 v13, v139, v37 :: v_dual_fmac_f32 v22, v84, v44
.Ltmp105:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v36, v110, v199
	v_mul_f32_e32 v44, v112, v199
	v_mul_f32_e32 v34, v101, v195
	v_mul_f32_e32 v38, v102, v195
	v_mul_f32_e32 v40, v103, v195
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v0, v65, v32
	v_fmac_f32_e32 v2, v66, v32
.Ltmp107:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v32, v104, v195
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v15, v140, v37 :: v_dual_fmac_f32 v24, v89, v48
.Ltmp109:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v47, v175, v200
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v17, v145, v45 :: v_dual_fmac_f32 v26, v90, v48
	v_dual_fmac_f32 v19, v146, v45 :: v_dual_fmac_f32 v28, v91, v48
	v_dual_fmac_f32 v21, v147, v45 :: v_dual_fmac_f32 v30, v92, v48
	v_dual_fmac_f32 v23, v148, v45 :: v_dual_mul_f32 v196, v183, v204
.Ltmp111:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v51, v181, v204 :: v_dual_fmac_f32 v40, v99, v193
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v25, v153, v49
	v_fmac_f32_e32 v27, v154, v49
	v_fmac_f32_e32 v29, v155, v49
	v_dual_fmac_f32 v31, v156, v49 :: v_dual_mul_f32 v48, v118, v203
.Ltmp113:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v49, v182, v204 :: v_dual_fmac_f32 v32, v100, v193
	v_dual_mul_f32 v195, v119, v203 :: v_dual_fmac_f32 v42, v105, v197
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v35, v161, v194 :: v_dual_fmac_f32 v36, v106, v197
	v_dual_fmac_f32 v39, v162, v194 :: v_dual_fmac_f32 v46, v107, v197
	v_dual_fmac_f32 v41, v163, v194 :: v_dual_fmac_f32 v44, v108, v197
	v_dual_fmac_f32 v33, v164, v194 :: v_dual_fmac_f32 v50, v113, v201
.Ltmp115:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v194, v184, v204 :: v_dual_mul_f32 v197, v126, v207
	v_dual_mul_f32 v37, v174, v200 :: v_dual_fmac_f32 v34, v97, v193
	v_dual_mul_f32 v45, v176, v200 :: v_dual_fmac_f32 v38, v98, v193
	v_dual_mul_f32 v193, v120, v203 :: v_dual_fmac_f32 v48, v114, v201
	v_dual_mul_f32 v199, v125, v207 :: v_dual_fmac_f32 v196, v179, v202
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v43, v169, v198
	v_fmac_f32_e32 v51, v177, v202
	v_dual_fmac_f32 v194, v180, v202 :: v_dual_fmac_f32 v197, v122, v205
	v_dual_add_f32 v4, v4, v12 :: v_dual_fmac_f32 v49, v178, v202
.Ltmp117:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v202, v192, v208
	v_dual_mul_f32 v200, v189, v208 :: v_dual_fmac_f32 v37, v170, v198
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v8 :: v_dual_fmac_f32 v47, v171, v198
	v_dual_add_f32 v8, v16, v24 :: v_dual_mul_f32 v203, v127, v207
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v200, v185, v206
	v_dual_fmac_f32 v199, v121, v205 :: v_dual_fmac_f32 v202, v188, v206
	v_dual_fmac_f32 v45, v172, v198 :: v_dual_mul_f32 v198, v190, v208
.Ltmp119:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v204, v191, v208
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v195, v115, v201
	v_fmac_f32_e32 v193, v116, v201
.Ltmp121:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v201, v128, v207 :: v_dual_add_f32 v16, v34, v42
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v198, v186, v206 :: v_dual_fmac_f32 v203, v123, v205
	v_add_f32_e32 v2, v2, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v204, v187, v206 :: v_dual_fmac_f32 v201, v124, v205
	v_add_f32_e32 v10, v18, v26
	v_dual_add_f32 v24, v50, v199 :: v_dual_add_f32 v1, v1, v9
	v_dual_add_f32 v12, v20, v28 :: v_dual_add_f32 v9, v17, v25
	v_dual_add_f32 v20, v40, v46 :: v_dual_add_f32 v17, v35, v43
	v_add_f32_e32 v6, v6, v14
	v_add_f32_e32 v18, v38, v36
	v_dual_add_f32 v25, v51, v200 :: v_dual_add_f32 v14, v22, v30
	v_dual_add_f32 v26, v48, v197 :: v_dual_add_f32 v3, v3, v11
	v_dual_add_f32 v22, v32, v44 :: v_dual_add_f32 v11, v19, v27
	v_add_f32_e32 v30, v193, v201
	v_dual_add_f32 v27, v49, v198 :: v_dual_add_f32 v28, v195, v203
	v_dual_add_f32 v19, v39, v37 :: v_dual_add_f32 v0, v0, v8
	v_dual_add_f32 v5, v5, v13 :: v_dual_add_f32 v8, v16, v24
	v_dual_add_f32 v13, v21, v29 :: v_dual_add_f32 v2, v2, v10
	v_dual_add_f32 v21, v41, v47 :: v_dual_add_f32 v10, v18, v26
	v_dual_add_f32 v7, v7, v15 :: v_dual_add_f32 v4, v4, v12
	v_dual_add_f32 v15, v23, v31 :: v_dual_add_f32 v12, v20, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_add_f32 v1, v1, v9 :: v_dual_add_f32 v2, v2, v10
	v_add_f32_e32 v9, v17, v25
	v_dual_add_f32 v29, v196, v204 :: v_dual_add_f32 v6, v6, v14
	v_dual_add_f32 v31, v194, v202 :: v_dual_add_f32 v0, v0, v8
	v_dual_add_f32 v4, v4, v12 :: v_dual_add_f32 v1, v1, v9
	v_dual_add_f32 v23, v33, v45 :: v_dual_add_f32 v14, v22, v30
	v_add_f32_e32 v3, v3, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v11, v19, v27 :: v_dual_add_f32 v0, v0, v1
	v_add_f32_e32 v5, v5, v13
	v_dual_add_f32 v13, v21, v29 :: v_dual_add_f32 v6, v6, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v3, v3, v11
	v_add_f32_e32 v5, v5, v13
	v_add_f32_e32 v7, v7, v15
	v_add_f32_e32 v15, v23, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v1, v2, v3 :: v_dual_add_f32 v2, v4, v5
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v0, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v7, v7, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v5, v1, s41, 0xfedcba98 op_sel:[1,0]
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v4 :: v_dual_add_f32 v3, v6, v7
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v6, v2, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v1, v1, v5
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v7, v3, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v2, v2, v6 :: v_dual_add_f32 v3, v3, v7
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	ds_store_b128 v61, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v62
.Ltmp132:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v0, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v1, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v2, s41, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v3, s41, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v4 :: v_dual_add_f32 v1, v1, v5
	v_dual_add_f32 v2, v2, v6 :: v_dual_add_f32 v3, v3, v7
.Ltmp135:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	ds_store_2addr_b64 v63, v[0:1], v[2:3] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v64
	.loc	1 303 17                        ; kda_gluon.py:303:17
	v_cndmask_b32_e64 v2, 0x80000000, v53, s5
	.loc	1 190 9                         ; kda_gluon.py:190:9
	v_add_nc_u32_e32 v53, s40, v53
	.loc	1 302 30                        ; kda_gluon.py:302:30
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v1, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	.loc	1 303 17                        ; kda_gluon.py:303:17
	buffer_store_b16 v0, v2, s[16:19], 0 offen
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 77 5                          ; kda_gluon.py:77:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp136:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 211
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4, .Lfunc_end0-amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.num_vgpr, 211
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5736
; TotalNumSgprs: 46
; NumVgprs: 211
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 211
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	5                               ; Abbreviation Code
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
	.byte	6                               ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xa2 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x7c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	242                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x67:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	285                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	298                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"kda_gluon.py"                  ; string offset=7 ; kda_gluon.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4"                        ; string offset=88 ; amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4
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
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_fwd_bf16xint4_b4_t2048_h32_d128_dv128_vb64_ci4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     211
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
