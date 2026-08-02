	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s34, s[0:1], 0x5c
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v2, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 3, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 6
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s35, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s22, v3
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s23, s22, s35
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v19, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v5
	v_and_b32_e32 v78, 16, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[73:74], null, s34, v3, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s34, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s34, 4
	s_lshl_b32 s9, s34, 5
	s_mul_i32 s10, s34, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[3:4], null, s34, s23, v[73:74]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 1, v3
	v_add_lshl_u32 v4, v3, s8, 1
	v_add_lshl_u32 v5, v3, s9, 1
	v_add_lshl_u32 v3, v3, s10, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v11, 0x80000000, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v15, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[3:6], v1, s[4:7], 0 offen
	buffer_load_b128 v[7:10], v7, s[4:7], 0 offen
	buffer_load_b128 v[11:14], v11, s[4:7], 0 offen
	buffer_load_b128 v[15:18], v15, s[4:7], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s22, s13
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s22, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s14
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s14
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s4, 64
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v20, 0x70, v1
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x200
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 15
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s44, s6, 0x7ffffff0
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v19, v19, v20
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	s_mov_b32 s4, 0
	s_lshr_b32 s7, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v79, 0, v19
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s45, s5, -16
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v79, v[3:6]
	s_waitcnt vmcnt(2)
	ds_store_b128 v79, v[7:10] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v79, v[11:14] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v79, v[15:18] offset:6144
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s44, s45
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_and_b32_e32 v33, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x60
	v_and_b32_e32 v75, 15, v0
	v_and_b32_e32 v76, 0x60, v0
	v_lshrrev_b32_e32 v77, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v5, s22, v77
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x28
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshl_or_b32 v87, v75, 7, v2
	s_lshr_b32 s1, s0, 29
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v6, s14, v5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v5, v76, 6, v87
	v_dual_mov_b32 v14, 0x5410 :: v_dual_and_b32 v3, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	v_dual_mov_b32 v18, 0x7531 :: v_dual_add_nc_u32 v85, s13, v6
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x70, v5, 0
	v_xad_u32 v8, 0x60, v5, 0
	v_xad_u32 v9, v5, 48, 0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v80, 3, v3
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[33:36], v8
	v_xad_u32 v7, 0x50, v5, 0
	v_xad_u32 v8, v5, 64, 0
	v_xad_u32 v10, v5, 32, 0
	v_xad_u32 v11, v5, 16, 0
	v_dual_mov_b32 v26, v65 :: v_dual_add_nc_u32 v5, 0, v5
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[41:44], v8
	ds_load_b128 v[53:56], v9
	ds_load_b128 v[49:52], v10
	ds_load_b128 v[61:64], v11
	ds_load_b128 v[57:60], v5
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v7, s11, v77
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s47, s8, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v81, 7, v80
	v_or_b32_e32 v82, 6, v80
	v_or_b32_e32 v83, 5, v80
	v_or_b32_e32 v84, 4, v80
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s8, s10, s8
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s1, s9, s1
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v88, v7, v80
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s48, s8, s1
	v_cmp_eq_u32_e64 s1, 0, v3
	v_dual_mov_b32 v28, v65 :: v_dual_add_nc_u32 v89, v7, v84
	v_dual_mov_b32 v31, v65 :: v_dual_add_nc_u32 v90, v7, v83
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v91, v7, v82
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v92, v7, v81
	v_mov_b32_e32 v7, 0x6420
	v_cndmask_b32_e64 v16, 0x7632, v14, s1
	v_bfe_u32 v19, v0, 4, 1
	v_cndmask_b32_e64 v18, 0x6420, v18, s1
	v_dual_mov_b32 v15, 0x7632 :: v_dual_lshlrev_b32 v74, 2, v75
	v_cndmask_b32_e64 v7, 0x7531, v7, s1
	v_lshl_or_b32 v16, v16, 8, v16
	v_and_or_b32 v1, v1, 30, v19
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v86, s12, v6
	v_lshl_or_b32 v18, v18, 8, v18
	v_lshl_or_b32 v7, v7, 8, v7
	v_dual_mov_b32 v19, v65 :: v_dual_and_b32 v16, 0x760032, v16
	v_dual_mov_b32 v22, v65 :: v_dual_lshlrev_b32 v95, 2, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v7, 0x750031, v7
	v_cmp_eq_u32_e64 s12, 0, v78
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshl_or_b32 v16, v16, 4, v16
	v_dual_mov_b32 v21, v65 :: v_dual_and_b32 v18, 0x750031, v18
	v_lshl_or_b32 v1, v7, 4, v7
	v_cndmask_b32_e64 v14, 0x1054, v14, s12
	v_xor_b32_e32 v9, 48, v87
	v_xor_b32_e32 v13, 0x70, v87
	v_cndmask_b32_e64 v17, 0x5410, v15, s1
	v_and_b32_e32 v96, 0x7050301, v1
	v_cndmask_b32_e64 v1, 0x3276, v15, s12
	v_dual_mov_b32 v20, v65 :: v_dual_and_b32 v93, 0x7060302, v16
	v_lshl_or_b32 v7, v18, 4, v18
	v_dual_mov_b32 v24, v65 :: v_dual_lshlrev_b32 v3, 6, v3
	v_lshlrev_b32_e32 v16, 2, v77
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v99, s3, 8, v6
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshlrev_b32_e32 v6, 5, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_i32 v4, v0, 0, 1
	v_dual_mov_b32 v27, v65 :: v_dual_and_b32 v2, 0x70, v0
	v_xor_b32_e32 v12, 0x60, v87
	v_lshl_or_b32 v17, v17, 8, v17
	v_and_b32_e32 v97, 0x7050301, v7
	v_and_b32_e32 v1, 0x760076, v1
	v_lshlrev_b32_e32 v7, 7, v0
	v_add_nc_u32_e32 v105, 0, v9
	.loc	1 951 30                        ; attention.py:951:30
	v_dual_mov_b32 v122, v86 :: v_dual_add_nc_u32 v109, 0, v13
	v_mov_b32_e32 v9, 0
	v_and_or_b32 v98, v16, 60, v3
	v_and_b32_e32 v3, 0x540054, v14
	v_bfe_i32 v14, v0, 2, 1
	v_dual_mov_b32 v13, v65 :: v_dual_and_b32 v6, 0x160, v6
	v_mov_b32_e32 v15, v65
	v_dual_mov_b32 v32, v65 :: v_dual_and_b32 v17, 0x760032, v17
	v_lshrrev_b32_e32 v2, 2, v2
	v_and_b32_e32 v4, 0x90, v4
	v_and_or_b32 v100, 0x90, v14, v6
	.loc	1 952 30                        ; attention.py:952:30
	v_dual_mov_b32 v123, v85 :: v_dual_add_nc_u32 v108, 0, v12
	v_mov_b32_e32 v12, v65
	v_lshl_or_b32 v3, v3, 4, v3
	v_mov_b32_e32 v14, v65
	v_lshl_or_b32 v1, v1, 4, v1
	v_dual_mov_b32 v16, v65 :: v_dual_and_b32 v7, 0x700, v7
	v_xor_b32_e32 v5, 16, v87
	v_xor_b32_e32 v8, 32, v87
	v_xor_b32_e32 v10, 64, v87
	v_xor_b32_e32 v11, 0x50, v87
	v_lshl_or_b32 v17, v17, 4, v17
	v_and_b32_e32 v101, 0x5040504, v3
	v_and_b32_e32 v102, 0x7060706, v1
	v_xor_b32_e32 v1, v4, v2
	v_add_nc_u32_e32 v2, 0, v7
	v_xor_b32_e32 v3, 16, v100
	v_dual_mov_b32 v23, v65 :: v_dual_and_b32 v94, 0x7060302, v17
	v_dual_mov_b32 v6, v65 :: v_dual_add_nc_u32 v103, 0, v5
	v_dual_mov_b32 v7, v65 :: v_dual_add_nc_u32 v104, 0, v8
	.loc	1 951 30                        ; attention.py:951:30
	v_dual_mov_b32 v121, v86 :: v_dual_add_nc_u32 v106, 0, v10
	v_dual_mov_b32 v120, v86 :: v_dual_add_nc_u32 v107, 0, v11
	.loc	1 952 30                        ; attention.py:952:30
	v_dual_mov_b32 v124, v85 :: v_dual_add_nc_u32 v111, 0, v3
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, v65
	v_mov_b32_e32 v10, v65
	v_mov_b32_e32 v11, v65
	v_mov_b32_e32 v3, v65
	v_mov_b32_e32 v4, v65
	v_dual_mov_b32 v5, v65 :: v_dual_add_nc_u32 v110, v2, v1
	v_mov_b32_e32 v125, v85
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v65
	v_mov_b32_e32 v8, v65
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v112, 3, v80
	v_or_b32_e32 v113, 2, v80
	v_or_b32_e32 v114, 1, v80
	v_dual_mov_b32 v126, 0xff800000 :: v_dual_add_nc_u32 v115, 1, v88
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_add_nc_u32 v116, 2, v88
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_add_nc_u32 v117, 3, v88
	v_xor_b32_e32 v118, 4, v95
	v_xor_b32_e32 v119, 64, v98
	v_mov_b32_e32 v142, 0
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s9, s11, s22
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s46, s3, 5
	s_add_i32 s48, s48, s9
	s_and_b32 s41, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s36, s26
	s_mov_b32 s37, s27
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s40, s6
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e32 vcc_lo, s33, v74
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s3, s44, s35
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v72, v65
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s3, s3, s34
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v133, 0, v87
	v_dual_mov_b32 v67, v65 :: v_dual_max_f32 v130, v130, v130
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v129, 0, v100
	v_dual_mov_b32 v69, v65 :: v_dual_mov_b32 v128, v142
	v_dual_mov_b32 v70, v65 :: v_dual_max_f32 v131, v127, v127
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s5, s44, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v71, v65 :: v_dual_add_nc_u32 v158, s5, v99
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v159, s3, v73, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v149, v72
	v_dual_mov_b32 v147, v70 :: v_dual_mov_b32 v146, v69
	v_dual_mov_b32 v148, v71 :: v_dual_mov_b32 v145, v68
	v_dual_mov_b32 v144, v67 :: v_dual_mov_b32 v143, v66
	v_mov_b32_e32 v142, v65
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v66, 0x80000000, v159, s2
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v134, s44, v112
	v_or_b32_e32 v135, s44, v113
	v_or_b32_e32 v140, s44, v80
	v_or_b32_e32 v139, s44, v81
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[66:69], v66, s[28:31], 0 offen
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v138, s44, v82
	v_or_b32_e32 v137, s44, v83
	v_or_b32_e32 v136, s44, v84
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s4, s48, s44
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s6, s44, 4
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v150, s4, v115, 1
	v_add_lshl_u32 v151, s4, v88, 1
	v_add_lshl_u32 v152, s4, v117, 1
	v_add_lshl_u32 v153, s4, v116, 1
	v_add_lshl_u32 v154, s4, v90, 1
	v_add_lshl_u32 v155, s4, v89, 1
	v_add_lshl_u32 v156, s4, v92, 1
	v_add_lshl_u32 v157, s4, v91, 1
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s50, s6, s46
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v134, v122
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v134, v125
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s5, v135, v121
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v135, v124
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s9, v140, v86
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s10, v140, v85
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s11, v139, v122
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s13, v139, v125
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v138, v121
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s15, v138, v124
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v137, v120
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v137, v123
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s18, v136, v86
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s19, v136, v85
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v141, s44, v114
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s9, s9, s10
	s_and_b32 s14, s14, s15
	s_and_b32 s4, s3, s4
	s_and_b32 s10, s16, s17
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v141, v120
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s8, v141, v123
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s5, s5, s6
	s_and_b32 s6, s0, s9
	s_and_b32 s9, s0, s14
	s_and_b32 s13, s11, s13
	s_and_b32 s7, s7, s8
	s_and_b32 s8, s18, s19
	s_and_b32 s3, s0, s7
	s_and_b32 s11, s0, s10
	s_and_b32 s10, s0, s8
	s_and_b32 s5, s0, s5
	s_and_b32 s4, s0, s4
	s_and_b32 s8, s0, s13
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_cndmask_b32_e64 v70, 0x80000000, v152, s4
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s50, s50, s33
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e64 v132.l, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s44, s44, 16
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e64 v71.l, v132.l
	v_mov_b16_e64 v72.l, v132.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v163.l, v132.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v141.h, v132.l
	v_mov_b16_e64 v160.h, v132.l
	v_mov_b16_e64 v161.h, v132.l
	v_mov_b16_e64 v162.h, v132.l
	v_mov_b16_e64 v164.h, v132.l
	v_mov_b16_e64 v165.h, v132.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v79, v[66:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v133
	ds_load_b128 v[137:140], v103
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v68, 0x80000000, v150, s3
	v_cndmask_b32_e64 v69, 0x80000000, v151, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v67.h, v132.l
	v_mov_b16_e64 v66.h, v132.l
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[142:149], v[133:140], v[57:64], v[142:149]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[133:136], v104
	ds_load_b128 v[137:140], v105
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[142:149], v[133:140], v[49:56], v[142:149]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[133:136], v106
	ds_load_b128 v[137:140], v107
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[142:149], v[133:140], v[41:48], v[142:149]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[133:136], v108
	ds_load_b128 v[137:140], v109
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[142:149], v[133:140], v[33:40], v[142:149]
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v137, 0x80000000, v157, s9
	v_cndmask_b32_e64 v138, 0x80000000, v155, s10
	v_cndmask_b32_e64 v135, 0x80000000, v153, s5
	v_cndmask_b32_e64 v136, 0x80000000, v154, s11
	v_cndmask_b32_e64 v139, 0x80000000, v156, s8
	s_clause 0x7
	buffer_load_u16 v68, v68, s[36:39], 0 offen
	buffer_load_u16 v137, v137, s[36:39], 0 offen
	buffer_load_u16 v138, v138, s[36:39], 0 offen
	buffer_load_u16 v135, v135, s[36:39], 0 offen
	buffer_load_u16 v69, v69, s[36:39], 0 offen
	buffer_load_u16 v70, v70, s[36:39], 0 offen
	buffer_load_u16 v136, v136, s[36:39], 0 offen
	buffer_load_u16 v139, v139, s[36:39], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v133.h, v132.l
	v_mov_b16_e64 v134.h, v132.l
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v140.h, 0xff80, v68.l, s3
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v137.l, 0xff80, v137.l, s9
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v135.l, 0xff80, v135.l, s5
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v140.l, 0xff80, v69.l, s6
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v135.h, 0xff80, v70.l, s4
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v136.h, 0xff80, v136.l, s11
	v_cndmask_b16 v136.l, 0xff80, v138.l, s10
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v137.h, 0xff80, v139.l, s8
	v_mov_b16_e64 v71.h, v135.l
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v68, v135, v140, v93
	v_perm_b32 v69, v135, v140, v94
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e64 v135.l, v132.l
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v70, v137, v136, v93
	v_perm_b32 v138, v137, v136, v94
	ds_bpermute_b32 v68, v95, v68
	ds_bpermute_b32 v69, v118, v69
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v135
	.loc	1 965 35                        ; attention.py:965:35
	ds_bpermute_b32 v70, v95, v70
	ds_bpermute_b32 v138, v118, v138
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e64 v132.h, v140.l
	v_mov_b16_e64 v140.l, v132.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v71
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s4, s4, s7
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e64 v72.h, v137.l
	v_mov_b16_e64 v137.l, v132.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v140
	v_cmp_neq_f32_e64 s16, 0xff800000, v132
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e64 v132.h, v136.l
	v_mov_b16_e64 v136.l, v132.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s5, s5, s13
	s_and_b32 s7, s3, s14
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v137
	v_cmp_neq_f32_e64 s17, 0xff800000, v72
	v_cmp_neq_f32_e64 s18, 0xff800000, v132
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v72, 0, 1, s5
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v139, v69, v68, s12
	v_cndmask_b32_e64 v68, v68, v69, s12
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v137, 0, 1, s7
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v69, v138, v70, s12
	v_cndmask_b32_e64 v70, v70, v138, s12
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v138, 0xffff0000, v139
	v_lshlrev_b32_e32 v139, 16, v139
	v_and_b32_e32 v150, 0xffff0000, v68
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v136
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s6, s6, s16
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v139
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s8, s8, s15
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v153, 0x3fb8aa3b, v68
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s11, s11, s3
	s_and_b32 s9, s9, s17
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v139, s47, v142
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_mul_f32_e32 v138, 0x3fb8aa3b, v138
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_and_b32_e32 v151, 0xffff0000, v69
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v153, s47, v146
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_dual_mul_f32 v150, 0x3fb8aa3b, v150 :: v_dual_lshlrev_b32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v138, s47, v143
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v151, 0x3fb8aa3b, v151
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_and_b32_e32 v152, 0xffff0000, v70
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v154, 0x3fb8aa3b, v69
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[68:69], null, v158, s33, v[74:75]
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v136, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v155, 0x3fb8aa3b, v70
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v70, s50, v74, 1
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v154, s47, v144
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s10, s10, s18
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v151, s47, v145
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v70
	buffer_load_b32 v144, v68, s[40:43], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[69:70], v69, s[24:27], 0 offen
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v150, s47, v147 :: v_dual_fmac_f32 v155, s47, v148
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v142.h, v132.l
	v_mov_b16_e64 v143.h, v132.l
	v_mov_b16_e64 v147.h, v132.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s44, s45
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v66.l, v144.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v163.h, v70.l
	v_and_b32_e32 v71, 0xffff0000, v70
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v70, 0, 1, s4
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v135, 0xffff0000, v69
	v_mov_b16_e64 v132.h, v69.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v145, v144, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v67.l, 4, v144.l
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v69.l, v70.l
	v_mov_b16_e32 v70.l, v72.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v146, 8, v144
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v66.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e64 v133.l, v144.h
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v68.h, 8, v69.l
	v_mov_b16_e64 v69.l, v137.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v67.l, v67.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v140, v146, 0, 8
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v68.l, v144.h, 15
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v72.h, v70.l, v68.h
	v_cndmask_b32_e64 v70, 0, 1, s6
	v_lshlrev_b16 v68.h, 8, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v72.l, v70.l, v68.h
	v_cndmask_b32_e64 v70, 0, 1, s9
	v_lshlrev_b16 v68.h, 8, v69.l
	v_mov_b16_e64 v69.l, v136.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v136, 20, v144
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v136.h, v132.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v137.h, v70.l, v68.h
	v_cndmask_b32_e64 v70, 0, 1, s10
	v_lshlrev_b16 v68.h, 8, v69.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v69.l, v145.l
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v137.l, v70.l, v68.h
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v68.h, 0, -16, s3
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v70, 24, v144
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v69.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v144, v133, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v69.l, v140.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v134.l, v66.l, v68.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v66.l, v67.l, -16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v68.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v140, v70, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v68.h, v136.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v145, v134, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v141.l, v67.l, v66.l, s13
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v66.l, v146.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v69.l
	v_mov_b16_e64 v69.l, v144.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v67.l, 4, v146.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v146, v141, 0, 16
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v144.h, v132.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s14, 0, v69.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v69.l, 0, -16, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v66.l
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_and_b16 v67.l, v67.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v146, v146
	v_mul_f32_e32 v145, v132, v145
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v133.l, v68.l, v69.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v68.l, v70.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v69.l, 4, v70.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v70.l, v140.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v69.h, 0, -16, s3
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v141.l, v145.h
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v68.l
	.loc	1 966 25                        ; attention.py:966:25
	v_perm_b32 v156, v137, v72, v96
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s15, 0, v70.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v70.l, v66.l, v69.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v66.l, v67.l, -16
	.loc	1 966 25                        ; attention.py:966:25
	v_perm_b32 v72, v137, v72, v97
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v70, v70, 0, 16
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v67.l, v67.l, v66.l, s13
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v66.l, v68.h, -16
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	ds_bpermute_b32 v72, v118, v72
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v137, v145, v141, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v136.l, v68.h, v66.l, s14
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v66.l, 0, -16, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v68.h, v132.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v70, v135, v70
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v145, v145
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v140, v136, 0, 16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v68.l, v68.l, v66.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v66.l, v69.l, -16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v162.l, v70.h
	v_cmp_o_f32_e64 s16, v70, v70
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v140, v140
	v_bfe_i32 v148, v68, 0, 16
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v66.l, v69.l, v66.l, s15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v69, v67, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v140, v163, v140
	v_cvt_f32_i32_e32 v148, v148
	v_mul_f32_e32 v146, v132, v146
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v69
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v152, 0x3fb8aa3b, v152
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v132, v66, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v165.l, v140.h
	v_cmp_o_f32_e64 s17, v140, v140
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v69, v135, v69
	v_bfe_i32 v135, v133, 0, 16
	v_cvt_f32_i32_e32 v132, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v161.l, v69.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v135, v135
	.loc	1 965 25 is_stmt 1              ; attention.py:965:25
	v_fmac_f32_e32 v152, s47, v149
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v132, v71, v132
	v_mul_f32_e32 v71, v71, v148
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v160.l, v146.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v135, v163, v135
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s13, v146, v146
	v_mov_b16_e64 v133.l, v132.h
	v_mov_b16_e64 v134.l, v71.h
	v_and_b32_e32 v148, 1, v160
	v_mov_b16_e64 v164.l, v135.h
	v_cmp_o_f32_e64 s14, v135, v135
	v_and_b32_e32 v145, 1, v161
	v_and_b32_e32 v133, 1, v133
	v_add3_u32 v141, v146, v148, 0x7fff
	v_and_b32_e32 v149, 1, v164
	v_and_b32_e32 v146, 1, v162
	v_and_b32_e32 v148, 1, v165
	v_and_b32_e32 v134, 1, v134
	v_cmp_o_f32_e64 s15, v69, v69
	v_add3_u32 v135, v135, v149, 0x7fff
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	ds_bpermute_b32 v149, v95, v156
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v69, v69, v145, 0x7fff
	v_add3_u32 v70, v70, v146, 0x7fff
	v_cmp_o_f32_e64 s18, v132, v132
	v_cmp_o_f32_e64 s19, v71, v71
	v_cndmask_b16 v141.l, 0x7fff, v137.h, s3
	v_add3_u32 v137, v140, v148, 0x7fff
	v_add3_u32 v132, v132, v133, 0x7fff
	v_add3_u32 v71, v71, v134, 0x7fff
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s13
	v_cndmask_b16 v133.h, 0x7fff, v69.h, s15
	v_cndmask_b16 v133.l, 0x7fff, v70.h, s16
	v_cndmask_b16 v69.l, 0x7fff, v135.h, s14
	v_cndmask_b16 v69.h, 0x7fff, v137.h, s17
	v_cndmask_b16 v70.h, 0x7fff, v132.h, s18
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s19
	ds_store_2addr_b32 v110, v141, v133 offset1:8
	ds_store_2addr_b32 v110, v69, v70 offset0:16 offset1:24
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v69, v72, v149, s12
	v_cndmask_b32_e64 v70, v149, v72, s12
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v71, 1, v69
	v_and_b32_e32 v134, 0x10000, v70
	v_and_b32_e32 v135, 0x10000, v69
	v_and_b32_e32 v132, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s3, 1, v71
	v_cmp_eq_u32_e64 s16, 0, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s18, 0, v135
	v_cmp_eq_u32_e64 s14, 1, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v71, 0xff800000, v139, s3
	v_cndmask_b32_e64 v139, v155, 0xff800000, s16
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v72, 0x100, v69
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v140, v154, 0xff800000, s18
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v133, 0x100, v70
	v_and_b32_e32 v70, 0x1000000, v70
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v137, 0xff800000, v153, s14
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s13, 0, v72
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v148, v139, v140, s12
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s15, 0, v133
	v_cmp_eq_u32_e64 s17, 0, v70
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v135, v137, v71, s12
	v_cndmask_b32_e64 v72, v138, 0xff800000, s13
	v_cndmask_b32_e64 v141, v71, v137, s12
	v_cndmask_b32_e64 v138, v150, 0xff800000, s15
	v_cndmask_b32_e64 v70, v152, 0xff800000, s17
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v69, 0x1000000, v69
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v133, v71, v72, v140
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v149, v140, v139, s12
	v_cndmask_b32_e64 v145, v138, v72, s12
	v_cndmask_b32_e64 v146, v72, v138, s12
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s19, 0, v69
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v132, v139, v70
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v148, v98, v148
	ds_bpermute_b32 v145, v98, v145
	ds_bpermute_b32 v146, v119, v146
	v_cndmask_b32_e64 v69, v151, 0xff800000, s19
	ds_bpermute_b32 v149, v119, v149
	ds_bpermute_b32 v161, v98, v135
	ds_bpermute_b32 v141, v119, v141
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v134, v69, v137, v138
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v150, v69, v70, s12
	v_cndmask_b32_e64 v151, v70, v69, s12
	ds_bpermute_b32 v159, v119, v150
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v150, v133, v134, v132
.Ltmp8:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v160, v98, v151
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v162, v146, v145, s1
	v_cndmask_b32_e64 v163, v145, v146, s1
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v145, v150, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v164, v149, v148, s1
	v_cndmask_b32_e64 v165, v148, v149, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v167, v126, v150, v145
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v134, v163, v164, v165
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp12:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v72, v72, v167
	v_sub_f32_e32 v71, v71, v167
	v_sub_f32_e32 v69, v69, v167
	v_sub_f32_e32 v70, v70, v167
	v_sub_f32_e32 v140, v140, v167
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v137, v137, v167
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v140, v140
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v138, v138, v167
	v_sub_f32_e32 v139, v139, v167
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v132, v159, v159
.Ltmp14:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v137, v137
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v72, v72, 0, s13
	v_cndmask_b32_e64 v71, 0, v71, s3
	v_cndmask_b32_e64 v69, v69, 0, s19
	v_cndmask_b32_e64 v70, v70, 0, s17
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v138, v138
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v66.l, v72.h
	v_mov_b16_e32 v67.l, v71.h
	v_mov_b16_e64 v142.l, v69.h
	v_mov_b16_e64 v144.l, v70.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v140, v140, 0, s18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v67, 1, v67
	v_cmp_o_f32_e64 s3, v72, v72
	v_cmp_o_f32_e64 s13, v71, v71
	v_and_b32_e32 v142, 1, v142
	v_and_b32_e32 v144, 1, v144
	v_add3_u32 v66, v72, v66, 0x7fff
	v_add3_u32 v67, v71, v67, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v137, 0, v137, s14
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s14, v69, v69
	v_mov_b16_e64 v143.l, v140.h
	v_cmp_o_f32_e64 s18, v70, v70
	v_add3_u32 v69, v69, v142, 0x7fff
	v_add3_u32 v70, v70, v144, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s13
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v139, v139
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v143, 1, v143
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s14
	v_cndmask_b16 v69.h, 0x7fff, v70.h, s18
	v_permlanex16_b32 v70, v66, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v133, v160, v160
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v71, v140, v143, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v138, v138, 0, s15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s15, v140, v140
	v_perm_b32 v143, v70, v66, v101
	v_perm_b32 v144, v70, v66, v102
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v66, v126, v167
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v139, v139, 0, s16
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v132, v133, v132
	v_max3_f32 v133, v161, v141, v162
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v136.l, v137.h
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v66, v66
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v147.l, v139.h
	v_cndmask_b16 v67.l, 0x7fff, v71.h, s15
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v126
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v166, v133, v134, v132
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v68.l, v138.h
	v_cmp_o_f32_e64 s16, v138, v138
	v_permlanex16_b32 v71, v67, s49, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s17, v137, v137
	v_cmp_o_f32_e64 s19, v139, v139
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v66, 0, v66, s3
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v136, 1, v136
	v_and_b32_e32 v145, 1, v147
	v_and_b32_e32 v68, 1, v68
	v_perm_b32 v146, v71, v67, v102
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v66
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v72, v137, v136, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v66
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v136, v139, v145, 0x7fff
	v_perm_b32 v145, v71, v67, v101
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v71, v166
.Ltmp22:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v66
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v68, v138, v68, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s17
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v67, v141, v161, s1
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v69.l, 0x7fff, v136.h, s19
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s16
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[132:135], v129
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v26, v26, v66 :: v_dual_max_f32 v71, v71, v71
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v136, v69, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v72, v68, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v66
	v_mul_f32_e32 v29, v29, v66
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v71, v166, v71
.Ltmp26:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v66
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v147, v72, v68, v101
	v_perm_b32 v148, v72, v68, v102
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v68, v161, v141, s1
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v130, v130, v71
	v_max_f32_e32 v71, v131, v71
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v149, v136, v69, v101
	v_perm_b32 v150, v136, v69, v102
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[151:154], v129 offset:512
	ds_load_b128 v[136:139], v111
	ds_load_b128 v[155:158], v111 offset:512
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v68, v68, v130
	v_sub_f32_e32 v67, v67, v130
	v_sub_f32_e32 v72, v163, v130
	v_sub_f32_e32 v126, v162, v130
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v69, v159, v160, s1
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v126, v126
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v70, v160, v159, s1
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v127
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v66
	v_mul_f32_e32 v19, v19, v66
	v_mul_f32_e32 v20, v20, v66
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v70, v70, v130
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v68, s7
	v_cndmask_b32_e64 v67, 0, v67, s6
	v_cndmask_b32_e64 v72, 0, v72, s4
	v_cndmask_b32_e64 v126, 0, v126, s5
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v131, v165, v130
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v70, v70
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v67, v67, v68 :: v_dual_mul_f32 v22, v22, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v68, v126, v72
.Ltmp28:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v66
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v131, v131
	v_mov_b32_e32 v126, v167
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v23, v23, v66
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp30:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[132:139], v[143:150], v[25:32]
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v136, v164, v130
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v70, 0, v70, s8
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	ds_load_b128 v[132:135], v129 offset:1024
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v66
	v_mul_f32_e32 v9, v9, v66
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v136, v136
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v131, 0, v131, s11
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v66
	v_mul_f32_e32 v11, v11, v66
	v_mul_f32_e32 v12, v12, v66
	v_mul_f32_e32 v13, v13, v66
	v_mul_f32_e32 v14, v14, v66
	v_mul_f32_e32 v15, v15, v66
	v_mul_f32_e32 v16, v16, v66
	v_mul_f32_e32 v1, v1, v66
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v136, 0, v136, s10
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v69, v69, v130
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v66
	v_mul_f32_e32 v3, v3, v66
	v_mul_f32_e32 v4, v4, v66
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v72, v136, v131
.Ltmp32:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v69, v69
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[159:162], v129 offset:1536
	ds_load_b128 v[136:139], v111 offset:1024
	ds_load_b128 v[163:166], v111 offset:1536
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v66
	v_mul_f32_e32 v6, v6, v66
	v_mul_f32_e32 v7, v7, v66
	v_mul_f32_e32 v8, v8, v66
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v69, 0, v69, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp34:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v17, v17, v66 :: v_dual_add_f32 v68, v72, v69
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v69, v127, v71
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[132:139], v[143:150], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[159:166], v[143:150], v[1:8]
	v_mov_b32_e32 v127, v71
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp36:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v69, v67
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v21, v21, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v66, 0, v68, s3
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v142, v67, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	1 1019 23                       ; attention.py:1019:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[151:158], v[143:150], v[17:24]
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v142, v128, v66
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v78
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshlrev_b32_e32 v0, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshrrev_b32_e32 v34, 2, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_and_or_b32 v0, 0x78, v0, v34
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v76
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v39.h
	.loc	1 903 13                        ; attention.py:903:13
	ds_bpermute_b32 v38, v0, v142
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v34, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v41, s22, v36
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v36, s23, v36
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, 0x200, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s33, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v25
	v_div_scale_f32 v45, null, v38, v38, v28
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v46, null, v38, v38, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v42, vcc_lo, v26, v38, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v51, v46
	v_div_scale_f32 v44, s5, v25, v38, v25
	v_fma_f32 v54, -v41, v47, 1.0
	v_div_scale_f32 v50, s6, v28, v38, v28
	v_fma_f32 v55, -v43, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v45, v49, 1.0
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v57, null, v38, v38, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v46, v51, 1.0
	v_dual_fmac_f32 v48, v55, v48 :: v_dual_fmac_f32 v49, v56, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v55, v42, v47 :: v_dual_and_b32 v0, 8, v77
	v_dual_fmac_f32 v51, v58, v51 :: v_dual_mul_f32 v56, v44, v48
	v_rcp_f32_e32 v59, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v41, v55, v42
	v_mul_f32_e32 v58, v50, v49
	v_div_scale_f32 v52, s7, v27, v38, v27
	v_fma_f32 v62, -v43, v56, v44
	v_fmac_f32_e32 v55, v61, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v45, v58, v50
	v_div_scale_f32 v53, null, v38, v38, v30
	v_fmac_f32_e32 v56, v62, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v41, v55, v42
	v_fmac_f32_e32 v58, v63, v49
	v_mul_f32_e32 v60, v52, v51
	v_rcp_f32_e32 v54, v53
	v_fma_f32 v42, -v43, v56, v44
	v_div_fmas_f32 v41, v41, v47, v55
	v_fma_f32 v43, -v45, v58, v50
	v_fma_f32 v45, -v57, v59, 1.0
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v65, -v46, v60, v52
	v_div_fixup_f32 v26, v41, v38, v26
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s5, 0, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v59, v45, v59
	v_div_fmas_f32 v42, v42, v48, v56
	v_fmac_f32_e32 v60, v65, v51
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v64, -v53, v54, 1.0
	v_div_fixup_f32 v25, v42, v38, v25
	v_div_scale_f32 v42, s6, v29, v38, v29
	v_fma_f32 v46, -v46, v60, v52
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v44, s8, v30, v38, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v59
	v_div_fmas_f32 v41, v43, v49, v58
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v54, v64, v54
	v_div_fmas_f32 v43, v46, v51, v60
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v25, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v41, v38, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v39
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v43, v38, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v46.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v25, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v26, v26, v28, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v44, v54
	v_div_scale_f32 v47, null, v38, v38, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v40
	v_mov_b16_e32 v39.l, v41.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v53, v28, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s9, v41, v41
	v_add3_u32 v40, v46, v25, 0x7fff
	v_and_b32_e32 v46, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v43, v54
	v_fma_f32 v43, -v57, v45, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	v_add3_u32 v46, v41, v46, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v53, v28, v44
	v_fmac_f32_e32 v45, v43, v59
	v_rcp_f32_e32 v43, v47
	v_div_scale_f32 v44, null, v38, v38, v31
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v42, -v57, v45, v42
	v_div_fmas_f32 v28, v41, v54, v28
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.l, v27.h
	v_mov_b16_e32 v26.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v44
	v_div_fmas_f32 v42, v42, v59, v45
	v_fma_f32 v45, -v47, v43, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v40.h, s7
	v_cmp_o_f32_e64 s6, v27, v27
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v37, 16, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v42, v38, v29
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v42, vcc_lo, v32, v38, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v26, 1, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v41, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 32, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s33, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 48, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v27, v26, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v28, v38, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v29, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v42, v43
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v30, s7, v31, v38, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v46.h, s9
	v_mov_b16_e32 v45.l, v28.h
	v_mov_b16_e32 v45.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v47, v29, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v48, v30, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v40.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v29, v46, v43 :: v_dual_and_b32 v40, 1, v45
	v_div_scale_f32 v46, null, v38, v38, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v49, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v48, v30
	v_fma_f32 v42, -v47, v29, v42
	v_div_scale_f32 v47, null, v38, v38, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v28, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v45, v41
	v_rcp_f32_e32 v45, v46
	v_div_fmas_f32 v29, v42, v43, v29
	v_rcp_f32_e32 v42, v47
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v30, -v44, v48, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v29, v38, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v27, v49, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v49, null, v38, v38, v20
	v_div_fmas_f32 v30, v30, v41, v48
	v_fma_f32 v41, -v46, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v32, -v47, v42, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v30, v38, v31
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v31, s6, v18, v38, v18
	v_fmac_f32_e32 v42, v32, v42
	v_div_scale_f32 v32, s7, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v31, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v29.h
	v_cmp_o_f32_e64 s9, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v48, v32, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v43.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v46, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v43.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v44, v45
	v_fma_f32 v44, -v47, v48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v29, v28, 0x7fff
	v_mov_b16_e32 v43.l, v30.h
	v_cndmask_b16 v27.l, 0x7fff, v40.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v46, v41, v31
	v_fmac_f32_e32 v48, v44, v42
	v_rcp_f32_e32 v31, v49
	v_div_scale_f32 v44, null, v38, v38, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v45, v41
	v_fma_f32 v32, -v47, v48, v32
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v43
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v29, v38, v18
	v_div_fmas_f32 v32, v32, v42, v48
	v_fma_f32 v42, -v49, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v30, v30
	v_add3_u32 v40, v30, v43, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, s7, v19, v38, v19
	v_div_fixup_f32 v17, v32, v38, v17
	v_fmac_f32_e32 v31, v42, v31
	v_div_scale_f32 v32, vcc_lo, v20, v38, v20
	v_fma_f32 v42, -v44, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v17, s5
	v_cndmask_b32_e64 v18, 0, v18, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v40.h, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v47, null, v38, v38, v21
	v_fmac_f32_e32 v41, v42, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v29.h
	v_mov_b16_e32 v42.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v17, v32, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v45, v30, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s9
	v_and_b32_e32 v40, 1, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v49, v17, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s33, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v44, v45, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v46, 1, v39
	v_add3_u32 v40, v29, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v17, v43, v31
	v_div_scale_f32 v43, null, v38, v38, v22
	v_fmac_f32_e32 v45, v42, v41
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v36, v0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v49, v17, v32
	v_rcp_f32_e32 v42, v43
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s33, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v44, v45, v30
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s33, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v17, v32, v31, v17
	v_rcp_f32_e32 v31, v47
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v30, v30, v41, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v18, v46, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v43, v42, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v17, v38, v20
	v_div_fixup_f32 v19, v30, v38, v19
	v_div_scale_f32 v20, s6, v22, v38, v22
	v_fma_f32 v30, -v47, v31, 1.0
	v_fmac_f32_e32 v42, v32, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s5
	v_cndmask_b32_e64 v19, 0, v19, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v41.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v30, v31
	v_div_scale_f32 v30, s7, v21, v38, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v20, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v29.l, v19.h
	v_mov_b16_e32 v29.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v44, v30, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v45, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v43, v32, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v40.h, vcc_lo
	v_and_b32_e32 v29, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v47, v44, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v18, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v44, v40, v31
	v_div_scale_f32 v40, null, v38, v38, v23
	v_fma_f32 v18, -v43, v32, v20
	v_div_scale_f32 v20, null, v38, v38, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v47, v44, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v19, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v18, v18, v42, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v32, v20
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v43, null, v38, v38, v10
	v_div_fmas_f32 v30, v30, v31, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v18, v38, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v41.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v22, -v20, v32, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v29.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v42, 1.0
	v_div_fixup_f32 v21, v30, v38, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v29, v42
	v_div_scale_f32 v29, s6, v23, v38, v23
	v_fmac_f32_e32 v32, v22, v32
	v_div_scale_f32 v22, vcc_lo, v24, v38, v24
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v29, v42
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v19.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v22, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v30.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v40, v41, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v44, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v20, v31, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v44, v19, v44, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v45, v32
	v_div_scale_f32 v45, null, v38, v38, v9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v21, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v20, v31, v22
	v_fma_f32 v20, -v40, v41, v29
	v_rcp_f32_e32 v29, v45
	v_fma_f32 v22, -v43, v47, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v31, v19, v32, v31
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v44.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v20, v42, v41
	v_fmac_f32_e32 v47, v22, v47
	v_div_fixup_f32 v24, v31, v38, v24
	v_div_scale_f32 v22, vcc_lo, v10, v38, v10
	v_fma_f32 v32, -v45, v29, 1.0
	v_div_fixup_f32 v20, v20, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v23, v22, v47
	v_div_scale_f32 v31, s6, v9, v38, v9
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v21, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v24.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v32, v29
	v_fma_f32 v21, -v43, v23, v22
	v_div_scale_f32 v41, null, v38, v38, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v30.h, s7
	v_and_b32_e32 v30, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v32, v31, v29 :: v_dual_fmac_f32 v23, v21, v47
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v21, -v45, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v43, v23, v22
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v20.h
	v_cmp_o_f32_e64 s7, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v21, v29
	v_div_scale_f32 v21, null, v38, v38, v12
	v_div_fmas_f32 v22, v22, v47, v23
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v23, -v45, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v21
	v_div_fixup_f32 v10, v22, v38, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v23, v23, v29, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v24, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v23, v23, v38, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v24, -v21, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v40, 1, v40
	v_cndmask_b16 v9.h, 0x7fff, v29.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v42, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v24, v31
	v_div_scale_f32 v24, vcc_lo, v12, v38, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v29, v42
	v_div_scale_f32 v29, s6, v11, v38, v11
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v23.h
	v_mov_b16_e32 v39.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v24, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v20, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v29, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v30
	v_and_b32_e32 v30, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v21, v32, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v22.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v41, v40, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v10, v10
	v_add3_u32 v22, v10, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v43, v31
	v_div_scale_f32 v30, null, v38, v38, v14
	v_fmac_f32_e32 v40, v44, v42
	v_div_scale_f32 v43, null, v38, v38, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v21, v32, v24
	v_rcp_f32_e32 v24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v41, v40, v29
	v_rcp_f32_e32 v29, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v23, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v31, v32
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v42, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v10, v38, v12
	v_fma_f32 v12, -v30, v24, 1.0
	v_div_scale_f32 v31, null, v38, v38, v16
	v_div_fixup_f32 v11, v21, v38, v11
	v_fma_f32 v21, -v43, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, v12, v24
	v_div_scale_f32 v12, s6, v14, v38, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v21, v29
	v_div_scale_f32 v21, s7, v13, v38, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v20, v12, v24
	v_rcp_f32_e32 v42, v31
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v23, v21, v29
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v40, -v30, v20, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v43, v23, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v20, v40, v24
	v_div_scale_f32 v40, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v23, v41, v29 :: v_dual_and_b32 v44, 1, v39
	v_fma_f32 v12, -v30, v20, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v40
	v_fma_f32 v30, -v31, v42, 1.0
	v_fma_f32 v21, -v43, v23, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v12, v12, v24, v20
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v42, v30, v42
	v_div_fmas_f32 v20, v21, v29, v23
	v_div_scale_f32 v21, vcc_lo, v16, v38, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v40, v41, 1.0
	v_div_fixup_f32 v12, v12, v38, v14
	v_div_fixup_f32 v13, v20, v38, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v14, v21, v42
	v_div_scale_f32 v20, s6, v15, v38, v15
	v_fmac_f32_e32 v41, v23, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v24, v10, v44, 0x7fff
	v_cmp_o_f32_e64 s7, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v31, v14, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v23, v20, v41
	v_div_scale_f32 v30, null, v38, v38, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, v10, v42
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v32, 1, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v40, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v12.h
	v_cmp_o_f32_e64 s8, v11, v11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v31, v14, v21
	v_rcp_f32_e32 v31, v30
	v_fmac_f32_e32 v23, v10, v41
	v_div_scale_f32 v10, null, v38, v38, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v21, v42, v14
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v20, -v40, v23, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v21, v10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v32, v11, v32, 0x7fff
	v_and_b32_e32 v11, 1, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s5
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v20, v20, v41, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_mov_b16_e32 v29.h, v39.h
	v_add3_u32 v11, v12, v11, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v14, v38, v16
	v_div_fixup_f32 v15, v20, v38, v15
	v_fma_f32 v20, -v10, v21, 1.0
	v_fma_f32 v14, -v30, v31, 1.0
	v_div_scale_f32 v16, s6, v2, v38, v2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v20, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v14, v31
	v_div_scale_f32 v14, s7, v1, v38, v1
	v_mul_f32_e32 v20, v16, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	v_cndmask_b16 v23.l, 0x7fff, v32.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v14, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v10, v20, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v24, v13, v29, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v13, -v30, v32, v14
	v_fmac_f32_e32 v20, v40, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v12.h
	v_cndmask_b16 v11.l, 0x7fff, v24.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v13, v31
	v_fma_f32 v10, -v10, v20, v16
	v_div_scale_f32 v16, null, v38, v38, v4
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v14, -v30, v32, v14
	v_div_fmas_f32 v10, v10, v21, v20
	v_div_scale_f32 v21, null, v38, v38, v3
	v_rcp_f32_e32 v20, v16
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v15.h
	v_mov_b16_e32 v29.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v14, v14, v31, v32
	v_div_fixup_f32 v2, v10, v38, v2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v12, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v12, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v14, v38, v1
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s5
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v14, -v16, v20, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v13, v15, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v15, -v21, v12, 1.0
	v_fmac_f32_e32 v20, v14, v20
	v_div_scale_f32 v14, s6, v4, v38, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.l, v1.h
	v_mov_b16_e32 v24.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v12, v15, v12 :: v_dual_and_b32 v29, 1, v39
	v_div_scale_f32 v15, s7, v3, v38, v3
	v_mul_f32_e32 v30, v14, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v29, v2, v29, 0x7fff
	v_cmp_o_f32_e64 s8, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v2, v15, v12
	v_fma_f32 v31, -v16, v30, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v13, v1, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v21, v2, v15
	v_fmac_f32_e32 v30, v31, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.h, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v2, v29, v12
	v_fma_f32 v1, -v16, v30, v14
	v_div_scale_f32 v14, null, v38, v38, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v13.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v15, -v21, v2, v15
	v_div_fmas_f32 v1, v1, v20, v30
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v16, v14
	v_div_scale_f32 v20, null, v38, v38, v5
	v_div_fmas_f32 v2, v15, v12, v2
	v_div_fixup_f32 v1, v1, v38, v4
	v_div_scale_f32 v21, null, v38, v38, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v4, v20
	v_div_fixup_f32 v2, v2, v38, v3
	v_div_scale_f32 v3, null, v38, v38, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v14, v16, 1.0
	v_div_scale_f32 v30, s6, v5, v38, v5
	v_rcp_f32_e32 v15, v3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v16, v12, v16
	v_div_scale_f32 v12, vcc_lo, v6, v38, v6
	v_fma_f32 v13, -v20, v4, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v2.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_mul_f32_e32 v29, v12, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v3, v15, 1.0
	v_fmac_f32_e32 v4, v13, v4
	v_rcp_f32_e32 v13, v21
	v_fma_f32 v40, -v14, v29, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v15, v31, v15 :: v_dual_and_b32 v32, 1, v32
	v_div_scale_f32 v31, s7, v8, v38, v8
	v_mul_f32_e32 v41, v30, v4
	v_fmac_f32_e32 v29, v40, v16
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v44, v31, v15
	v_fma_f32 v42, -v21, v13, 1.0
	v_fma_f32 v40, -v20, v41, v30
	v_fma_f32 v12, -v14, v29, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v14, -v3, v44, v31
	v_fmac_f32_e32 v13, v42, v13
	v_fmac_f32_e32 v41, v40, v4
	v_div_scale_f32 v42, s8, v7, v38, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v14, v15
	v_div_fmas_f32 v12, v12, v16, v29
	v_fma_f32 v16, -v20, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v42, v13
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v3, -v3, v44, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v14, v2, v32, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v16, v4, v41
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v20, -v21, v40, v42
	v_div_fmas_f32 v3, v3, v15, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v38, v5
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v6, v12, v38, v6
	v_div_fixup_f32 v3, v3, v38, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v14.h, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v20, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v1, v43, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s5
	v_cndmask_b32_e64 v4, 0, v4, s5
	v_cndmask_b32_e64 v2, 0, v3, s5
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v5, -v21, v40, v42
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b32_e32 v14, 0x5410
	v_mov_b16_e32 v39.l, v6.h
	v_mov_b32_e32 v15, 0x7632
	v_cmp_o_f32_e64 s6, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v13, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v3, 1, v39
	v_mov_b16_e32 v39.l, v2.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v5, v38, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v5.h, v39.h
	v_mov_b16_e32 v7.h, v39.h
	v_cndmask_b16 v8.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v3, v6, v3, 0x7fff
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_cmp_o_f32_e64 s5, v4, v4
	v_mov_b16_e32 v7.l, v1.h
	v_cmp_o_f32_e64 s7, v1, v1
	v_add3_u32 v5, v4, v5, 0x7fff
	v_and_b32_e32 v12, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v6, v2, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v1, v7, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s7
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e32 v14, 0x1054, v14, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v15, vcc_lo
	v_cndmask_b32_e32 v4, v25, v27, vcc_lo
	v_dual_cndmask_b32 v6, v26, v28 :: v_dual_cndmask_b32 v7, v19, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b32_e32 v12, v17, v19, vcc_lo
	v_cndmask_b32_e32 v13, v9, v18, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v9, v18, v9 :: v_dual_and_b32 v14, 0x540054, v14
	v_dual_cndmask_b32 v16, v11, v22 :: v_dual_and_b32 v15, 0x760076, v15
	v_cndmask_b32_e32 v11, v22, v11, vcc_lo
	v_dual_cndmask_b32 v17, v10, v23 :: v_dual_cndmask_b32 v10, v23, v10
	v_dual_cndmask_b32 v19, v2, v8 :: v_dual_cndmask_b32 v2, v8, v2
	v_lshl_or_b32 v8, v14, 4, v14
	v_lshl_or_b32 v14, v15, 4, v15
	v_dual_cndmask_b32 v18, v1, v24 :: v_dual_cndmask_b32 v1, v24, v1
	v_cndmask_b32_e32 v3, v27, v25, vcc_lo
	v_cndmask_b32_e32 v5, v28, v26, vcc_lo
	v_permlanex16_b32 v4, v4, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x5040504, v8
	v_and_b32_e32 v20, 0x7060706, v14
	v_permlanex16_b32 v14, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v2, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v15
	v_perm_b32 v2, v4, v3, v20
	v_perm_b32 v3, v6, v5, v15
	v_perm_b32 v4, v6, v5, v20
	v_perm_b32 v5, v12, v7, v15
	v_perm_b32 v6, v12, v7, v20
	v_perm_b32 v7, v9, v13, v15
	v_perm_b32 v8, v9, v13, v20
	v_perm_b32 v9, v11, v16, v15
	v_perm_b32 v10, v11, v16, v20
	v_perm_b32 v11, v14, v17, v15
	v_perm_b32 v12, v14, v17, v20
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v37, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v13, v21, v18, v15
	v_perm_b32 v14, v21, v18, v20
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v35, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v15, v22, v19, v15
	v_perm_b32 v16, v22, v19, v20
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v17, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v18, s[20:23], 0 offen
	buffer_store_b128 v[13:16], v19, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 168
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 168
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11008
; TotalNumSgprs: 53
; NumVgprs: 168
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 168
; Occupancy: 9
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
