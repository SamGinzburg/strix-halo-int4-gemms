	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[88:89], s[0:1], 0x5c
	s_load_b64 s[80:81], s[0:1], 0x0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v33, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v66, 3, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s78, s3, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v65, 3, v33
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s4, v66
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s67, s4, s78
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[76:77], s[0:1], 0x38
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v34, 0x60, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v67, 15, v0
	v_lshrrev_b32_e32 v35, 4, v0
	v_dual_mov_b32 v5, v8 :: v_dual_lshlrev_b32 v52, 1, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[89:90], null, s88, v66, v[65:66]
	s_mul_i32 s3, s88, s67
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s88, v65
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s81, s81, 0xffff
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v53, 1, v34
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v127, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v112, v0, 4, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[90:91], null, s88, 48, v[89:90]
	v_lshl_add_u32 v125, s88, 4, v89
	v_lshl_add_u32 v126, s88, 5, v89
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, v89, s3, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v91, 62, v35
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, v125, s3, 1
	v_add_lshl_u32 v3, v126, s3, 1
	v_add_lshl_u32 v4, v90, s3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_load_b32 s3, s[0:1], 0x84
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x3
	buffer_load_b128 v[36:39], v1, s[80:83], 0 offen
	buffer_load_b128 v[40:43], v2, s[80:83], 0 offen
	buffer_load_b128 v[44:47], v3, s[80:83], 0 offen
	buffer_load_b128 v[48:51], v4, s[80:83], 0 offen
	v_mov_b32_e32 v4, v8
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v123, v53, v67
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s2, s4, s8
	v_dual_mov_b32 v3, v8 :: v_dual_and_b32 v52, 0x70, v52
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v35, s4, v123
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v52, v127, v52
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s3, s4
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s2, s2, s3
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, 64
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s2, s2, 0
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s4, s9
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s4, s4, 0x200
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x200
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s4, s4, 63
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 63
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s6, s4, 31
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s6, s6, 26
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 26
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s4, s4, s6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	.loc	1 622 33                        ; attention.py:622:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s5, s5, 63
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
	v_mov_b32_e32 v124, v8
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v122, 2, v112
	v_or_b32_e32 v121, 4, v112
	v_or_b32_e32 v120, 6, v112
	v_or_b32_e32 v119, 8, v112
	v_or_b32_e32 v118, 10, v112
	v_or_b32_e32 v117, 12, v112
	v_or_b32_e32 v116, 14, v112
	v_or_b32_e32 v115, 16, v112
	v_or_b32_e32 v114, 18, v112
	v_or_b32_e32 v113, 20, v112
	v_or_b32_e32 v111, 22, v112
	v_or_b32_e32 v110, 24, v112
	v_or_b32_e32 v109, 26, v112
	v_or_b32_e32 v108, 28, v112
	v_or_b32_e32 v107, 30, v112
	v_or_b32_e32 v106, 32, v112
	v_or_b32_e32 v105, 34, v112
	v_or_b32_e32 v104, 36, v112
	v_or_b32_e32 v103, 38, v112
	v_or_b32_e32 v102, 40, v112
	v_or_b32_e32 v101, 42, v112
	v_or_b32_e32 v100, 44, v112
	v_or_b32_e32 v99, 46, v112
	v_or_b32_e32 v98, 48, v112
	v_or_b32_e32 v97, 50, v112
	v_or_b32_e32 v96, 52, v112
	v_or_b32_e32 v95, 54, v112
	v_or_b32_e32 v93, 56, v112
	v_or_b32_e32 v94, 58, v112
	v_or_b32_e32 v92, 60, v112
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v128, 0, v52
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s79, s2, 0x7fffffc0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x200, v35
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s90, s5, s4
	s_mov_b32 s68, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s79, s90
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v128, v[36:39]
	s_waitcnt vmcnt(2)
	ds_store_b128 v128, v[40:43] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v128, v[44:47] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v128, v[48:51] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v1, 7, v67
	v_lshlrev_b32_e32 v2, 6, v34
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v0, 16, v0
	v_lshlrev_b32_e32 v3, 4, v33
	s_clause 0x1
	s_load_b32 s10, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	v_cmp_eq_u32_e64 s1, 0, v0
	v_mov_b32_e32 v0, 0x7632
	v_mov_b32_e32 v26, v25
	v_or3_b32 v2, v1, v2, v3
	v_or_b32_e32 v130, v3, v1
	v_dual_mov_b32 v1, 0x5410 :: v_dual_add_nc_u32 v4, s3, v35
	v_mov_b32_e32 v81, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_xad_u32 v6, 0x70, v2, 0
	v_xad_u32 v7, 0x60, v2, 0
	v_xad_u32 v8, 0x50, v2, 0
	v_xad_u32 v9, v2, 64, 0
	v_xad_u32 v10, v2, 48, 0
	ds_load_b128 v[37:40], v6
	ds_load_b128 v[33:36], v7
	ds_load_b128 v[45:48], v8
	ds_load_b128 v[41:44], v9
	v_xad_u32 v6, v2, 16, 0
	v_cndmask_b32_e64 v1, 0x1054, v1, s1
	v_cndmask_b32_e64 v0, 0x3276, v0, s1
	v_xad_u32 v11, v2, 32, 0
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v2, 0, v2
	ds_load_b128 v[53:56], v10
	ds_load_b128 v[49:52], v11
	ds_load_b128 v[61:64], v6
	ds_load_b128 v[57:60], v2
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v0, v0, 8, v0
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v5, s9, v4
	v_xor_b32_e32 v2, 16, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v1, 0x540054, v1
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v0, 0x760076, v0
	v_xor_b32_e32 v3, 32, v130
	v_xor_b32_e32 v6, 48, v130
	v_xor_b32_e32 v7, 64, v130
	v_xor_b32_e32 v8, 0x50, v130
	v_xor_b32_e32 v9, 0x60, v130
	v_xor_b32_e32 v10, 0x70, v130
	v_lshl_or_b32 v11, v1, 4, v1
	v_lshl_or_b32 v12, v0, 4, v0
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[0:1], null, s89, v66, v[65:66]
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s89, v65
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v129, s8, v4
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v131, 0x5040504, v11
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v132, 0x7060706, v12
	v_lshl_add_u32 v133, v67, 1, 0
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v134, 0, v2
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v135, 0, v3
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v136, 0, v6
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v137, 0, v7
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v138, 0, v8
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v139, 0, v9
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v140, 0, v10
	v_min_i32_e32 v141, v4, v5
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v124, v25
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s91, s10, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_lshl_b32 s92, s89, 4
	s_lshl_b32 s93, s89, 5
	s_mul_i32 s94, s89, 48
	s_and_b32 s85, s7, 0xffff
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s95, 0x76543210
	s_mov_b32 s84, s6
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s1, s79, s78
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v165, s75 :: v_dual_mov_b32 v164, s74
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s3, s1, s88
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v163, s73 :: v_dual_mov_b32 v162, s72
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v65, s3, v89, 1
	v_add_lshl_u32 v66, s3, v125, 1
	v_add_lshl_u32 v67, s3, v126, 1
	v_add_lshl_u32 v68, s3, v90, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_add_nc_u32 v82, 0, v130
	v_cndmask_b32_e32 v69, 0x80000000, v66, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v73, 0x80000000, v67, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v68, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[80:83], 0 offen
	buffer_load_b128 v[69:72], v69, s[80:83], 0 offen
	buffer_load_b128 v[73:76], v73, s[80:83], 0 offen
	buffer_load_b128 v[77:80], v77, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v161, s71 :: v_dual_mov_b32 v160, s70
	v_dual_mov_b32 v159, s69 :: v_dual_mov_b32 v158, s68
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v128, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v128, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v128, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v128, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v134
	ds_load_b128 v[65:68], v82
	ds_load_b128 v[73:76], v82 offset:2048
	ds_load_b128 v[77:80], v134 offset:2048
	ds_load_b128 v[146:149], v134 offset:4096
	ds_load_b128 v[142:145], v82 offset:4096
	ds_load_b128 v[150:153], v82 offset:6144
	ds_load_b128 v[154:157], v134 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[65:72], v[57:64], v[158:165]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[57:64], v[158:165]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[142:149], v[57:64], v[158:165]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v136
	ds_load_b128 v[142:145], v135
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[174:181], v[150:157], v[57:64], v[158:165]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[142:149], v[49:56], v[166:173]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v135 offset:2048
	ds_load_b128 v[146:149], v136 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[49:56], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v136 offset:4096
	ds_load_b128 v[142:145], v135 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[142:149], v[49:56], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v135 offset:6144
	ds_load_b128 v[146:149], v136 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[174:181], v[142:149], v[49:56], v[174:181]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v138
	ds_load_b128 v[142:145], v137
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[142:149], v[41:48], v[166:173]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v137 offset:2048
	ds_load_b128 v[146:149], v138 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v138 offset:4096
	ds_load_b128 v[142:145], v137 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[142:149], v[41:48], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v137 offset:6144
	ds_load_b128 v[146:149], v138 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[174:181], v[142:149], v[41:48], v[174:181]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v140
	ds_load_b128 v[142:145], v139
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[142:149], v[33:40], v[166:173]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v139 offset:2048
	ds_load_b128 v[146:149], v140 offset:2048
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v157, s91, v170 :: v_dual_mul_f32 v150, s91, v173
	v_mul_f32_e32 v153, s91, v169
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[33:40], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v140 offset:4096
	ds_load_b128 v[142:145], v139 offset:4096
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v161, s91, v171 :: v_dual_mul_f32 v156, s91, v65
	v_mul_f32_e32 v160, s91, v66
	v_mad_u64_u32 v[65:66], null, s1, s89, v[0:1]
	v_dual_mul_f32 v158, s91, v67 :: v_dual_mul_f32 v159, s91, v68
	v_dual_mul_f32 v154, s91, v69 :: v_dual_mul_f32 v155, s91, v70
	v_dual_mul_f32 v151, s91, v71 :: v_dual_mul_f32 v152, s91, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v66, 1, v65
	v_add_lshl_u32 v67, v65, s92, 1
	v_add_lshl_u32 v68, v65, s93, 1
	v_add_lshl_u32 v65, v65, s94, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[142:149], v[33:40], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v139 offset:6144
	ds_load_b128 v[146:149], v140 offset:6144
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v69, 0x80000000, v67, s0
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v87, s91, v77 :: v_dual_mul_f32 v88, s91, v78
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v77, 0x80000000, v65, s0
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v85, s91, v79 :: v_dual_mul_f32 v86, s91, v80
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[174:181], v[142:149], v[33:40], v[174:181]
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v149, s91, v172
	v_dual_mul_f32 v147, s91, v73 :: v_dual_mul_f32 v148, s91, v74
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v73, 0x80000000, v68, s0
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v145, s91, v75 :: v_dual_mul_f32 v146, s91, v76
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[65:68], v66, s[84:87], 0 offen
	buffer_load_b128 v[69:72], v69, s[84:87], 0 offen
	buffer_load_b128 v[73:76], v73, s[84:87], 0 offen
	buffer_load_b128 v[77:80], v77, s[84:87], 0 offen
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v142, s91, v166 :: v_dual_mul_f32 v143, s91, v167
	v_dual_mul_f32 v164, s91, v178 :: v_dual_add_nc_u32 v167, 0, v127
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v83, s91, v174 :: v_dual_mul_f32 v84, s91, v175
	v_dual_mul_f32 v82, s91, v176 :: v_dual_mul_f32 v163, s91, v179
	v_mul_f32_e32 v144, s91, v168
	v_dual_mul_f32 v162, s91, v177 :: v_dual_mul_f32 v165, s91, v180
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v167, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v167, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v167, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v167, v[77:80] offset:6144
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v65, s79, v96
	v_or_b32_e32 v66, s79, v97
	v_or_b32_e32 v67, s79, v98
	v_or_b32_e32 v68, s79, v99
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s3, v141, v65
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v65, s79, v100
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s5, v141, v66
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v66, s79, v101
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s6, v67, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s7, v141, v67
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v67, s79, v102
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s9, v141, v68
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v68, s79, v103
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s10, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s11, v141, v65
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v65, s79, v104
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s13, v141, v66
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v66, s79, v105
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v67, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s15, v141, v67
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v67, s79, v106
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s17, v141, v68
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v68, s79, v107
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s18, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s19, v141, v65
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v65, s79, v108
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s20, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s21, v141, v66
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v66, s79, v109
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s22, v67, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s23, v141, v67
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v67, s79, v110
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s24, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s25, v141, v68
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v68, s79, v111
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s26, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s27, v141, v65
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v65, s79, v113
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s28, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s29, v141, v66
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v66, s79, v114
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s30, v67, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s31, v141, v67
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v67, s79, v115
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s33, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s34, v141, v68
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v68, s79, v116
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s35, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s36, v141, v65
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v65, s79, v117
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s37, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s38, v141, v66
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v66, s79, v118
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s39, v67, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s40, v141, v67
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v67, s79, v119
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s41, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s42, v141, v68
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v68, s79, v120
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s43, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s44, v141, v65
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v65, s79, v121
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s45, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s46, v141, v66
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v66, s79, v122
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s47, v67, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s48, v141, v67
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v67, s79, v112
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s96, s3, s1
	s_and_b32 s1, s5, s4
	s_and_b32 s3, s7, s6
	s_and_b32 s4, s9, s8
	s_and_b32 s5, s11, s10
	s_and_b32 s6, s13, s12
	s_and_b32 s8, s15, s14
	s_and_b32 s9, s17, s16
	s_and_b32 s10, s19, s18
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s6
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s6, s2, s96
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v83, 0xff800000, v83, s3
	v_cndmask_b32_e64 v82, 0xff800000, v82, s6
	v_cndmask_b32_e64 v84, 0xff800000, v84, s1
	v_cndmask_b32_e64 v85, 0xff800000, v85, s5
	v_cndmask_b32_e64 v86, 0xff800000, v86, s4
	v_cndmask_b32_e64 v87, 0xff800000, v87, s8
	v_cndmask_b32_e64 v88, 0xff800000, v88, s7
	v_cndmask_b32_e64 v145, 0xff800000, v145, s10
	v_cndmask_b32_e64 v146, 0xff800000, v146, s9
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s49, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s50, v141, v68
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v68, s79, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s51, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s52, v141, v65
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v65, s79, v92
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s53, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s54, v141, v66
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s55, v67, v129
	.loc	1 670 21                        ; attention.py:670:21
	v_cmp_ge_i32_e64 s56, v141, v67
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s11, s21, s20
	s_and_b32 s13, s23, s22
	s_and_b32 s12, s25, s24
	s_and_b32 s14, s27, s26
	s_and_b32 s15, s29, s28
	s_and_b32 s17, s31, s30
	s_and_b32 s18, s34, s33
	s_and_b32 s19, s36, s35
	s_and_b32 s21, s38, s37
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s2, s12
	s_and_b32 s14, s2, s14
	s_and_b32 s16, s2, s15
	s_and_b32 s20, s2, s17
	s_and_b32 s22, s2, s18
	s_and_b32 s23, s2, s19
	s_and_b32 s24, s2, s21
	s_and_b32 s19, s2, s13
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v66, s79, v94
	v_or_b32_e32 v67, s79, v93
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v147, 0xff800000, v147, s19
	v_cndmask_b32_e64 v148, 0xff800000, v148, s11
	v_cndmask_b32_e64 v151, 0xff800000, v151, s14
	v_cndmask_b32_e64 v152, 0xff800000, v152, s12
	v_cndmask_b32_e64 v154, 0xff800000, v154, s20
	v_cndmask_b32_e64 v155, 0xff800000, v155, s16
	v_cndmask_b32_e64 v158, 0xff800000, v158, s23
	v_cndmask_b32_e64 v159, 0xff800000, v159, s22
	v_cndmask_b32_e64 v160, 0xff800000, v160, s24
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v73, v83, v84, v82
	v_max3_f32 v74, v88, v85, v86
	v_max3_f32 v75, v145, v146, v87
.Ltmp2:
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s57, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s58, v141, v68
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v68, s79, v95
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s59, v65, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s60, v141, v65
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s25, s46, s45
	s_and_b32 s26, s48, s47
	s_and_b32 s27, s50, s49
	s_and_b32 s29, s52, s51
	s_and_b32 s33, s54, s53
	s_and_b32 s34, s56, s55
	s_and_b32 s28, s2, s25
	s_and_b32 s30, s2, s27
	s_and_b32 s31, s2, s29
	s_and_b32 s33, s2, s33
	s_and_b32 s34, s2, s34
	s_and_b32 s29, s2, s26
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s61, v66, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s62, v141, v66
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s63, v67, v129
	.loc	1 670 21                        ; attention.py:670:21
	v_cmp_ge_i32_e64 s64, v141, v67
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v157, s29
	v_cndmask_b32_e64 v70, 0xff800000, v161, s28
	v_cndmask_b32_e64 v67, 0xff800000, v153, s30
	v_cndmask_b32_e64 v65, 0xff800000, v142, s34
	v_cndmask_b32_e64 v66, 0xff800000, v143, s33
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v76, v152, v147, v148
	v_max3_f32 v73, v75, v74, v73
	v_max3_f32 v74, v154, v155, v151
	v_max3_f32 v75, v160, v158, v159
.Ltmp4:
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s65, v68, v129
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s66, v141, v68
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s35, s40, s39
	s_and_b32 s36, s42, s41
	s_and_b32 s37, s44, s43
	s_and_b32 s39, s60, s59
	s_and_b32 s26, s2, s36
	s_and_b32 s27, s2, s37
	s_and_b32 s25, s2, s35
	s_and_b32 s17, s2, s39
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v144, s31
	v_cndmask_b32_e64 v161, 0xff800000, v156, s25
	v_cndmask_b32_e64 v71, 0xff800000, v149, s27
	v_cndmask_b32_e64 v72, 0xff800000, v150, s26
	v_cndmask_b32_e64 v149, 0xff800000, v165, s17
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v166, s91, v181
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v74, v75, v74, v76
	v_max3_f32 v75, v67, v69, v70
	v_max_f32_e32 v76, v65, v66
.Ltmp6:
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s38, s58, s57
	s_and_b32 s41, s64, s63
	s_and_b32 s42, s66, s65
	s_and_b32 s13, s2, s38
	s_and_b32 s18, s2, s41
	s_and_b32 s21, s2, s42
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v150, 0xff800000, v166, s13
	v_cndmask_b32_e64 v153, 0xff800000, v164, s18
	v_cndmask_b32_e64 v157, 0xff800000, v162, s21
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v75, v76, v68, v75
	v_max3_f32 v76, v71, v72, v161
.Ltmp8:
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s40, s62, s61
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v144.h, 0
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s15, s2, s40
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v156, 0xff800000, v163, s15
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v74, v75, v76, v74
	v_max_f32_e32 v75, v149, v150
	v_max_f32_e32 v76, v157, v153
.Ltmp10:
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s79, s79, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s79, s90
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v75, v76, v156, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v73, v74, v73, v75
.Ltmp12:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v74.h, v144.h
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v75, v73, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v142, v81, v73, v75
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v142
	v_sub_f32_e32 v66, v66, v142
	v_sub_f32_e32 v67, v67, v142
	v_sub_f32_e32 v65, v65, v142
	v_sub_f32_e32 v71, v71, v142
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v71, v71
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v72, v142
	v_sub_f32_e32 v84, v84, v142
	v_sub_f32_e32 v82, v82, v142
	v_sub_f32_e32 v83, v83, v142
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v166, 0, v69, s29
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v69.h, v144.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v162, 0, v66, s33
	v_cndmask_b32_e64 v165, 0, v67, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v67.h, v144.h
	v_mov_b16_e64 v69.l, v166.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v70, v142
	v_sub_f32_e32 v68, v68, v142
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v144.l, v162.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v163, 0, v65, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v69, 1, v69
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v68, v68
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v144
	v_mov_b16_e64 v144.l, v165.h
	v_cmp_o_f32_e64 s29, v166, v166
	v_add3_u32 v69, v166, v69, 0x7fff
	v_mov_b16_e64 v74.l, v163.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v168, 0, v71, s27
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v71.h, v144.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v167, 0, v70, s28
	v_cndmask_b32_e64 v164, 0, v68, s31
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v68, 1, v144
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s29
	v_and_b32_e32 v66, 1, v74
	v_mov_b16_e64 v144.l, v167.h
	v_mov_b16_e64 v67.l, v164.h
	v_mov_b16_e64 v71.l, v168.h
	v_cmp_o_f32_e64 s33, v162, v162
	v_cmp_o_f32_e64 s34, v163, v163
	v_and_b32_e32 v69, 1, v144
	v_add3_u32 v65, v162, v65, 0x7fff
	v_add3_u32 v66, v163, v66, 0x7fff
	v_and_b32_e32 v67, 1, v67
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v169, 0, v72, s26
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v71, 1, v71
	v_cndmask_b16 v73.h, 0x7fff, v65.h, s33
	v_cndmask_b16 v73.l, 0x7fff, v66.h, s34
	v_cmp_o_f32_e64 s30, v165, v165
	v_cmp_o_f32_e64 s31, v164, v164
	v_add3_u32 v67, v164, v67, 0x7fff
	v_add3_u32 v68, v165, v68, 0x7fff
	v_cmp_o_f32_e64 s27, v168, v168
	v_add3_u32 v71, v168, v71, 0x7fff
	v_mov_b16_e64 v144.l, v169.h
	v_permlanex16_b32 v66, v73, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s31
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s30
	v_cmp_o_f32_e64 s28, v167, v167
	v_add3_u32 v69, v167, v69, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s27
	v_and_b32_e32 v71, 1, v144
	v_perm_b32 v65, v66, v73, v131
	v_perm_b32 v66, v66, v73, v132
	v_permlanex16_b32 v73, v68, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v70.h, 0x7fff, v69.h, s28
	v_cmp_o_f32_e64 s26, v169, v169
	v_add3_u32 v71, v169, v71, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v83
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v67, v73, v68, v131
	v_perm_b32 v68, v73, v68, v132
	v_permlanex16_b32 v73, v70, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s26
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s26, 0xff800000, v81
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v82, v82
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v69, v73, v70, v131
	v_perm_b32 v70, v73, v70, v132
	v_permlanex16_b32 v73, v72, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v71, v73, v72, v131
	v_perm_b32 v72, v73, v72, v132
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v73, v81, v142
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v81, v86, v142
	v_sub_f32_e32 v86, v153, v142
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v73, v73
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v86, v86
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v143, 0, v73, s26
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v133
	ds_load_u16_d16 v76, v133 offset:768
	ds_load_u16_d16 v77, v133 offset:1024
	ds_load_u16_d16 v78, v133 offset:1280
	ds_load_u16_d16 v79, v133 offset:1536
	ds_load_u16_d16 v80, v133 offset:1792
	ds_load_u16_d16 v75, v133 offset:512
	ds_load_u16_d16 v74, v133 offset:256
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v133 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:384
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v143
	v_mul_f32_e32 v26, v26, v143
	v_mul_f32_e32 v27, v27, v143
	v_mul_f32_e32 v28, v28, v143
	v_mul_f32_e32 v29, v29, v143
	v_mul_f32_e32 v30, v30, v143
	v_mul_f32_e32 v31, v31, v143
	v_mul_f32_e32 v32, v32, v143
	v_mul_f32_e32 v17, v17, v143
	v_mul_f32_e32 v18, v18, v143
	v_mul_f32_e32 v19, v19, v143
	v_mul_f32_e32 v20, v20, v143
	v_mul_f32_e32 v21, v21, v143
	v_mul_f32_e32 v22, v22, v143
	v_mul_f32_e32 v23, v23, v143
	v_mul_f32_e32 v24, v24, v143
	v_mul_f32_e32 v9, v9, v143
	v_mul_f32_e32 v10, v10, v143
	v_mul_f32_e32 v11, v11, v143
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v133 offset:32
	ds_load_u16_d16 v74, v133 offset:288
	ds_load_u16_d16 v75, v133 offset:544
	ds_load_u16_d16 v76, v133 offset:800
	ds_load_u16_d16 v77, v133 offset:1056
	ds_load_u16_d16 v78, v133 offset:1312
	ds_load_u16_d16 v79, v133 offset:1568
	ds_load_u16_d16 v80, v133 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v133 offset:1952
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v12, v12, v143
	v_mul_f32_e32 v13, v13, v143
	v_mul_f32_e32 v14, v14, v143
	v_mul_f32_e32 v15, v15, v143
	v_mul_f32_e32 v16, v16, v143
	v_mul_f32_e32 v1, v1, v143
	v_mul_f32_e32 v2, v2, v143
	v_mul_f32_e32 v3, v3, v143
	v_mul_f32_e32 v4, v4, v143
	v_mul_f32_e32 v5, v5, v143
	v_mul_f32_e32 v6, v6, v143
	v_mul_f32_e32 v7, v7, v143
	v_mul_f32_e32 v8, v8, v143
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[65:72], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v133 offset:576
	ds_load_u16_d16 v76, v133 offset:832
	ds_load_u16_d16 v77, v133 offset:1088
	ds_load_u16_d16 v78, v133 offset:1344
	ds_load_u16_d16 v79, v133 offset:1600
	ds_load_u16_d16 v80, v133 offset:1856
	ds_load_u16_d16 v73, v133 offset:64
	ds_load_u16_d16 v74, v133 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v133 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:448
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v74, v133 offset:352
	ds_load_u16_d16 v73, v133 offset:96
	ds_load_u16_d16 v75, v133 offset:608
	ds_load_u16_d16 v76, v133 offset:864
	ds_load_u16_d16 v77, v133 offset:1120
	ds_load_u16_d16 v78, v133 offset:1376
	ds_load_u16_d16 v79, v133 offset:1632
	ds_load_u16_d16 v80, v133 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v80, v133 offset:2016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v154, v142
	v_sub_f32_e32 v71, v155, v142
	v_sub_f32_e32 v72, v151, v142
	v_sub_f32_e32 v73, v152, v142
	v_sub_f32_e32 v66, v161, v142
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v160, v142
	v_sub_f32_e32 v68, v158, v142
	v_sub_f32_e32 v69, v159, v142
	v_sub_f32_e32 v74, v147, v142
	v_sub_f32_e32 v75, v148, v142
	v_sub_f32_e32 v76, v145, v142
	v_sub_f32_e32 v77, v146, v142
	v_sub_f32_e32 v78, v87, v142
	v_sub_f32_e32 v79, v88, v142
	v_sub_f32_e32 v80, v85, v142
	v_sub_f32_e32 v85, v157, v142
	v_sub_f32_e32 v88, v149, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v73, v73
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s20
	v_cndmask_b32_e64 v71, 0, v71, s16
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v87, v156, v142
	v_sub_f32_e32 v145, v150, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v88, v88
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v152, v70, v71
.Ltmp16:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v145, v145
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s14
	v_cndmask_b32_e64 v73, 0, v73, s12
	v_cndmask_b32_e64 v66, 0, v66, s25
	v_cndmask_b32_e64 v67, 0, v67, s24
	v_cndmask_b32_e64 v68, 0, v68, s23
	v_cndmask_b32_e64 v69, 0, v69, s22
	v_cndmask_b32_e64 v74, 0, v74, s19
	v_cndmask_b32_e64 v75, 0, v75, s11
	v_cndmask_b32_e64 v76, 0, v76, s10
	v_cndmask_b32_e64 v77, 0, v77, s9
	v_cndmask_b32_e64 v78, 0, v78, s8
	v_cndmask_b32_e64 v79, 0, v79, s7
	v_cndmask_b32_e64 v147, 0, v81, s4
	v_cndmask_b32_e64 v81, 0, v83, s3
	v_cndmask_b32_e64 v148, 0, v84, s1
	v_cndmask_b32_e64 v149, 0, v85, s21
	v_cndmask_b32_e64 v83, 0, v86, s18
	v_cndmask_b32_e64 v150, 0, v87, s15
	v_cndmask_b32_e64 v84, 0, v88, s17
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v85, v163, v162 :: v_dual_add_f32 v154, v74, v75
	v_add_f32_e32 v86, v164, v165
	v_add_f32_e32 v88, v168, v169
	v_add_f32_e32 v153, v72, v73
	v_add_f32_e32 v87, v166, v167
.Ltmp18:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s5
	v_cndmask_b32_e64 v151, 0, v145, s13
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v146, v68, v69 :: v_dual_add_f32 v85, v85, v86
	v_add_f32_e32 v86, v76, v77
	v_dual_add_f32 v152, v152, v153 :: v_dual_add_f32 v87, v87, v88
	v_add_f32_e32 v88, v78, v79
	v_add_f32_e32 v145, v66, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v153, v81, v148 :: v_dual_add_f32 v86, v154, v86
	v_add_f32_e32 v154, v82, v149
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v65.h, v144.h
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v145, v145, v146 :: v_dual_add_f32 v146, v80, v147
.Ltmp22:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.l, v66.h
	v_cmp_o_f32_e64 s1, v66, v66
	v_cmp_o_f32_e64 s3, v68, v68
	v_cmp_o_f32_e64 s4, v70, v70
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v88, v88, v146
	v_add_f32_e32 v146, v83, v150
	v_dual_add_f32 v153, v153, v154 :: v_dual_add_f32 v154, v84, v151
.Ltmp24:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e64 s5, v72, v72
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v76, v76
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v146, v146, v154
.Ltmp26:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v154.h, v144.h
	v_mov_b16_e64 v154.l, v68.h
	v_add3_u32 v65, v66, v65, 0x7fff
	v_mov_b16_e64 v66.h, v144.h
	v_mov_b16_e32 v66.l, v70.h
	v_cmp_o_f32_e64 s8, v78, v78
	v_and_b32_e32 v154, 1, v154
	v_cmp_o_f32_e64 s9, v80, v80
	v_cmp_o_f32_e64 s10, v81, v81
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e64 s11, v82, v82
	v_add3_u32 v68, v68, v154, 0x7fff
	v_mov_b16_e64 v154.h, v144.h
	v_mov_b16_e64 v154.l, v72.h
	v_add3_u32 v66, v70, v66, 0x7fff
	v_mov_b16_e64 v70.h, v144.h
	v_mov_b16_e32 v70.l, v74.h
	v_cmp_o_f32_e64 s23, v83, v83
	v_and_b32_e32 v154, 1, v154
	v_cmp_o_f32_e64 s25, v84, v84
	v_mov_b16_e64 v144.l, v67.h
	v_and_b32_e32 v70, 1, v70
	v_cmp_o_f32_e64 s12, v67, v67
	v_add3_u32 v72, v72, v154, 0x7fff
	v_mov_b16_e64 v154.h, v144.h
	v_mov_b16_e64 v154.l, v76.h
	v_add3_u32 v70, v74, v70, 0x7fff
	v_mov_b16_e64 v74.h, v144.h
	v_mov_b16_e32 v74.l, v78.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v86, v86, v88
.Ltmp28:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v154, 1, v154
	v_cmp_o_f32_e64 s13, v69, v69
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s1
	v_and_b32_e32 v74, 1, v74
	v_cmp_o_f32_e64 s14, v71, v71
	v_add3_u32 v76, v76, v154, 0x7fff
	v_mov_b16_e64 v154.h, v144.h
	v_mov_b16_e64 v154.l, v80.h
	v_add3_u32 v74, v78, v74, 0x7fff
	v_mov_b16_e64 v78.h, v144.h
	v_mov_b16_e32 v78.l, v81.h
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s3
	v_and_b32_e32 v154, 1, v154
	v_cndmask_b16 v68.l, 0x7fff, v66.h, s4
	v_cmp_o_f32_e64 s15, v73, v73
	v_and_b32_e32 v78, 1, v78
	v_cmp_o_f32_e64 s16, v75, v75
	v_add3_u32 v80, v80, v154, 0x7fff
	v_mov_b16_e64 v154.h, v144.h
	v_mov_b16_e64 v154.l, v82.h
	v_add3_u32 v78, v81, v78, 0x7fff
	v_mov_b16_e64 v81.h, v144.h
	v_mov_b16_e32 v81.l, v83.h
	v_cndmask_b16 v78.l, 0x7fff, v74.h, s8
	v_and_b32_e32 v154, 1, v154
	v_cndmask_b16 v72.l, 0x7fff, v70.h, s6
	v_cmp_o_f32_e64 s17, v77, v77
	v_and_b32_e32 v81, 1, v81
	v_cndmask_b16 v70.l, 0x7fff, v72.h, s5
	v_add3_u32 v82, v82, v154, 0x7fff
	v_mov_b16_e64 v154.h, v144.h
	v_mov_b16_e64 v154.l, v84.h
	v_add3_u32 v81, v83, v81, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s7
	v_cmp_o_f32_e64 s19, v147, v147
	v_cmp_o_f32_e64 s18, v79, v79
	v_and_b32_e32 v154, 1, v154
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s9
	v_cmp_o_f32_e64 s21, v149, v149
	v_cmp_o_f32_e64 s20, v148, v148
	v_cmp_o_f32_e64 s22, v150, v150
	v_add3_u32 v83, v84, v154, 0x7fff
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v85, v87
	v_add_f32_e32 v85, v145, v152
	v_add_f32_e32 v87, v153, v146
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v153.l, 0x7fff, v82.h, s11
	v_cndmask_b16 v154.l, 0x7fff, v81.h, s23
	v_cndmask_b16 v155.l, 0x7fff, v83.h, s25
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v145, v84, v85 :: v_dual_and_b32 v74, 1, v144
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v144.l, v69.h
	v_cndmask_b16 v152.l, 0x7fff, v78.h, s10
	v_cmp_o_f32_e64 s24, v151, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v67, v67, v74, 0x7fff
	v_and_b32_e32 v74, 1, v144
	v_mov_b16_e64 v144.l, v71.h
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v146, v86, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s12
	v_add3_u32 v67, v69, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v69, 1, v144
	v_mov_b16_e64 v144.l, v73.h
	v_permlanex16_b32 v74, v65, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s13
	v_add3_u32 v67, v71, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v69, 1, v144
	v_mov_b16_e64 v144.l, v75.h
	v_perm_b32 v81, v74, v65, v131
	v_perm_b32 v82, v74, v65, v132
	v_permlanex16_b32 v65, v66, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s14
	v_add3_u32 v67, v73, v69, 0x7fff
	v_and_b32_e32 v69, 1, v144
	v_mov_b16_e64 v144.l, v77.h
	v_perm_b32 v83, v65, v66, v131
	v_perm_b32 v84, v65, v66, v132
	v_cndmask_b16 v70.h, 0x7fff, v67.h, s15
	v_add3_u32 v66, v75, v69, 0x7fff
	v_and_b32_e32 v67, 1, v144
	v_mov_b16_e64 v144.l, v79.h
	v_permlanex16_b32 v65, v68, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v72.h, 0x7fff, v66.h, s16
	v_add3_u32 v66, v77, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v67, 1, v144
	v_mov_b16_e64 v144.l, v147.h
	v_perm_b32 v85, v65, v68, v131
	v_perm_b32 v86, v65, v68, v132
	v_cndmask_b16 v76.h, 0x7fff, v66.h, s17
	v_permlanex16_b32 v65, v70, s95, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v66, 1, v144
	v_mov_b16_e64 v144.l, v148.h
	v_add3_u32 v67, v79, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v87, v65, v70, v131
	v_add3_u32 v66, v147, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v68, 1, v144
	v_mov_b16_e64 v144.l, v149.h
	v_perm_b32 v88, v65, v70, v132
	v_permlanex16_b32 v65, v72, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v80.h, 0x7fff, v66.h, s19
	v_cndmask_b16 v78.h, 0x7fff, v67.h, s18
	v_and_b32_e32 v66, 1, v144
	v_mov_b16_e64 v144.l, v150.h
	v_permlanex16_b32 v67, v76, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v65, v72, v131
	v_perm_b32 v74, v65, v72, v132
	v_add3_u32 v66, v149, v66, 0x7fff
	v_and_b32_e32 v69, 1, v144
	v_perm_b32 v75, v67, v76, v131
	v_permlanex16_b32 v65, v78, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v76, v67, v76, v132
	v_add3_u32 v67, v148, v68, 0x7fff
	v_mov_b16_e64 v144.l, v151.h
	v_cndmask_b16 v153.h, 0x7fff, v66.h, s21
	v_add3_u32 v66, v150, v69, 0x7fff
	v_perm_b32 v77, v65, v78, v131
	v_permlanex16_b32 v68, v80, s95, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v152.h, 0x7fff, v67.h, s20
	v_perm_b32 v78, v65, v78, v132
	v_and_b32_e32 v65, 1, v144
	v_cndmask_b16 v154.h, 0x7fff, v66.h, s22
	v_perm_b32 v79, v68, v80, v131
	v_permlanex16_b32 v67, v152, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v80, v68, v80, v132
	v_add3_u32 v68, v151, v65, 0x7fff
	v_permlanex16_b32 v69, v153, s95, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v154, s95, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v152, v131
	v_perm_b32 v66, v67, v152, v132
	v_cndmask_b16 v155.h, 0x7fff, v68.h, s24
	v_perm_b32 v67, v69, v153, v131
	v_perm_b32 v68, v69, v153, v132
	v_perm_b32 v69, v70, v154, v131
	v_perm_b32 v70, v70, v154, v132
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v147, v133 offset:2048
	ds_load_u16_d16 v149, v133 offset:2560
	ds_load_u16_d16 v150, v133 offset:2816
	ds_load_u16_d16 v151, v133 offset:3072
	ds_load_u16_d16 v152, v133 offset:3328
	ds_load_u16_d16 v153, v133 offset:3584
	ds_load_u16_d16 v154, v133 offset:3840
	ds_load_u16_d16 v148, v133 offset:2304
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v133 offset:3968
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2432
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v72, v155, s95, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v72, v155, v131
	v_perm_b32 v72, v72, v155, v132
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[147:154], v[81:88], v[25:32]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v147, v133 offset:2080
	ds_load_u16_d16 v148, v133 offset:2336
	ds_load_u16_d16 v149, v133 offset:2592
	ds_load_u16_d16 v150, v133 offset:2848
	ds_load_u16_d16 v151, v133 offset:3104
	ds_load_u16_d16 v152, v133 offset:3360
	ds_load_u16_d16 v153, v133 offset:3616
	ds_load_u16_d16 v154, v133 offset:3872
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2208
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2464
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:2720
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:2976
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3232
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3488
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:3744
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v133 offset:4000
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[147:154], v[81:88], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v147, v133 offset:2112
	ds_load_u16_d16 v148, v133 offset:2368
	ds_load_u16_d16 v149, v133 offset:2624
	ds_load_u16_d16 v150, v133 offset:2880
	ds_load_u16_d16 v151, v133 offset:3136
	ds_load_u16_d16 v152, v133 offset:3392
	ds_load_u16_d16 v153, v133 offset:3648
	ds_load_u16_d16 v154, v133 offset:3904
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2240
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2496
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:2752
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3264
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3520
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:3776
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v133 offset:4032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[147:154], v[81:88], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v147, v133 offset:2144
	ds_load_u16_d16 v148, v133 offset:2400
	ds_load_u16_d16 v149, v133 offset:2656
	ds_load_u16_d16 v150, v133 offset:2912
	ds_load_u16_d16 v151, v133 offset:3168
	ds_load_u16_d16 v152, v133 offset:3424
	ds_load_u16_d16 v153, v133 offset:3680
	ds_load_u16_d16 v154, v133 offset:3936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:2784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:3040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:3808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v133 offset:4064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[147:154], v[81:88], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v133 offset:4096
	ds_load_u16_d16 v83, v133 offset:4608
	ds_load_u16_d16 v84, v133 offset:4864
	ds_load_u16_d16 v85, v133 offset:5120
	ds_load_u16_d16 v86, v133 offset:5376
	ds_load_u16_d16 v87, v133 offset:5632
	ds_load_u16_d16 v88, v133 offset:5888
	ds_load_u16_d16 v82, v133 offset:4352
	ds_load_u16_d16 v147, v133 offset:4128
	ds_load_u16_d16 v148, v133 offset:4384
	ds_load_u16_d16 v149, v133 offset:4640
	ds_load_u16_d16 v150, v133 offset:4896
	ds_load_u16_d16 v151, v133 offset:5152
	ds_load_u16_d16 v152, v133 offset:5408
	ds_load_u16_d16 v153, v133 offset:5664
	ds_load_u16_d16 v154, v133 offset:5920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v81, v133 offset:4224
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v83, v133 offset:4736
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v84, v133 offset:4992
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v85, v133 offset:5248
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v86, v133 offset:5504
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v87, v133 offset:5760
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v88, v133 offset:6016
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v82, v133 offset:4480
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v133 offset:4160
	ds_load_u16_d16 v82, v133 offset:4416
	ds_load_u16_d16 v83, v133 offset:4672
	ds_load_u16_d16 v84, v133 offset:4928
	ds_load_u16_d16 v85, v133 offset:5184
	ds_load_u16_d16 v86, v133 offset:5440
	ds_load_u16_d16 v87, v133 offset:5696
	ds_load_u16_d16 v88, v133 offset:5952
	ds_load_u16_d16_hi v147, v133 offset:4256
	ds_load_u16_d16_hi v148, v133 offset:4512
	ds_load_u16_d16_hi v149, v133 offset:4768
	ds_load_u16_d16_hi v150, v133 offset:5024
	ds_load_u16_d16_hi v151, v133 offset:5280
	ds_load_u16_d16_hi v152, v133 offset:5536
	ds_load_u16_d16_hi v153, v133 offset:5792
	ds_load_u16_d16_hi v154, v133 offset:6048
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[147:154], v[73:80], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v147, v133 offset:4192
	ds_load_u16_d16 v148, v133 offset:4448
	ds_load_u16_d16 v149, v133 offset:4704
	ds_load_u16_d16 v150, v133 offset:4960
	ds_load_u16_d16 v151, v133 offset:5216
	ds_load_u16_d16 v152, v133 offset:5472
	ds_load_u16_d16 v153, v133 offset:5728
	ds_load_u16_d16 v154, v133 offset:5984
	ds_load_u16_d16_hi v81, v133 offset:4288
	ds_load_u16_d16_hi v82, v133 offset:4544
	ds_load_u16_d16_hi v83, v133 offset:4800
	ds_load_u16_d16_hi v84, v133 offset:5056
	ds_load_u16_d16_hi v85, v133 offset:5312
	ds_load_u16_d16_hi v86, v133 offset:5568
	ds_load_u16_d16_hi v87, v133 offset:5824
	ds_load_u16_d16_hi v88, v133 offset:6080
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v133 offset:6144
	ds_load_u16_d16 v83, v133 offset:6656
	ds_load_u16_d16 v84, v133 offset:6912
	ds_load_u16_d16 v85, v133 offset:7168
	ds_load_u16_d16 v86, v133 offset:7424
	ds_load_u16_d16 v87, v133 offset:7680
	ds_load_u16_d16 v88, v133 offset:7936
	ds_load_u16_d16 v82, v133 offset:6400
	ds_load_u16_d16_hi v147, v133 offset:4320
	ds_load_u16_d16_hi v148, v133 offset:4576
	ds_load_u16_d16_hi v149, v133 offset:4832
	ds_load_u16_d16_hi v150, v133 offset:5088
	ds_load_u16_d16_hi v151, v133 offset:5344
	ds_load_u16_d16_hi v152, v133 offset:5600
	ds_load_u16_d16_hi v153, v133 offset:5856
	ds_load_u16_d16_hi v154, v133 offset:6112
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[147:154], v[73:80], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v73, v133 offset:6208
	ds_load_u16_d16 v74, v133 offset:6464
	ds_load_u16_d16 v147, v133 offset:6240
	ds_load_u16_d16 v75, v133 offset:6720
	ds_load_u16_d16 v76, v133 offset:6976
	ds_load_u16_d16 v77, v133 offset:7232
	ds_load_u16_d16 v78, v133 offset:7488
	ds_load_u16_d16 v79, v133 offset:7744
	ds_load_u16_d16 v80, v133 offset:8000
	ds_load_u16_d16 v148, v133 offset:6496
	ds_load_u16_d16 v149, v133 offset:6752
	ds_load_u16_d16 v150, v133 offset:7008
	ds_load_u16_d16_hi v81, v133 offset:6272
	ds_load_u16_d16_hi v83, v133 offset:6784
	ds_load_u16_d16_hi v84, v133 offset:7040
	ds_load_u16_d16_hi v85, v133 offset:7296
	ds_load_u16_d16_hi v86, v133 offset:7552
	ds_load_u16_d16_hi v87, v133 offset:7808
	ds_load_u16_d16_hi v88, v133 offset:8064
	ds_load_u16_d16_hi v82, v133 offset:6528
	ds_load_u16_d16 v155, v133 offset:6176
	ds_load_u16_d16 v151, v133 offset:7264
	ds_load_u16_d16 v156, v133 offset:6432
	ds_load_u16_d16 v152, v133 offset:7520
	ds_load_u16_d16 v157, v133 offset:6688
	ds_load_u16_d16 v153, v133 offset:7776
	ds_load_u16_d16 v158, v133 offset:6944
	ds_load_u16_d16 v154, v133 offset:8032
	ds_load_u16_d16 v159, v133 offset:7200
	ds_load_u16_d16 v160, v133 offset:7456
	ds_load_u16_d16 v161, v133 offset:7712
	ds_load_u16_d16 v162, v133 offset:7968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v73, v133 offset:6336
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v74, v133 offset:6592
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v75, v133 offset:6848
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v76, v133 offset:7104
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v77, v133 offset:7360
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v78, v133 offset:7616
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v79, v133 offset:7872
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v80, v133 offset:8128
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v155, v133 offset:6304
	ds_load_u16_d16_hi v147, v133 offset:6368
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v156, v133 offset:6560
	ds_load_u16_d16_hi v148, v133 offset:6624
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v157, v133 offset:6816
	ds_load_u16_d16_hi v149, v133 offset:6880
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v158, v133 offset:7072
	ds_load_u16_d16_hi v150, v133 offset:7136
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v159, v133 offset:7328
	ds_load_u16_d16_hi v151, v133 offset:7392
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v160, v133 offset:7584
	ds_load_u16_d16_hi v152, v133 offset:7648
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v161, v133 offset:7840
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v162, v133 offset:8096
	ds_load_u16_d16_hi v153, v133 offset:7904
	ds_load_u16_d16_hi v154, v133 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[65:72], v[25:32]
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v81, v145, v146 :: v_dual_mov_b32 v82, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v83, v81, s95, 0xfedcba98 op_sel:[1,0]
.Ltmp37:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[65:72], v[9:16]
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v124, v81, v83 :: v_dual_mov_b32 v81, v142
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp39:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v124, v82, v143
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[155:162], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[147:154], v[65:72], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v0, null, v124, v124, v25
	v_div_scale_f32 v33, null, v124, v124, v26
	v_div_scale_f32 v34, null, v124, v124, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v0
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v25, v124, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v26, v124, v26
	v_div_scale_f32 v42, null, v124, v124, v28
	v_div_scale_f32 v48, s3, v28, v124, v28
	v_fma_f32 v40, -v0, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s79, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_rcp_f32_e32 v41, v42
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v40, s1, v27, v124, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	s_mov_b32 s78, 0x7ffffffe
	v_fma_f32 v46, -v0, v43, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v47, -v33, v44, v39
	v_fma_f32 v49, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v124, v124, v29
	v_fmac_f32_e32 v41, v49, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v0, v43, v38
	v_fma_f32 v33, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v124, v124, v30
	v_div_fmas_f32 v0, v0, v35, v43
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v35, v48, v41
	v_div_fmas_f32 v33, v33, v36, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v124, v25
	v_rcp_f32_e32 v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v124, v26
	v_div_scale_f32 v33, s4, v29, v124, v29
	v_fma_f32 v36, -v42, v35, v48
	v_fmac_f32_e32 v38, v44, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v44, null, v124, v124, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v36, v41
	v_div_scale_f32 v36, null, v124, v124, v31
	v_fma_f32 v50, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v44
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v124
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v50, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v26, -v34, v45, v40
	v_mul_f32_e32 v40, v33, v38
	v_fma_f32 v34, -v39, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v37, v45
	v_fma_f32 v37, -v42, v35, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v30, v124, v30
	v_div_fixup_f32 v26, v26, v124, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v27, v35, v124, v28
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v124, v124, v17
	v_div_scale_f32 v35, s3, v31, v124, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v40, v33
	v_rcp_f32_e32 v48, v37
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v41, v42, v43
	v_fma_f32 v28, -v39, v41, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v36, v34, 1.0
	v_dual_fmac_f32 v41, v28, v43 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v45, -v44, v47, 1.0
	v_div_fmas_f32 v28, v33, v38, v40
	v_fma_f32 v40, -v37, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v39, v41, v42
	v_mul_f32_e32 v46, v35, v34
	v_div_scale_f32 v42, null, v124, v124, v18
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v32, v124, v32
	v_fma_f32 v38, -v36, v46, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v40, v48 :: v_dual_mul_f32 v39, v45, v47
	v_div_fmas_f32 v33, v33, v43, v41
	v_fmac_f32_e32 v46, v38, v34
	v_rcp_f32_e32 v38, v42
	v_div_scale_f32 v40, s1, v17, v124, v17
	v_fma_f32 v41, -v44, v39, v45
	v_div_fixup_f32 v28, v28, v124, v29
	v_div_fixup_f32 v29, v33, v124, v30
	v_fma_f32 v30, -v36, v46, v35
	v_div_scale_f32 v36, null, v124, v124, v19
	v_fmac_f32_e32 v39, v41, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v42, v38, 1.0
	v_mul_f32_e32 v33, v40, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v18, v124, v18
	v_fmac_f32_e32 v38, v35, v38
	v_rcp_f32_e32 v35, v36
	v_div_fmas_f32 v30, v30, v34, v46
	v_fma_f32 v34, -v44, v39, v45
	v_fma_f32 v41, -v37, v33, v40
	v_div_scale_f32 v44, null, v124, v124, v20
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v30, v30, v124, v31
	v_div_fmas_f32 v34, v34, v47, v39
	v_fmac_f32_e32 v33, v41, v48
	v_rcp_f32_e32 v39, v44
	v_mul_f32_e32 v41, v43, v38
	v_fma_f32 v45, -v36, v35, 1.0
	v_div_fixup_f32 v31, v34, v124, v32
	v_fma_f32 v32, -v37, v33, v40
	v_div_scale_f32 v37, s4, v19, v124, v19
	v_fma_f32 v34, -v42, v41, v43
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v124, v124, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v44, v39, 1.0
	v_fmac_f32_e32 v41, v34, v38
	v_div_scale_f32 v46, null, v124, v124, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v45
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v32, v32, v48, v33
	v_mul_f32_e32 v33, v37, v35
	v_div_scale_f32 v40, s1, v20, v124, v20
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v17, v32, v124, v17
	v_fma_f32 v32, -v42, v41, v43
	v_fma_f32 v42, -v36, v33, v37
	v_mul_f32_e32 v43, v40, v39
	v_fma_f32 v48, -v45, v34, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v32, v38, v41
	v_fmac_f32_e32 v33, v42, v35
	v_fma_f32 v38, -v44, v43, v40
	v_fmac_f32_e32 v34, v48, v34
	v_div_scale_f32 v41, s3, v21, v124, v21
	v_fma_f32 v42, -v46, v47, 1.0
	v_div_fixup_f32 v18, v32, v124, v18
	v_fma_f32 v32, -v36, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v43, v38, v39 :: v_dual_mul_f32 v36, v41, v34
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v37, s5, v22, v124, v22
	v_div_scale_f32 v38, null, v124, v124, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v37, v47
	v_div_fmas_f32 v32, v32, v35, v33
	v_fma_f32 v33, -v44, v43, v40
	v_fma_f32 v35, -v45, v36, v41
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v44, null, v124, v124, v24
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v35, v34
	v_div_fmas_f32 v33, v33, v39, v43
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v39, -v46, v42, v37
	v_div_fixup_f32 v19, v32, v124, v19
	v_fma_f32 v32, -v45, v36, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v38, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v39, v47
	v_div_fixup_f32 v20, v33, v124, v20
	v_div_scale_f32 v33, s1, v23, v124, v23
	v_fmac_f32_e32 v40, v43, v40
	v_fma_f32 v39, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v34, v36
	v_fma_f32 v34, -v46, v42, v37
	v_div_scale_f32 v37, null, v124, v124, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v33, v40 :: v_dual_fmac_f32 v35, v39, v35
	v_div_scale_f32 v39, s3, v24, v124, v24
	v_rcp_f32_e32 v41, v37
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v124, v124, v10
	v_div_fmas_f32 v34, v34, v47, v42
	v_fma_f32 v42, -v38, v36, v33
	v_mul_f32_e32 v43, v39, v35
	v_div_fixup_f32 v21, v32, v124, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v124, v22
	v_fmac_f32_e32 v36, v42, v40
	v_fma_f32 v32, -v44, v43, v39
	v_rcp_f32_e32 v34, v45
	v_fma_f32 v42, -v37, v41, 1.0
	v_div_scale_f32 v47, null, v124, v124, v12
	v_fma_f32 v33, -v38, v36, v33
	v_fmac_f32_e32 v43, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v32, s4, v9, v124, v9
	v_div_fmas_f32 v33, v33, v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v45, v34, 1.0
	v_fma_f32 v36, -v44, v43, v39
	v_mul_f32_e32 v39, v32, v41
	v_div_scale_f32 v38, null, v124, v124, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v46, v34
	v_div_scale_f32 v40, s1, v10, v124, v10
	v_fma_f32 v46, -v37, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v48, v40, v34
	v_div_fmas_f32 v35, v36, v35, v43
	v_fmac_f32_e32 v39, v46, v41
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v36, -v45, v48, v40
	v_div_fixup_f32 v23, v33, v124, v23
	v_fma_f32 v32, -v37, v39, v32
	v_fma_f32 v44, -v38, v42, 1.0
	v_div_fixup_f32 v24, v35, v124, v24
	v_fmac_f32_e32 v48, v36, v34
	v_div_scale_f32 v36, null, v124, v124, v13
	v_div_fmas_f32 v32, v32, v41, v39
	v_div_scale_f32 v39, null, v124, v124, v14
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s5, v11, v124, v11
	v_fma_f32 v37, -v45, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v44, v42
	v_fma_f32 v35, -v47, v49, 1.0
	v_div_fmas_f32 v34, v37, v34, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v32, v124, v9
	v_fma_f32 v33, -v38, v43, v44
	v_fmac_f32_e32 v49, v35, v49
	v_div_fixup_f32 v10, v34, v124, v10
	v_fma_f32 v34, -v39, v41, 1.0
	v_div_scale_f32 v35, s3, v12, v124, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v34, v41
	v_fmac_f32_e32 v43, v33, v42
	v_rcp_f32_e32 v33, v36
	v_div_scale_f32 v34, s4, v14, v124, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v38, v43, v44
	v_mul_f32_e32 v38, v35, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v42, -v47, v38, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v11, v37, v124, v11
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v13, v124, v13
	v_fmac_f32_e32 v38, v42, v49
	v_div_scale_f32 v37, null, v124, v124, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, v40, v33
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v47, v38, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v36, v32, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v49, v38
	v_mul_f32_e32 v38, v34, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v124, v124, v16
	v_div_fixup_f32 v12, v35, v124, v12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v36, v32, v40
	v_fma_f32 v36, -v39, v38, v34
	v_fma_f32 v40, -v37, v43, 1.0
	v_rcp_f32_e32 v44, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v35, v33, v32
	v_div_scale_f32 v33, null, v124, v124, v1
	v_fmac_f32_e32 v38, v36, v41
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v124, v124, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v35, s1, v15, v124, v15
	v_div_fixup_f32 v13, v32, v124, v13
	v_fma_f32 v32, -v42, v44, 1.0
	v_rcp_f32_e32 v46, v40
	v_fma_f32 v34, -v39, v38, v34
	v_mul_f32_e32 v39, v35, v43
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v32, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v33, v36, 1.0
	v_div_scale_f32 v32, s3, v16, v124, v16
	v_div_fmas_f32 v34, v34, v41, v38
	v_fma_f32 v38, -v37, v39, v35
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v124, v124, v3
	v_mul_f32_e32 v41, v32, v44
	v_div_scale_f32 v47, s4, v1, v124, v1
	v_fma_f32 v48, -v40, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	v_mul_f32_e32 v50, v47, v36
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v2, v124, v2
	v_div_fixup_f32 v14, v34, v124, v14
	v_fma_f32 v34, -v37, v39, v35
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	v_fma_f32 v38, -v45, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v42, v41, v32
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_fmac_f32_e32 v49, v38, v49
	v_div_scale_f32 v38, s1, v3, v124, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_fmas_f32 v34, v34, v43, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v38, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v124, v124, v4
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v34, v124, v15
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	v_fma_f32 v40, -v45, v35, v38
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v16, v32, v124, v16
	v_div_fixup_f32 v1, v33, v124, v1
	v_div_scale_f32 v33, null, v124, v124, v5
	v_fmac_f32_e32 v35, v40, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v43, null, v124, v124, v8
	v_div_fmas_f32 v36, v36, v46, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v32, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v39, v41, 1.0
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v2, v36, v124, v2
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v124, v124, v6
	v_div_scale_f32 v36, null, v124, v124, v7
	v_div_scale_f32 v37, vcc_lo, v4, v124, v4
	v_div_fixup_f32 v3, v32, v124, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v34
	v_fma_f32 v32, -v33, v35, 1.0
	v_rcp_f32_e32 v40, v36
	v_mul_f32_e32 v42, v37, v41
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v5, v124, v5
	v_fma_f32 v46, -v39, v42, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v34, v38, 1.0
	v_dual_fmac_f32 v45, v49, v45 :: v_dual_mul_f32 v48, v32, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v36, v40, 1.0
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v6, v124, v6
	v_fma_f32 v46, -v33, v48, v32
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s4, v7, v124, v7
	v_div_scale_f32 v49, s5, v8, v124, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v46, v35
	v_dual_mul_f32 v50, v44, v38 :: v_dual_mul_f32 v51, v47, v40
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v45
	v_fma_f32 v32, -v33, v48, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v34, v50, v44
	v_fma_f32 v46, -v36, v51, v47
	v_div_fmas_f32 v37, v37, v41, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v52, v49
	v_div_fmas_f32 v32, v32, v35, v48
	v_dual_fmac_f32 v50, v39, v38 :: v_dual_fmac_f32 v51, v46, v40
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v33, v45
	v_div_fixup_f32 v5, v32, v124, v5
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_or_b32_e32 v32, s67, v123
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v34, v50, v44
	v_fma_f32 v33, -v36, v51, v47
	v_fma_f32 v35, -v43, v52, v49
	v_div_fixup_f32 v4, v37, v124, v4
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v32, s89, v32
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v34, v124, v6
	v_div_fmas_f32 v35, v35, v45, v52
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s89, v112
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v33, v124, v7
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v112, 2
	v_add_lshl_u32 v34, v32, v122, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v35, v124, v8
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v35, v32, v121, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v33, s[76:79], 0 offen
	buffer_store_b32 v25, v34, s[76:79], 0 offen
	buffer_store_b32 v26, v35, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v120, 2
	v_add_lshl_u32 v25, v32, v119, 2
	v_add_lshl_u32 v26, v32, v118, 2
	v_add_lshl_u32 v33, v32, v117, 2
	v_add_lshl_u32 v34, v32, v116, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s89, v115
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v27, v0, s[76:79], 0 offen
	buffer_store_b32 v28, v25, s[76:79], 0 offen
	buffer_store_b32 v29, v26, s[76:79], 0 offen
	buffer_store_b32 v30, v33, s[76:79], 0 offen
	buffer_store_b32 v31, v34, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v115, 2
	v_add_lshl_u32 v25, v32, v114, 2
	v_add_lshl_u32 v26, v32, v113, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v27, v32, v111, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v110, 2
	s_clause 0x2
	buffer_store_b32 v17, v0, s[76:79], 0 offen
	buffer_store_b32 v18, v25, s[76:79], 0 offen
	buffer_store_b32 v19, v26, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v109, 2
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v0, 0x80000000, v28
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s89, v106
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v18, v32, v108, 2
	v_add_lshl_u32 v19, v32, v107, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[76:79], 0 offen
	buffer_store_b32 v21, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v106, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v105, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[76:79], 0 offen
	buffer_store_b32 v24, v19, s[76:79], 0 offen
	buffer_store_b32 v9, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v104, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v103, 2
	v_add_lshl_u32 v18, v32, v102, 2
	v_add_lshl_u32 v19, v32, v101, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[76:79], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s89, v98
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v11, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v100, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	buffer_store_b32 v14, v17, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v99, 2
	v_add_lshl_u32 v10, v32, v98, 2
	v_add_lshl_u32 v11, v32, v97, 2
	v_add_lshl_u32 v12, v32, v96, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[76:79], 0 offen
	buffer_store_b32 v16, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v95, 2
	v_add_lshl_u32 v1, v32, v93, 2
	v_add_lshl_u32 v2, v32, v94, 2
	v_add_lshl_u32 v3, v32, v92, 2
	v_add_lshl_u32 v9, v32, v91, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[76:79], 0 offen
	buffer_store_b32 v5, v1, s[76:79], 0 offen
	buffer_store_b32 v6, v2, s[76:79], 0 offen
	buffer_store_b32 v7, v3, s[76:79], 0 offen
	buffer_store_b32 v8, v9, s[76:79], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp40:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 182
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 182
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13068
; TotalNumSgprs: 99
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 99
; NumVGPRsForWavesPerEU: 182
; Occupancy: 8
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
